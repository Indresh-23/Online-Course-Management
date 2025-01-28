<%@ Page language="c#" Inherits="e_learn.add_course" CodeFile="add_course.aspx.cs" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Menus" Src="Menus.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Banner" Src="Banner.ascx" %>
<%@ Register TagPrefix="uc1" TagName="WebUserControl1" Src="WebUserControl1.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD html 4.0 Transitional//EN" >
<html>
	<head>
		<title>add_course</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<link href="Style.css" rel="stylesheet" type="text/css">
	</head>
	<body>
		<form id="Form1" method="post" runat="server">
			<table style="WIDTH: 100%; HEIGHT: 100%">
				<tr>
					<td style="WIDTH: 100%; HEIGHT: 100%" valign="top" align="left">
						<table style="WIDTH: 89.95%; HEIGHT: 100%" align="left">
							<tr>
								<td style="WIDTH: 672px"><uc1:banner id="Banner1" runat="server"></uc1:banner></td>
							</tr>
							<tr width="100%">
								<td style="WIDTH: 672px"><uc1:menus id="Menus1" runat="server"></uc1:menus></td>
							</tr>
							<tr>
								<td style="WIDTH: 104.53%; HEIGHT: 8.12%" valign="top" align="center"><uc1:WebUserControl1 id="WebUserControl1" runat="server"></uc1:WebUserControl1>
									<table style="WIDTH: 100%; HEIGHT: 8.35%" cellspacing="0" cellPadding="0">
										<TR style="WIDTH: 100%; HEIGHT: 5%" bgColor="skyblue">
											<TD style="HEIGHT: 5%" align="left">
												<asp:label id="Label3" runat="server" Font-Size="8pt" Font-Names="Verdana" Font-Bold="True"></asp:label></TD>
											<TD style="HEIGHT: 5%" align="center"><FONT style="FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: black; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif">Add 
													a New Course </FONT>
											</TD>
											<TD style="HEIGHT: 5%" align="right">
												<asp:linkbutton id="LinkButton1" runat="server" Font-Size="8pt" Font-Names="Verdana" Font-Bold="True"
													CausesValidation="False" onclick="LinkButton1_Click">Logout</asp:linkbutton></TD>
										</TR>
									</table>
									<table style="WIDTH: 250px; HEIGHT: 300px">
										<TR>
											<TD colSpan="2">
												<asp:label id="Label1" runat="server" Font-Size="8pt" Font-Names="Verdana" Font-Bold="True"
													ForeColor="Red">Label</asp:label></TD>
										</TR>
										<TR>
											<TD><FONT style="FONT-WEIGHT: bold; FONT-SIZE: 10px; COLOR: navy; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif">Enter 
													Course Name</FONT>
											</TD>
											<TD>
												<asp:textbox id="TextBox1" runat="server" Width="137px"></asp:textbox>
												<asp:requiredfieldvalidator id="RequiredFieldValidator1" runat="server" Font-Size="8pt" Font-Names="Verdana"
													Font-Bold="True" ErrorMessage="Fill Course Name" ControlToValidate="TextBox1">*</asp:requiredfieldvalidator></TD>
										</TR>
										<TR>
											<TD style="HEIGHT: 3px"><FONT style="FONT-WEIGHT: bold; FONT-SIZE: 10px; COLOR: navy; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif">Category</FONT>
											</TD>
											<TD style="HEIGHT: 3px">
												<asp:dropdownlist id="DropDownList1" runat="server" Font-Size="8pt" Font-Names="Verdana" Font-Bold="True"
													Width="136px">
													<asp:ListItem Value="--Select--">--Select--</asp:ListItem>
													<asp:ListItem Value="Technical">Technical</asp:ListItem>
													<asp:ListItem Value="Managerial">Managerial</asp:ListItem>
													<asp:ListItem Value="Personal">Personal</asp:ListItem>
												</asp:dropdownlist></TD>
										</TR>
										<TR>
											<TD><FONT style="FONT-WEIGHT: bold; FONT-SIZE: 10px; COLOR: navy; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif">Number 
													of Sessions</FONT>
											</TD>
											<TD>
												<asp:textbox id="TextBox2" runat="server" Width="137px"></asp:textbox></TD>
										</TR>
										<TR>
											<TD><FONT style="FONT-WEIGHT: bold; FONT-SIZE: 10px; COLOR: navy; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif">Number 
													of Days</FONT>
											</TD>
											<TD>
												<asp:textbox id="TextBox3" runat="server" Width="137px"></asp:textbox></TD>
										</TR>
										<TR>
											<TD align="right">
												<asp:imagebutton id="ImageButton1" runat="server" Width="22px" Height="25px" ImageUrl="file:///C:\Inetpub\wwwroot\GreenWich\images\register.gif"></asp:imagebutton></TD>
											<TD align="left">
												<asp:imagebutton id="ImageButton2" runat="server" Width="24px" Height="20px" ImageUrl="file:///C:\Inetpub\wwwroot\GreenWich\images\personal.gif"></asp:imagebutton></TD>
										</TR>
									</table>
								</td>
								<td style="WIDTH: 100%; HEIGHT: 100%" valign="top" align="center">
								</td>
							</tr>
							<tr>
								<td style="WIDTH: 100%; HEIGHT: 94.42%" valign="top" align="center" colSpan="2"><br>
								</td>
							</tr>
							<tr>
								<td style="WIDTH: 672px"><asp:validationsummary id="ValidationSummary1" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt"
										Width="200px" Height="24px"></asp:validationsummary>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								</td>
								<td align="left" valign="top"><asp:Label id="Label2" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt"
										ForeColor="Red">.Select Category</asp:Label></td>
							</tr>
						</table>
					</td>
					</TD>
				</tr>
				<!--<tr>
					<td>
						<uc1:Footer id="Footer1" runat="server"></uc1:Footer></td>
				</tr> -->
			</table>
		</form>
	</body>
</html>
