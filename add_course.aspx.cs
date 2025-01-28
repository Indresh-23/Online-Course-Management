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
using e_learn;
namespace e_learn
{
	/// <summary>
	/// Summary description for add_course.
	/// </summary>
	public partial class add_course : System.Web.UI.Page
	{
		Class1 obj1=new Class1();
        	
		protected void Page_Load(object sender, System.EventArgs e)
		{
				try
		 {
			 if(Session["userid"]==null)
				 Response.Redirect("E_Learn.aspx",true);
			 else
				 Label3.Text="Welcome To: "+Session["userid"].ToString();
			 if(Page.IsPostBack==false)
			 {
				 Label1.Visible=false;
				 Label2.Visible=false;
			 }
		 }
		 catch (Exception ex){}
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
			this.ImageButton1.Click += new System.Web.UI.ImageClickEventHandler(this.ImageButton1_Click);
			this.ImageButton2.Click += new System.Web.UI.ImageClickEventHandler(this.ImageButton2_Click);

		}
		#endregion
Class1 obj=new Class1();
		private void ImageButton1_Click(object sender, System.Web.UI.ImageClickEventArgs e)
		{
			try
			{
				if(DropDownList1.SelectedIndex==0)
				{
					Label1.Visible=false;
				}
				else
				{
					string sqlquery;
					sqlquery="insert into T_Courses (COURSENAME,COURCECAT,SESSIONS,DUR)values('"+TextBox1.Text+"','"+DropDownList1.SelectedItem.ToString()+"',"+int.Parse(TextBox2.Text)+"," + int.Parse(TextBox3.Text) + ")";
					int i=obj.save(sqlquery);
					if(i==1)
					{
						Label2.Visible=false;
						Label1.Visible=true;
						Label1.Text="inserted Successfully";
						TextBox1.Text="";
						TextBox3.Text="";
					}
					else
					{
						Label2.Visible=false;
						Label1.Visible=true;
						Label1.Text="DataBase Problem";
					}
				}
			}
			catch(Exception ex)
			{
				Label1.Visible=true;
				Label1.Text="Database Problem";
			}
		}

		protected void LinkButton1_Click(object sender, System.EventArgs e)
		{
			Session["userid"]=null;
			Response.Redirect("E_Learn.aspx",true);
		}

		private void ImageButton2_Click(object sender, System.Web.UI.ImageClickEventArgs e)
		{
			try
			{
				TextBox1.Text="";
				TextBox3.Text="";
				DropDownList1.SelectedIndex=0;


			}
			catch (Exception ex){}

		}
	}
}
