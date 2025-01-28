<%@ Register TagPrefix="uc1" TagName="Banner" Src="Banner.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="Footer.ascx" %>
<%@ Page language="c#" Inherits="e_learn.studentchangepwd" CodeFile="studentchangepwd.aspx.cs" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD html 4.0 Transitional//EN" >
<html>
	<head>
		<title>EmpChangePassword</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<link href="Style.css" rel="stylesheet" type="text/css">
	</head>
	<body>
		<form id="Form1" method="post" runat="server">
			<table style="WIDTH:100%; HEIGHT:100%">
				<tr>
					<td style="WIDTH:100%; HEIGHT:100%" align="left" valign="top">
						<table style="WIDTH:100%; HEIGHT:100%">
							<tr>
								<td colspan="2" align="left" valign="top" width="100%" height="20%">
									<uc1:Banner id="Banner1" runat="server"></uc1:Banner>
								</td>
							</tr>
							<tr>
								<td align="center" valign="top">
									<br>
									<br>
									<table cellpadding="0" cellspacing="0" rules="rows" border="1" width="513" style="WIDTH: 80%; HEIGHT: 165px">
										<tr bgcolor="#0099cc">
											<td>
												<font style="FONT-WEIGHT: bold; FONT-SIZE: 10px; COLOR: black; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif">
													Change Your Password! </font>
											</td>
											<td align="right">
											</td>
										</tr>
										<tr bgcolor="skyblue">
											<td>
												<font style="FONT-WEIGHT: bold; FONT-SIZE: 10px; COLOR: black; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif">
												</font>
											</td>
											<td align="right">
												<asp:LinkButton id="LinkButton1" runat="server" Font-Size="8pt" Font-Bold="True" Font-Names="Verdana">Logout</asp:LinkButton></td>
										</tr>
										<tr>
											<td valign="middle" align="center" colspan="2"><br>
												<table align="center">
													<tr>
														<td width="40%">
															<font style="FONT-WEIGHT: bold; FONT-SIZE: 10px; COLOR: navy; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif">
																Old Password:</font></td>
														<td><asp:textbox id="opwd" runat="server"></asp:textbox></td>
													</tr>
													<tr>
														<td width="40%" style="HEIGHT: 18px">
															<font style="FONT-WEIGHT: bold; FONT-SIZE: 10px; COLOR: navy; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif">
																New Password:</font></td>
														<td style="HEIGHT: 18px"><asp:textbox id="pwd" runat="server" TextMode="Password"></asp:textbox></td>
													</tr>
													<tr>
														<td width="40%" style="HEIGHT: 18px">
															<font style="FONT-WEIGHT: bold; FONT-SIZE: 10px; COLOR: navy; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif">
																Confirm Password:</font></td>
														<td style="HEIGHT: 18px"><asp:textbox id="pwd1" runat="server" TextMode="Password"></asp:textbox></td>
													</tr>
													<tr align="center">
														<td align="center" colspan="2">
															<asp:imagebutton id="ImageButton1" runat="server" ImageUrl="~/images/personal.gif"
																Height="20px" Width="24px"></asp:imagebutton>
														</td>
													</tr>
												</table>
											</td>
										</tr>
									</table>
									<asp:HyperLink id="HyperLink1" runat="server" NavigateUrl="EmpLogin.aspx">Back</asp:HyperLink>
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
