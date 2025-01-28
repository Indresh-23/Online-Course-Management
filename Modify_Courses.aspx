<%@ Register TagPrefix="uc1" TagName="Banner" Src="Banner.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Menus" Src="Menus.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="Footer.ascx" %>
<%@ Page language="c#" Inherits="e_learn.Modify_Course" CodeFile="Modify_Courses.aspx.cs" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD html 4.0 Transitional//EN" >
<html>
	<head>
		<title>Modify_Course</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<link href="Style.css" rel="stylesheet" type="text/css">
	</head>
	<body>
		<form id="Form1" method="post" runat="server">
			<table style="WIDTH: 100%; HEIGHT: 100%">
				<tr>
					<td style="WIDTH: 100%; HEIGHT: 100%" valign="top" align="left">
						<table style="WIDTH: 100%; HEIGHT: 100%" align="left">
							<tr>
								<td style="WIDTH: 103.18%; HEIGHT: 19.45%" align="left" valign="top" colspan="2">
									<P><uc1:banner id="Banner1" runat="server"></uc1:banner></P>
									<P><uc1:menus id="Menus1" runat="server"></uc1:menus></P>
								</td>
							</tr>
							<tr>
								<td style="WIDTH: 0.14%; HEIGHT: 8.12%" valign="top" align="center"></td>
								<td style="WIDTH: 100%; HEIGHT: 100%" align="center" valign="top">
									<table style="WIDTH: 100%; HEIGHT: 100%">
										<TR style=" WIDTH:100%; HEIGHT:3%" bgcolor="skyblue">
											<td align="center" valign="top" colspan="2" style=" WIDTH:100%; HEIGHT:1.55%">
												<table style=" WIDTH:100%; HEIGHT:100%" cellpadding="0" cellspacing="0">
													<tr bgcolor="skyblue" style=" WIDTH:100%; HEIGHT:5%">
														<td align="left" style="HEIGHT: 5%">
															<asp:Label id="Label3" runat="server" Font-Size="8pt" Font-Names="Verdana" Font-Bold="True"></asp:Label></td>
														<td align="center" style="HEIGHT: 5%">
															<font style="FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: black; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif">
																Modify Course </font>
														</td>
														<td align="right" style="HEIGHT: 5%">
															<asp:LinkButton id="LinkButton1" runat="server" Font-Size="8pt" Font-Names="Verdana" Font-Bold="True"
																CausesValidation="False" onclick="LinkButton1_Click">Logout</asp:LinkButton></td>
													</tr>
												</table>
											</td>
										</TR>
										<tr>
											<td style="WIDTH:100%; HEIGHT:94.42%" align="center" valign="top" colspan="2">
												<br>
												<table>
													<tr>
														<td colspan="2">
															<asp:Label id="Label1" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt"
																ForeColor="Red">Label</asp:Label></td>
													</tr>
													<tr>
														<td><font style="FONT-WEIGHT: bold; FONT-SIZE: 10px; COLOR: navy; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif">Enter 
																Course Name</font>
														</td>
														<td>
															<asp:TextBox id="TextBox1" runat="server" Width="137px"></asp:TextBox>
															<asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" Font-Bold="True" Font-Names="Verdana"
																Font-Size="8pt" ErrorMessage="Fill Cource Name" ControlToValidate="TextBox1">*</asp:RequiredFieldValidator>
														</td>
													</tr>
													<tr>
														<td style="HEIGHT: 3px">
															<font style="FONT-WEIGHT: bold; FONT-SIZE: 10px; COLOR: navy; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif">
																Category</font>
														</td>
														<td style="HEIGHT: 3px">
															<asp:DropDownList id="DropDownList1" runat="server" Width="136px" Font-Bold="True" Font-Names="Verdana"
																Font-Size="8pt">
																<asp:ListItem Value="--Select--">--Select--</asp:ListItem>
																<asp:ListItem Value="Technical">Technical</asp:ListItem>
																<asp:ListItem Value="Managerial">Managerial</asp:ListItem>
																<asp:ListItem Value="Personal">Personal</asp:ListItem>
															</asp:DropDownList></td>
													</tr>
													<tr>
														<td>
															<font style="FONT-WEIGHT: bold; FONT-SIZE: 10px; COLOR: navy; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif">
																Number of Sessions</font>
														</td>
														<td>
															<asp:TextBox id="TextBox3" runat="server" Width="137px"></asp:TextBox>
														</td>
													</tr>
													<tr>
														<td><font style="FONT-WEIGHT: bold; FONT-SIZE: 10px; COLOR: navy; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif">Number 
																of Days</font>
														</td>
														<td><asp:textbox id="Textbox2" runat="server" Width="137px" ontextchanged="Textbox2_TextChanged"></asp:textbox></td>
													</tr>
													<tr>
														<td align="right">
															<asp:ImageButton id="ImageButton1" runat="server" Height="28px" ImageUrl="file:///C:\Inetpub\wwwroot\GreenWich\images\register.gif"
																Width="25px"></asp:ImageButton></td>
														<td align="left">
															<asp:ImageButton id="ImageButton2" runat="server" ImageUrl="file:///C:\Inetpub\wwwroot\GreenWich\images\personal.gif"
																Width="32px" Height="20px"></asp:ImageButton></td>
													</tr>
												</table>
											</td>
										</tr>
										<tr>
											<td style="WIDTH: 139px">
												<asp:ValidationSummary id="ValidationSummary1" runat="server" Width="200px" Height="24px" Font-Bold="True"
													Font-Names="Verdana" Font-Size="8pt"></asp:ValidationSummary>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											</td>
											<td align="left" valign="top"><asp:Label id="Label2" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt"
													ForeColor="Red">.Select Category</asp:Label></td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td>
						<uc1:Footer id="Footer1" runat="server"></uc1:Footer></td>
				</tr>
			</table>
		</form>
	</body>
</html>
