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
using System.IO;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace e_learn
{
	/// <summary>
	/// Summary description for Session_Details.
	/// </summary>
	public partial class Session_Details : System.Web.UI.Page
	{
		Class1 obj=new Class1();	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			if (!Page.IsPostBack)
			{
				SqlCommand cmd =new SqlCommand("select coursename from T_courses",obj.con);
                SqlDataReader dr;
				obj.con.Open();
				dr=cmd.ExecuteReader();
				while(dr.Read())
				{
					DropDownList2.Items.Add(dr[0].ToString());
				}
				dr.Close();
				obj.con.Close();
				TextBox4.Visible=false;
				fdb.Visible=false;
				saveb.Visible=false;
				clearb.Visible=false;
				bsave.Visible=false;
				Label1.Visible=false;
			}

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
			this.ImageButton3.Click += new System.Web.UI.ImageClickEventHandler(this.ImageButton3_Click);
			this.saveb.Click += new System.Web.UI.ImageClickEventHandler(this.saveb_Click);

		}
		#endregion

		protected void DropDownList1_SelectedIndexChanged(object sender, System.EventArgs e)
		{
			if(DropDownList1.SelectedItem.ToString()=="File")
			{
				bsave.Visible=true;
				TextBox4.Visible=false;
				fdb.Visible=true;
				saveb.Visible=false;
				clearb.Visible=false;
				Label1.Visible=false;
			}
			else
			{
				bsave.Visible=false;
				TextBox4.Visible=true;
				fdb.Visible=false;
				saveb.Visible=true;
				clearb.Visible=true;
				Label1.Visible=false;
			}


		}

		private void Button1_Click(object sender, System.EventArgs e)
		{
		   
			
		}

		private void saveb_Click(object sender, System.Web.UI.ImageClickEventArgs e)
		{
			int i=obj.save("insert into t_sessions values('"+DropDownList2.SelectedItem.ToString()+"','"+TextBox2.Text+"','"+Textbox1.Text+"','"+TextBox4.Text+"','nill','"+DropDownList1.SelectedItem.ToString()+"')");
			if(i==1)
			{
				Label1.Visible=true;
				Label1.Text="Course Added Successfully";
			}
		}

		protected void bsave_Click(object sender, System.EventArgs e)
		{
			string fn=fdb.Value.Substring(fdb.Value.LastIndexOf("\\")+1);
			File.Copy(fdb.Value,"C:\\Inetpub\\wwwroot\\e_learn\\Topics\\"+fn,true);			 
			string sfn="http://localhost//e_learn//Topics//"+fn;
			string query;
			query="insert into t_sessions values('"+DropDownList2.SelectedItem.ToString()+"','"+TextBox2.Text+"','"+Textbox1.Text+"','nill','"+sfn+"','"+DropDownList1.SelectedItem.ToString()+"')";
           
		int i=obj.save(query);
			if(i==1)
			{
				Label1.Visible=true;
				Label1.Text="Course Added Successfully";
			}
		}

		private void ImageButton1_Click(object sender, System.Web.UI.ImageClickEventArgs e)
		{
			ImageButton1.ImageUrl="images\\mang1.gif";
			ImageButton2.ImageUrl="images\\tech.gif";
			ImageButton3.ImageUrl="images\\personal.gif";
			filldrop("Managerial");
		}
		public void filldrop(string cat)
		{
			DropDownList2.Items.Clear();
			DataSet ds1;
			ds1=obj.fill("select * from T_courses where trim(CourceCat)='"+cat.Trim()+"'");
			DropDownList2.DataSource=ds1.Tables[0];
			DropDownList2.DataTextField ="coursename";
			DropDownList2.DataValueField="sessions";
			DropDownList2.DataBind();               
		}

		private void ImageButton2_Click(object sender, System.Web.UI.ImageClickEventArgs e)
		{
			ImageButton1.ImageUrl="images\\mang.gif";
			ImageButton2.ImageUrl="images\\tech1.gif";
			ImageButton3.ImageUrl="images\\personal.gif";

			filldrop("Technical");
		}

		private void ImageButton3_Click(object sender, System.Web.UI.ImageClickEventArgs e)
		{
			ImageButton1.ImageUrl="images\\mang.gif";
			ImageButton2.ImageUrl="images\\tech.gif";
			ImageButton3.ImageUrl="images\\personal1.gif";
			filldrop("Personal");
		}
	}
}
