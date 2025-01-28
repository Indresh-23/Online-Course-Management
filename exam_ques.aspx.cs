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
using System.Data.SqlClient;
namespace e_learn
{
	/// <summary>
	/// Summary description for exam_ques.
	/// </summary>
	public partial class exam_ques : System.Web.UI.Page
	{
		DataSet ds= new DataSet();
	    Class1 obj=new Class1();
		protected void Page_Load(object sender, System.EventArgs e)
		{
			// Put user code to initialize the page here
			ds=obj.fill("select * from STAFF_MASTER");
			DataGrid1.DataSource=ds.Tables[0].DefaultView ;
			DataGrid1.DataBind();
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

		}
		#endregion
		
		protected void LinkButton1_Click(object sender, System.EventArgs e)
		{
			Session["userid"]=null;
			Response.Redirect("E_Learn.aspx");
		}

		private void Linkbutton2_Click(object sender, System.EventArgs e)
		{
			Response.Redirect ("E_Learn.aspx");
		}


	}
}
