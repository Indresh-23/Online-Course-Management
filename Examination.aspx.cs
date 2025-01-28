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
	/// Summary description for Examination.
	/// </summary>
	public partial  class Examination : System.Web.UI.Page
	{
		Class1 obj=new Class1();
        //protected System.Web.UI.WebControls.Label Label2;
        //protected System.Web.UI.WebControls.Label Question;
        //protected System.Web.UI.WebControls.ImageButton ImageButton1;
        //protected System.Web.UI.WebControls.Label Label1;
        //protected System.Web.UI.WebControls.LinkButton LinkButton1;
        //protected System.Web.UI.WebControls.RadioButtonList RadioButtonList1;
        //protected System.Web.UI.WebControls.Label Label3;
		int ii;
		private void Page_Load(object sender, System.EventArgs e)
		{
			Label1.Text="Welcome To:"+Session["userid"].ToString();
			ii=obj.chkregcourse("select count(*) from T_ExamPaper where sessionid='"+Session["sid"].ToString()+"'");
			Label3.Text="Answer The Questions";
			if(Page.IsPostBack==false)
			{
				Session["noq"]=0;
				ques();
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
			this.LinkButton1.Click += new System.EventHandler(this.LinkButton1_Click);
			this.ImageButton1.Click += new System.Web.UI.ImageClickEventHandler(this.ImageButton1_Click);
			this.Load += new System.EventHandler(this.Page_Load);

		}
		#endregion

		
		public void ques()
		{
			try
			{
				RadioButtonList1.Items.Clear();
				Random d=new Random();
				int i=d.Next(1,ii);
				obj.con.Open();
				SqlCommand cmd =new SqlCommand("select * from T_exampaper where sessionid='"+Session["sid"].ToString()+"' and quesid="+i,obj.con);
				SqlDataReader dr;
				dr=cmd.ExecuteReader();
				if(dr.Read())
				{
					Label2.Text=dr[2].ToString();
					RadioButtonList1.Items.Add(dr[3].ToString());
					RadioButtonList1.Items.Add(dr[4].ToString());
					RadioButtonList1.Items.Add(dr[5].ToString());
					RadioButtonList1.Items.Add(dr[6].ToString());
				}
				else
					Response.Write("invalid");
				dr.Close();
				obj.con.Close();
			}
			catch(Exception ex)
			{
			}

		}
		private void ImageButton1_Click(object sender, System.Web.UI.ImageClickEventArgs e)
		{
			try
			{

				int s;
				int res=RadioButtonList1.SelectedIndex+1;
				Session["noq"]=int.Parse(Session["noq"].ToString())+1;
				int result=obj.chkregcourse("select count(*) from T_ExamPaper where QuesDesc='"+Label2.Text+"' and ans='"+res.ToString()+"'");
				if(result==1)
					s=obj.save("update T_Result set qno=qno+1,answers=answers+1 where EmpId='"+Session["userid"]+"' and sessionid='"+Session["sid"]+"'");
				else
					s=obj.save("update T_Result set qno=qno+1 where EmpId='"+Session["userid"]+"' and sessionid='"+Session["sid"]+"'");

				if(int.Parse(Session["noq"].ToString())==3)
				{
					int noq=obj.chkregcourse("select Qno from T_Result where empid='"+Session["userid"].ToString()+"' and sessionid='"+Session["sid"].ToString()+"'");
					RadioButtonList1.Visible=false;
					ImageButton1.Visible=false;
					Question.Text="No of Questions Attempted:"+"<br><hr>"+ noq;
					int ans=obj.chkregcourse("select answers from T_Result where empid='"+Session["userid"].ToString()+"' and sessionid='"+Session["sid"].ToString()+"'");
					Label2.Text="No Of Correct Answers:" +"<br><br><br><hr>"+ ans;
					Label3.Text="Result";
				}
				else
					ques();
			}
			catch (Exception ex){}
		}

		private void LinkButton1_Click(object sender, System.EventArgs e)
		{
			try 
			{
				Session["userid"]=null;
				Response.Redirect("E_Learn.aspx");
			}
			catch (Exception ex){}
		}
		
	}
}
