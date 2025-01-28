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
	/// Summary description for Modify_Ques.
	/// </summary>
	public partial  class Modify_Ques : System.Web.UI.Page
	{
        //protected System.Web.UI.WebControls.LinkButton LinkButton1;
        //protected System.Web.UI.WebControls.ImageButton ImageButton3;
        //protected System.Web.UI.WebControls.ImageButton ImageButton4;
        //protected System.Web.UI.WebControls.ImageButton ImageButton5;
        //protected System.Web.UI.WebControls.DropDownList DropDownList2;
        //protected System.Web.UI.WebControls.DropDownList Dropdownlist3;
        //protected System.Web.UI.WebControls.TextBox Textbox2;
        //protected System.Web.UI.WebControls.TextBox Textbox3;
        //protected System.Web.UI.WebControls.TextBox Textbox4;
        //protected System.Web.UI.WebControls.TextBox Textbox5;
        //protected System.Web.UI.WebControls.TextBox Textbox6;
        //protected System.Web.UI.WebControls.TextBox Textbox7;
        //protected System.Web.UI.WebControls.DropDownList DropDownList1;
        //protected System.Web.UI.WebControls.ImageButton ImageButton1;
        //protected System.Web.UI.WebControls.ImageButton ImageButton2;
        //protected System.Web.UI.WebControls.ImageButton ImageButton6;
        //protected System.Web.UI.WebControls.Label Label2;
	
		private void Page_Load(object sender, System.EventArgs e)
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
			this.ImageButton3.Click += new System.Web.UI.ImageClickEventHandler(this.ImageButton3_Click);
			this.ImageButton4.Click += new System.Web.UI.ImageClickEventHandler(this.ImageButton4_Click);
			this.ImageButton5.Click += new System.Web.UI.ImageClickEventHandler(this.ImageButton5_Click);
			this.DropDownList2.SelectedIndexChanged += new System.EventHandler(this.DropDownList2_SelectedIndexChanged);
			this.ImageButton6.Click += new System.Web.UI.ImageClickEventHandler(this.ImageButton6_Click);
			this.ImageButton1.Click += new System.Web.UI.ImageClickEventHandler(this.ImageButton1_Click);
			this.ImageButton2.Click += new System.Web.UI.ImageClickEventHandler(this.ImageButton2_Click);
			this.Load += new System.EventHandler(this.Page_Load);

		}
		#endregion

		Class1 obj=new Class1();

		private void ImageButton1_Click(object sender, System.Web.UI.ImageClickEventArgs e)
		{
			try
			{
				string sqlquery;
				sqlquery="update T_Exampaper set quesdesc='"+Textbox3.Text+"', opt1='"+Textbox4.Text+"', opt2='"+Textbox5.Text+"',opt3='"+Textbox6.Text+"', opt4='"+Textbox7.Text+"',ans='"+DropDownList1.SelectedItem.ToString()+"' where quesid=" +Textbox2.Text+" and sessionid='"+Dropdownlist3.SelectedItem.ToString()+"'";
			
				int i=obj.save(sqlquery);
				if(i>0)
					Label2.Text="Question modified Successfully";
				else
					Label2.Text="Please Verify Question ID";
			}
			catch (Exception ex)
			{
			}

		}

		private void ImageButton3_Click(object sender, System.Web.UI.ImageClickEventArgs e)
		{
			ImageButton3.ImageUrl="images\\mang1.gif";
			ImageButton4.ImageUrl="images\\tech.gif";
			ImageButton5.ImageUrl="images\\personal.gif";

			filldrop("Managerial");
		}

		private void ImageButton4_Click(object sender, System.Web.UI.ImageClickEventArgs e)
		{
			ImageButton3.ImageUrl="images\\mang.gif";
			ImageButton4.ImageUrl="images\\tech1.gif";
			ImageButton5.ImageUrl="images\\personal.gif";

			filldrop("Technical");
		}

		private void ImageButton5_Click(object sender, System.Web.UI.ImageClickEventArgs e)
		{
			ImageButton3.ImageUrl="images\\mang.gif";
			ImageButton4.ImageUrl="images\\tech.gif";
			ImageButton5.ImageUrl="images\\personal1.gif";

			filldrop("Personal");
		}

		public void filldrop(string cat)
		{
			DropDownList2.Items.Clear();
			DataSet ds1;
			ds1=obj.fill("select * from T_courses where trim(CourceCat)='"+cat.Trim()+"'");
			DropDownList2.DataSource=ds1.Tables[0];
			DropDownList2.DataTextField ="coursename";
			DropDownList2.DataValueField="sessions";
			DropDownList2.DataBind();               
		}

		private void ImageButton2_Click(object sender, System.Web.UI.ImageClickEventArgs e)
		{
			Textbox2.Text="";
			Textbox3.Text="";
			Textbox4.Text="";
			Textbox5.Text="";
			Textbox6.Text="";
			Textbox7.Text="";
			DropDownList2.SelectedItem.Text="";
			Dropdownlist3.SelectedItem.Text="";
			DropDownList1.SelectedItem.Text="";
		}

		private void ImageButton6_Click(object sender, System.Web.UI.ImageClickEventArgs e)
		{
			string sqlquery;
			sqlquery="select * from T_Exampaper where sessionid='"+ Dropdownlist3.SelectedItem.Text + "' and quesid="+int.Parse(Textbox2.Text)+"";
			DataSet ds;
			ds=obj.rowdetails(sqlquery);
			DataRow  dr=ds.Tables[0].Rows[0];
				
//			if(dr==1)
//				Label2.Text="Question Inserted Successfully";
//				else
//				Label2.Text="Question already exist";
			Textbox3.Text=dr[2].ToString();
			Textbox4.Text=dr[3].ToString();
			Textbox5.Text=dr[4].ToString();
			Textbox6.Text=dr[5].ToString();
			Textbox7.Text=dr[6].ToString();

		

		}

		private void DropDownList2_SelectedIndexChanged(object sender, System.EventArgs e)
		{
			Dropdownlist3.Items.Clear();
			DataSet ds1;
			ds1=obj.fill("select SessionId from T_Sessions where Coursename='"+DropDownList2.SelectedItem.ToString()+"'");
			Dropdownlist3.DataSource=ds1.Tables[0];
			Dropdownlist3.DataTextField ="SessionId";
			Dropdownlist3.DataBind();
		}
		
	}
}
