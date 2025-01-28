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
	/// Summary description for Modify_Course.
	/// </summary>
	public partial class Modify_Course : System.Web.UI.Page
	{
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			// Put user code to initialize the page here
			Label1.Visible=false;
			Label2.Visible=false;

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
Class1 obj= new Class1();

		private void ImageButton1_Click(object sender, System.Web.UI.ImageClickEventArgs e)
		{
			try
			{
				string sqlquery;
				sqlquery="update T_Courses set Coursename='"+TextBox1.Text+"', Courcecat='"+ DropDownList1.SelectedItem.ToString()+"', Sessions="+int.Parse(TextBox3.Text)+ ", Dur="+int.Parse(Textbox2.Text)+ " where coursename='" + TextBox1.Text +"'";

			//	Response.Write (sqlquery);

			
				int i=obj.save(sqlquery);
				if(i>0)
				{
					Label1.Visible=true;
					Label1.Text="Course modified Successfully";
				}
				else
				{
					Label1.Visible=true;
					Label1.Text="Please Verify Courses ";
				}
			}
			catch (Exception ex)
			{
				Label2.Visible=true;
				Label1.Visible =true;
				Label2.Text=ex.Message.ToString();
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

		protected void Textbox2_TextChanged(object sender, System.EventArgs e)
		{
		}
		}
	}
