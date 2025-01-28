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
using System.Data.SqlClient;
namespace e_learn
{
	/// <summary>
	/// Summary description for EmpChangePassword.
	/// </summary>
	public partial class EmpChangePassword : System.Web.UI.Page
	{
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
	//		Label1.Text=Session["userid"].ToString();
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
        
		Class1 obj=new Class1();
		string tempid;
		SqlDataReader reader;
		SqlCommand com;
		SqlConnection con;
		private void ImageButton1_Click(object sender, System.Web.UI.ImageClickEventArgs e)
		{
			try
			{
				if(pwd.Text==pwd1.Text)
				{
					string topwd=opwd.Text;
					string tpwd=pwd.Text;
					con=new SqlConnection("provider=sqloledb.1;user id=sa;password=sa;database=UK");
				con.Open();
				com=new SqlCommand("select empid,password from t_admin where password='"+topwd+"' ",con);
					reader=com.ExecuteReader();
					if(reader.Read())
					{
						tempid=Convert.ToString( reader.GetValue(0));
					}
					reader.Close();
					com=new SqlCommand("update T_Admin set  password='"+tpwd+"' where empid='"+tempid+"' ",con);
					com.ExecuteNonQuery();
					Response.Write("Password Modified");
				}
				else
				{
					Response.Write("Re-enter password is not same");
				}
			}
					catch (Exception ex)
			{
				Response.Write(ex.ToString());
			}
		}
			/*
			try
			{
				Label2.Visible=true;
				int i=obj.chkregcourse("select count(*) from T_Admin where Empid='"+Session["userid"]+"' and password='"+opwd.Text+"'");
				if(i==1)
				{
					string query="update T_Admin set password='"+pwd.Text+"' where Empid='"+Session["userid"].ToString()+"'";
					int ii=obj.save(query);
					if(ii==1)
					{
						MessageBox.Show("Password changed successfully","Changed",MessageBoxButtons.OK,MessageBoxIcon.Information,MessageBoxDefaultButton.Button1,MessageBoxOptions.DefaultDesktopOnly);			
						Response.Redirect("AdminLogin.aspx");
					}
					
				}
				else
					Label2.Text="Check Old Password";
			}
			catch (Exception ex){}
*/


		protected void LinkButton1_Click(object sender, System.EventArgs e)
		{
			Session["userid"]=null;
			Response.Redirect("E_learn.aspx");
		}
	}
}		
