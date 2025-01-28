using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.IO;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace e_learn
{
	/// <summary>
	/// Summary description for Course_Details.
	/// </summary>
	public partial class Course_Details : System.Web.UI.Page
	{
		Class1 obj=new Class1();
		DataSet ds;
		DataSet ds1;
		protected void Page_Load(object sender, System.EventArgs e)
		{
			try
			{
				string course=obj.ret("select Coursename from T_coursereg where empid='"+Session["userid"]+"'");
					
				ds=obj.fill("select * from T_Courses where coursename='"+course+"'");
				DataGrid1.DataSource=ds.Tables[0].DefaultView ;
				DataGrid1.DataBind();

					
				ds1=obj.fill("select sessionid,sessionname,fileurl from t_sessions where coursename=(select coursename from t_coursereg where coursename='"+course+"' and empid='"+Session["userid"]+"')");

				DataGrid2.DataSource=ds1.Tables[0];
				DataGrid2.DataBind();
			}
			catch (Exception ex)
			{
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
			this.DataGrid2.CancelCommand += new System.Web.UI.WebControls.DataGridCommandEventHandler(this.DataGrid2_CancelCommand);
			this.DataGrid2.EditCommand += new System.Web.UI.WebControls.DataGridCommandEventHandler(this.DataGrid2_EditCommand);
			this.DataGrid2.UpdateCommand += new System.Web.UI.WebControls.DataGridCommandEventHandler(this.DataGrid2_UpdateCommand);

		}
		#endregion

	

		private void DataGrid2_EditCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
		{
			try
			{
				string query=" select substr(enddate-sysdate,1,1) as time from t_coursereg where empid='" + Session["userid"] + "' and status=0";
				string i = obj.chkstatus(query);
				if(i=="-")
				{
					string query1= "update t_coursereg set status=1 where empid='"+Session["userid"]+"'and status=0";
                    int n=obj.save(query1);
					Response.Write("the course is expired contact the administrator for extension");
				}

					DataGrid2.EditItemIndex=e.Item.ItemIndex;
				DataGrid2.DataSource=ds1.Tables[0];
				DataGrid2.DataBind();
			}
			catch (Exception ex)
			{
			}
		}

		private void DataGrid2_UpdateCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
		{
			try
			{

				//string s=e.Item.Cells[0].Text;
				string s=obj.ret("select modetype from t_sessions where sessionname='"+e.Item.Cells[0].Text+"'");
				if(s=="File")
				{
					string u=obj.ret("select FILEURL from t_sessions where sessionname='"+e.Item.Cells[0].Text+"'");
					Response.Redirect("ReadCourse.aspx?ft=File&data="+u);
				}
				else
				{
				}
			}
			catch (Exception ex)
			{
			}
		}

		protected void LinkButton1_Click(object sender, System.EventArgs e)
		{

			Session["userid"]=null;
			Response.Redirect("E_Learn.aspx");
		}

		private void DataGrid2_CancelCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
		{
			try
			{
				string u=obj.ret("select sessionid from t_sessions where sessionname='"+e.Item.Cells[0].Text+"'");
				Session["sid"]=u;
				Response.Redirect("StartExam.aspx");	
			}
	
			catch (Exception ex)
			{}

		}

		protected void DataGrid2_SelectedIndexChanged(object sender, System.EventArgs e)
		{
		
		}
	}
}
