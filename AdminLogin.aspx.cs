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
	/// Summary description for AdminLogin.
	/// </summary>
	public partial class AdminLogin : System.Web.UI.Page
	{
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			// Put user code to initialize the page here
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


Class1 obj=new Class1();
		private void ImageButton1_Click(object sender, System.Web.UI.ImageClickEventArgs e)
		{
			try
			{
				int i=obj.chklogin(uname.Text,pwd.Text,"T_Admin");
				if(i==1)
				{
					Session["userid"]=uname.Text;
					Response.Redirect("admin_home.aspx");
				}
				else
					MessageBox.Show("Invalid Admin","Invalid",MessageBoxButtons.OK,MessageBoxIcon.Error,MessageBoxDefaultButton.Button1,MessageBoxOptions.ServiceNotification);
			}
			catch (Exception ex){}

		}

		protected void LinkButton1_Click(object sender, System.EventArgs e)
		{
			//try
			//{
			//	int ii=obj.chklogin(uname.Text,pwd.Text,"T_Admin");
			//	if(ii==1)
			//	{
			//		Session["userid"]=uname.Text;
					Response.Redirect("AdminChangePwd.aspx");
			//	}
			//	else
			//		MessageBox.Show("Invalid Admin","Invalid",MessageBoxButtons.OK,MessageBoxIcon.Error,MessageBoxDefaultButton.Button1,MessageBoxOptions.ServiceNotification);
		//	}
		//	catch (Exception ex)
		//	{
		//	}
		}
        protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
        {

        }
}
}
