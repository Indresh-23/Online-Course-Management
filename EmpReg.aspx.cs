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
	/// Summary description for EmpReg.
	/// </summary>
	public partial class EmpReg : System.Web.UI.Page
	{
        SqlConnection con = new SqlConnection("Data Source=.;database=GREENWICH;Integrated Security=True");
		protected System.Web.UI.WebControls.TextBox textbox12;
	
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

		private void ImageButton1_Click(object sender, System.Web.UI.ImageClickEventArgs e)
		{
			try
			{
				string sqlquery;
				sqlquery="insert into T_Emp_Personal values('"+eid.Text+"','"+fn.Text+"','"+ln.Text+"','"+mn.Text+"','"+desig.Text+"','"+addr.Text+"','"+city.Text+"','"+state.Text+"','"+zip.Text+"','"+sel.SelectedItem.ToString()+"','"+Email.Text+"','"+pwd.Text+"')";
				SqlCommand cmd=new SqlCommand(sqlquery,con);
				con.Open();
				cmd.ExecuteNonQuery();
				con.Close();
				Response.Redirect("EmpLogin.aspx");
			}
			catch(Exception e1)
			{
				Response.Write(e1.ToString());
			}
		}

	
		
		
	}
}