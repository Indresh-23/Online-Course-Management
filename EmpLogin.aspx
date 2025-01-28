<%@ Register TagPrefix="uc1" TagName="Menus" Src="Menus.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="Footer.ascx" %>
<%@ Page language="c#" Inherits="e_learn.EmpLogin" CodeFile="EmpLogin.aspx.cs" %>
<%@ Register TagPrefix="uc1" TagName="Banner" Src="Banner.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//Dtd html 4.0 transitional//EN" >
<html>
	<head>
		<title>EmpLogin</title>
		<!--<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<link href="Style.css" rel="stylesheet" type="text/css">-->
	</head>
	<body>
		<form id="Form1" method="post" runat="server">
            ee<table style="width: 100%; height: 100%">
				<tr>
					<td style="width: 100%; height: 100%" valign="top" align="left">
						<table style="width: 100%; height: 100%">
							<tr>
								<td valign="top" align="left" width="100%" height="20%"><uc1:banner id="Banner2" runat="server"></uc1:banner></td>
							</tr>
							<tr>
								<td valign="top" align="left" style="width: 119px">
									<uc1:menus id="Menus1" runat="server"></uc1:menus>
									
										<br/>
										<table id="table1" style="width: 613px; height: 176px" cellspacing="0"
											 rules="rows" width="613" border="1">
											<tr>
												<td>
														Members Sign Up Now - It's Free!
													
												</td>
											</tr>
											<tr>
												<td style="height: 17px">First Time 
															Student?&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<A href="EmpReg.aspx">Register 
																here</A>
													</td>
											</tr>
											<tr>
												<td valign="middle" align="center"><br/>
													<table id="table2" borderColor="#006699" align="center">
														<tr>
															<td style="height: 1px" width="40%"><FONT style="FONT-WEIGHT: bold; FONT-SIZE: 10px; COLOR: navy; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif">Student 
																	Id:</FONT></td>
															<td style="height: 1px">
																<asp:textbox id="uname" runat="server"></asp:textbox></td>
														</tr>
														<tr>
															<td style="height: 18px" width="40%"><FONT style="FONT-WEIGHT: bold; FONT-SIZE: 10px; COLOR: navy; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif">Password:</FONT></td>
															<td style="height: 18px">
																<asp:textbox id="pwd" runat="server" TextMode="Password"></asp:textbox></td>
														</tr>
														<tr align="center">
															<td align="center" colSpan="2">
																<asp:imagebutton id="ImageButton1" runat="server" ImageUrl="~/images/login.gif" OnClick="ImageButton1_Click1"></asp:imagebutton></td>
														</tr>
														<tr>
															<td style="width: 100%; height: 20%" valign="top" align="right" colSpan="2"><FONT style="FONT-WEIGHT: bold; FONT-SIZE: 10px; COLOR: black; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif"></FONT></td>
														</tr>
													</table>
													<asp:HyperLink id="HyperLink1" runat="server" NavigateUrl="studentchangepwd.aspx">Change password</asp:HyperLink>
												</td>
											</tr>
										</table>
									
								</td>
								<td valign="top" align="left">
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td><uc1:footer id="Footer1" runat="server"></uc1:footer></td>
				</tr>
			</table>
		</form>
	</body>
</html>
