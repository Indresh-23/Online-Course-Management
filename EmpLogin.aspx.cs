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
using System.Data.OleDb;
using System.Data.SqlClient;
namespace e_learn
{
	/// <summary>
	/// Summary description for EmpLogin.
	/// </summary>
	public partial class EmpLogin : System.Web.UI.Page
	{
        //SqlConnection con = new SqlConnection("Data Source=.;database=GREENWICH;Integrated Security=True");
        SqlConnection con = new SqlConnection("Data Source=Venkat;database=onlinestumgt;Integrated Security=True");
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
          //  Class1 obj = new Class1();
				Session["empid"]=uname.Text.Trim();
				Session["pwd"]=pwd.Text.Trim();
				string val1=Session["empid"].ToString();
				string val2=Session["pwd"].ToString();

                SqlCommand cmd = new SqlCommand("select * from t_emp_personal where EMPID='" + val1 + "' and PASSWORD= '" + val2 + "'", con);
                con.Open();
                Object o = cmd.ExecuteScalar();
                Response.Write(o);
               if(o!=null)
                {
                    Response.Write("auth succeded");
                    Response.Redirect("~/Course.aspx");
                }
            
				
			
		}

		private void LinkButton1_Click(object sender, System.EventArgs e)
		{

			Session["userid"]=null;
			Response.Redirect("E_Learn.aspx");
		}

		private void LinkButton2_Click(object sender, System.EventArgs e)
		{
			
		}
        protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
        {

        }
}
}
