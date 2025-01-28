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
//using System.Data.SqlClient; 
using System.Data.OleDb;
namespace e_learn
{
	/// <summary>
	/// Summary description for StaffReg.
	/// </summary>
	public partial class StaffReg : System.Web.UI.Page
	{
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			if( ! this.IsPostBack) 
			{
				DropDownList1.Items.Add("India");
				DropDownList1.Items.Add("Africa");
				DropDownList1.Items.Add("USA");

			
			}

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

		protected void Button2_Click(object sender, System.EventArgs e)
		{
		
			TextBox2.Text="";
			TextBox3.Text="";
			TextBox4.Text="";
			TextBox5.Text="";
			TextBox6.Text="";
			TextBox7.Text="";
			TextBox8.Text="";
			TextBox9.Text="";
			TextBox10.Text="";
			DropDownList1.Items.Clear();
		}

		protected void Button1_Click(object sender, System.EventArgs e)
		{
			try
			{
				//SqlConnection con=new SqlConnection("provider=sqloledb.1;user id=sa;password=sa;database=UK");
                OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Password=;User ID=Admin;Data Source=C:\\Documents and Settings\\Administrator\\Desktop\\uk.mdb");
                //SqlConnection con = new SqlConnection("Provider=Microsoft.Jet.OLEDB.4.0;Password=;User ID=Admin;Data Source=C:\\Documents and Settings\\Administrator\\Desktop\\uk.mdb");
				con.Open();
                OleDbCommand com = new OleDbCommand("insert into Staff_Master values('" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + DropDownList1.SelectedItem.ToString() + "','" + TextBox9.Text + "','" + TextBox10.Text + "')", con);
				int i =com.ExecuteNonQuery();
				Label1.Visible=true;
				Label1.Text ="Record Saved";
			}
			catch(Exception e1)
			{
				Response.Write(e1.ToString());
			}
		}

		protected void Button3_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("admin_home.aspx");
		}
	}
}
