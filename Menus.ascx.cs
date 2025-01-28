namespace e_learn
{
	using System;
	using System.Data;
	using System.Drawing;
	using System.Web;
	using System.Web.UI.WebControls;
	using System.Web.UI.HtmlControls;

	/// <summary>
	///		Summary description for Menus.
	/// </summary>
	public partial class Menus : System.Web.UI.UserControl
	{

		protected void Page_Load(object sender, System.EventArgs e)
		{
		
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
		///		Required method for Designer support - do not modify
		///		the contents of this method with the code editor.
		/// </summary>
		private void InitializeComponent()
		{

		}
		#endregion

		protected void Button2_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("EmpLogin.aspx",true);
		}

		protected void Button5_Click(object sender, System.EventArgs e)
		{
			if(Session["userid"]==null)
					Response.Redirect("AdminLogin.aspx",true);
				else
				Response.Redirect("Admin_home.aspx",true);
		}

		protected void Button3_Click(object sender, System.EventArgs e)
		{
		
		Response.Redirect("EmpReg.aspx",true);
		}

		protected void Button1_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("E_Learn.aspx");
		}

		

		protected void Button4_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("Course.aspx");		
		}

		protected void Button7_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("Help1.aspx");	
		}
	}
}
