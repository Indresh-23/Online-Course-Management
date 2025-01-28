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
	/// Summary description for studentchangepwd.
	/// </summary>
	public partial class studentchangepwd : System.Web.UI.Page
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
		string tempid;
		private void ImageButton1_Click(object sender, System.Web.UI.ImageClickEventArgs e)
		{

            SqlDataReader reader;
            SqlCommand com;
            SqlConnection con;
			try
				{
					if(pwd.Text==pwd1.Text)
					{
						string topwd=opwd.Text;
						string tpwd=pwd.Text;
						con=new SqlConnection("Data Source=.;database=GREENWICH;Integrated Security=True");
						con.Open();
						com=new SqlCommand("select userid,password from tblusers where password='"+topwd+"' ",con);
						reader=com.ExecuteReader();
						if(reader.Read())
						{
							tempid=Convert.ToString( reader.GetValue(0));
						}
						reader.Close();
						com=new SqlCommand("update tblusers set  password='"+tpwd+"' where userid='"+tempid+"' ",con);
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
		}
	}
