using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace e_learn
{
	/// <summary>
	/// Summary description for Course.
	/// </summary>
	public partial class Course : System.Web.UI.Page
	{
		DataSet ds= new DataSet();
		Class1 obj=new Class1();

		protected void Page_Load(object sender, System.EventArgs e)
		{
			try
			{

				Label2.Visible=false;
				DropDownList1.Items.Clear();
				DataSet ds1;
				ds1=obj.fill("select * from T_courses");
				DropDownList1.DataSource=ds1.Tables[0];
               	DropDownList1.DataTextField ="coursename";
				DropDownList1.DataValueField="sessions";
                DropDownList1.DataBind();
			}
			catch (Exception ex)
			{}

			
			try
			{
				//Response.Write (Session["table"].ToString());
				if(Page.IsPostBack==false)
				{
					Label1.Visible=false;
					Label2.Visible=false;
					ns.Visible=false;
			
				//	if (Session["table"]==null )
				//	{
				//		filldrop("Managerial");
				//		DropDownList1.DataBind();     
				//	}
					
				//}
				//else			 
				//{
				//	filldrop(Session["table"].ToString());
				//	DropDownList1.DataBind();     
				}							
			}
			catch (Exception ex)
			{}

		}

		#region Web Form Designer generated code
		override protected void OnInit(EventArgs e)
		{
			//
			// CODEGEN: This call is required by the ASP.NET Web Form Designer.
			//
			InitializeComponent();
			base.OnInit(e);
		}
		
		/// <summary>
		/// Required method for Designer support - do not modify
		/// the contents of this method with the code editor.
		/// </summary>
		private void InitializeComponent()
		{    
			this.Managerial.Click += new System.Web.UI.ImageClickEventHandler(this.Managerial_Click);
			this.Technical.Click += new System.Web.UI.ImageClickEventHandler(this.Technical_Click);
			this.Personal.Click += new System.Web.UI.ImageClickEventHandler(this.Personal_Click);
			this.ImageButton2.Click += new System.Web.UI.ImageClickEventHandler(this.ImageButton2_Click);

		}
		#endregion

		protected void DropDownList1_SelectedIndexChanged(object sender, System.EventArgs e)
		{				
			try
			{
				Label1.Visible=true;
				ns.Visible=true;
				Label2.Visible=false;
				ns.Text=DropDownList1.SelectedValue.ToString();
				Session["listval"]=ns.Text; 
		}
			catch (Exception ex)
			{
			}
	}
		public void filldrop(string cat)
		{
			try
			{

				Label2.Visible=false;
				DropDownList1.Items.Clear();
				DataSet ds1;
				ds1=obj.fill("select * from T_courses where CourceCat='"+cat+"'");
				DropDownList1.DataSource=ds1.Tables[0];
				DropDownList1.DataTextField ="coursename";
				DropDownList1.DataValueField="sessions";
			    			
                			}
			catch (Exception ex)
			{}

		}
        private void Technical_Click(object sender, System.Web.UI.ImageClickEventArgs e)
		{
			try
			{
				Managerial.ImageUrl="images\\mang.gif";
				Technical.ImageUrl="images\\tech1.gif";
				Personal.ImageUrl="images\\personal.gif";
				filldrop("Technical");		
				DropDownList1.DataBind();     
				//Session["table"]="Technical";
			}
			catch (Exception ex){}

		}

		private void Personal_Click(object sender, System.Web.UI.ImageClickEventArgs e)
		{
			try
			{

				Managerial.ImageUrl="images\\mang.gif";
				Technical.ImageUrl="images\\tech.gif";
				Personal.ImageUrl="images\\personal1.gif";

				filldrop("Personal");
				DropDownList1.DataBind();     
                //Session["table"]="Personal";
			}
	
			catch (Exception ex)
			{
			}
		}

		private void Managerial_Click(object sender, System.Web.UI.ImageClickEventArgs e)
		{
			try 
			{
				Managerial.ImageUrl="images\\mang1.gif";
				Technical.ImageUrl="images\\tech.gif";
				Personal.ImageUrl="images\\personal.gif";
				filldrop("Managerial");
				DropDownList1.DataBind();     
				//Session["table"]="Managerial";
			}
			catch (Exception ex)
			{}

		}

		private void ImageButton2_Click(object sender, System.Web.UI.ImageClickEventArgs e)
		{
			try
			{
				//p string course=obj.ret("select Coursename from T_coursereg where empid='"+Session["userid"]+"'");
				ds=obj.fill("select StaffName from Staff_Master where coursename='"+DropDownList1.SelectedItem.ToString()+"'");
				DataGrid1.DataSource=ds.Tables[0].DefaultView ;
				DataGrid1.DataBind();
				DataGrid1.Visible=true;
			}
			catch (Exception ex)
			{
			}
			try
			{
				Label2.Visible=true;
				int j=obj.chklogin(TextBox1.Text,TextBox2.Text,"T_Emp_Personal");
				if(j==1)
				{

					string query;
					query="select count(*) from T_coursereg where empid='"+TextBox1.Text+"' and coursename='"+DropDownList1.SelectedItem.ToString()+"'";
					int l=obj.chkregcourse(query);
					if(l!=1)
					{
						string query1="select dur from T_courses where coursename='" +  DropDownList1.SelectedItem.ToString()+ "'";
						 //string query1="select dur from T_courses where coursename='" +  Session["listval"].ToString()+"'";
                        //Response.Write(query1);

						
                        int d=obj.chkregcourse(query1);
						d=d-1;												
						query="insert into T_CourseReg values('"+DropDownList1.SelectedItem.ToString()+"','"+TextBox1.Text+"','"+DateTime.Now.ToShortDateString()+"'," + d + ")";
            
                        
                        
                        //query="insert into T_CourseReg values('"+DropDownList1.SelectedItem.ToString()+"','"+TextBox1.Text + "','" + DateTime.Now  + "','" + DateTime.Now  + "'," + d + ")";
						//query="insert into T_CourseReg values('"+Session["listval"].ToString()+"','"+TextBox1.Text+", sysdate,sysdate " + d+ "0)";
						//Response.Write(query);
						//Response.End();


						int i=obj.save(query);
						if(i==1)
						{
							Label2.Text="Registered Successfully";
							//Response.Redirect("Course_Details.aspx");
						}
						else
							Label2.Text="Registered Fail";
					}
					else
					{
						Label2.Text="already you Registered";
						TextBox1.Text="";
					}
				}
				else
				{
					Label2.Text="Check EmpId/Password";
				}

			}

			catch (Exception ex)
			{
				Label2.Text = ex.Message.ToString ();
			}
		}

	private void DataGrid1_EditCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
		{
	    string sn;
		sn=e.Item.Cells[0].Text;
        //Response.Redirect ("exam_ques.aspx?"+sn);
		Session["sname"]=sn;
        Response.Redirect ("exam_ques.aspx");
        }

		private void DataGrid1_SelectedIndexChanged(object sender, System.EventArgs e)
		{
		
		}
	}
}