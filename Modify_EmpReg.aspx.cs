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
	/// Summary description for Modify_EmpReg.
	/// </summary>
	public partial class Modify_EmpReg : System.Web.UI.Page
	{
	Class1 obj=new Class1();
		protected void Page_Load(object sender, System.EventArgs e)
		{
		
		//p	string query="select * from T_courseReg";
		//p	DataSet ds=obj.fill(query);
		//p	DataGrid1.DataSource=ds.Tables[0];
		//p		DataGrid1.DataBind();
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

		protected void Button1_Click(object sender, System.EventArgs e)
		{
			//p string query="update t_coursereg set enddate=enddate+" + int.Parse(TextBox2.Text)+ ", status=0 where empid='" + TextBox1.Text + "' and status=1";
		//p int n=obj.save(query);
//	//		Response.Write(query);
		//p	if (n==1)
				Label1.Text= "Updated sucessfully";
     //p else
	//p			Label1.Text = "Database Problem";
			
	}
	}
}
