<%@ Register TagPrefix="uc1" TagName="Menus" Src="Menus.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Banner" Src="Banner.ascx" %>
<%@ Page language="c#" Inherits="e_learn.AdminLogin" CodeFile="AdminLogin.aspx.cs" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="Footer.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD html 4.0 Transitional//EN" >
<html>
	<head>
		<title>AdminLogin</title>
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
						<table style="WIDTH: 100%; HEIGHT: 100%">
							<tr>
								<td valign="top" align="left" width="100%" colSpan="2" height="20%"><uc1:banner id="Banner1" runat="server"></uc1:banner></td>
							</tr>
							<tr>
								<td valign="top" align="left">
									<P><uc1:menus id="Menus1" runat="server"></uc1:menus></P>
									<P><BR>
										<TABLE id="Table1" style="WIDTH: 80%; HEIGHT: 165px" cellspacing="0" cellPadding="0" rules="rows"
											width="513" border="1">
											<TR bgColor="#0099cc">
												<TD><FONT style="FONT-WEIGHT: bold; FONT-SIZE: 10px; COLOR: black; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif">Administrator 
														Login Page </FONT>
												</TD>
											</TR>
											<TR bgColor="skyblue">
												<TD><FONT style="FONT-WEIGHT: bold; FONT-SIZE: 10px; COLOR: black; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif">Enter 
														Admin Account Information </FONT>
												</TD>
											</TR>
											<TR>
												<TD valign="middle" align="center"><BR>
													<TABLE id="Table2" align="center">
														<TR>
															<TD width="40%"><FONT style="FONT-WEIGHT: bold; FONT-SIZE: 10px; COLOR: navy; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif">Admin 
																	Id:</FONT></TD>
															<TD>
																<asp:textbox id="uname" runat="server"></asp:textbox></TD>
														</TR>
														<TR>
															<TD width="40%"><FONT style="FONT-WEIGHT: bold; FONT-SIZE: 10px; COLOR: navy; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif">Password:</FONT></TD>
															<TD>
																<asp:textbox id="pwd" runat="server" TextMode="Password"></asp:textbox></TD>
														</TR>
														<TR align="center">
															<TD align="center" colSpan="2">
																<asp:imagebutton id="ImageButton1" runat="server" ImageUrl="~/images/login.gif" OnClick="ImageButton1_Click1"></asp:imagebutton></TD>
														</TR>
														<TR>
															<TD align="right" colSpan="2"><FONT style="FONT-WEIGHT: bold; FONT-SIZE: 10px; COLOR: navy; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif">
																	<asp:LinkButton id="LinkButton1" runat="server" onclick="LinkButton1_Click">ChangePassword</asp:LinkButton></FONT></TD>
														</TR>
													</TABLE>
												</TD>
											</TR>
										</TABLE>
									</P>
								</td>
								<td valign="top" align="left">
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td>
						<uc1:Footer id="Footer1" runat="server"></uc1:Footer>
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>
