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
using System.Windows.Forms;

namespace e_learn
{
	/// <summary>
	/// Summary description for Emp_Changepwd.
	/// </summary>
	public partial class Emp_Changepwd : System.Web.UI.Page
	{
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			Label1.Text=Session["userid"].ToString();
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

		}
		#endregion

		protected void LinkButton1_Click(object sender, System.EventArgs e)
		{
			Session["userid"]=null;
			Response.Redirect("E_learn.aspx");
		}
		Class1 obj=new Class1();
		private void ImageButton1_Click(object sender, System.Web.UI.ImageClickEventArgs e)
		{
			Label2.Visible=true;
				int i=obj.chkregcourse("select count(*) from T_Emp_Personal where Empid='"+Session["userid"]+"' and password='"+opwd.Text+"'");
				if(i==1)
				{
					string query="update T_Emp_Personal set password='"+pwd.Text+"' where Empid='"+Session["userid"].ToString()+"'";
					int ii=obj.save(query);
					if(ii==1)
					{
						MessageBox.Show("Password changed successfully","Changed",MessageBoxButtons.OK,MessageBoxIcon.Information,MessageBoxDefaultButton.Button1,MessageBoxOptions.DefaultDesktopOnly);			
						Response.Redirect("EmpLogin.aspx");
					}
					
				}
				else
					Label2.Text="Check Old Password";
			}
		
	}
}
