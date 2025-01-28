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
	/// Summary description for StartExam.
	/// </summary>
	public  partial  class StartExam : System.Web.UI.Page
	{
        //protected System.Web.UI.WebControls.LinkButton LinkButton1;
        //protected System.Web.UI.WebControls.Button Button1;
	
		private void Page_Load(object sender, System.EventArgs e)
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
			this.Button1.Click += new System.EventHandler(this.Button1_Click);
			this.LinkButton1.Click += new System.EventHandler(this.LinkButton1_Click);
			this.Load += new System.EventHandler(this.Page_Load);

		}
		#endregion

		private void LinkButton1_Click(object sender, System.EventArgs e)
		{
			Session["userid"]=null;
			Session["sid"]=null;
			Response.Redirect("E_Learn.aspx");
		}
Class1 obj =new Class1();
		private void Button1_Click(object sender, System.EventArgs e)
		{
			int ct=obj.chkregcourse("select count(*) from T_Result where empid='"+Session["userid"]+"' and sessionid='"+Session["sid"]+"'");
			if(ct<4)
			{
				obj.save("insert into T_Result values('"+Session["userid"].ToString()+"','"+Session["sid"]+"',0,0,'f')");
				Response.Redirect("Examination.aspx");
			}
			else
				MessageBox.Show("Already u  attended 3 times","Sorry",MessageBoxButtons.OK,MessageBoxIcon.Error,MessageBoxDefaultButton.Button1,MessageBoxOptions.ServiceNotification);

		}		
	}
}
