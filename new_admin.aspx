<%@ Register TagPrefix="uc1" TagName="Footer" Src="Footer.ascx" %>
<%@ Page language="c#" Inherits="e_learn.new_admin" CodeFile="new_admin.aspx.cs" %>
<%@ Register TagPrefix="uc1" TagName="Banner" Src="Banner.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Menus" Src="Menus.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD html 4.0 Transitional//EN" >
<html>
	<head>
		<title>new_admin</title>
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
					<td style="WIDTH:100%; HEIGHT:20%" align="left" valign="top">
						<table style="WIDTH:100%; HEIGHT:100%">
							<tr>
								<td style="WIDTH:100%; HEIGHT:25.24%" colspan="2"><P>
										<uc1:Banner id="Banner1" runat="server"></uc1:Banner></P>
									<P>
										<uc1:Menus id="Menus1" runat="server"></uc1:Menus></P>
								</td>
							</tr>
							<tr>
								<td style="WIDTH:1.35%; HEIGHT:100%" valign="top" align="left">
								</td>
								<td style="WIDTH:100%; HEIGHT:100%" align="center" valign="top">
									<table style="WIDTH: 310px; HEIGHT: 170px" border="1">
										<tr align="justify" valign="top">
											<td bgcolor="skyblue" align="center" style="HEIGHT: 18px">
												<font style="FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: black; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif">
													Add a New Administrator </font>
											</td>
										</tr>
										<tr>
											<td align="center" valign="top">
												<br>
												<table>
													<TBODY>
														<tr>
															<td align="left">
																<font style="FONT-WEIGHT: bold; FONT-SIZE: 10px; COLOR: navy; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif">
																	Admin Id: </font>
															</td>
															<td>
																<asp:TextBox id="TextBox1" runat="server"></asp:TextBox>
															</td>
														</tr>
														<tr>
															<td>
																<font style="FONT-WEIGHT: bold; FONT-SIZE: 10px; COLOR: navy; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif">
																	Password: </font>
															</td>
															<td>
																<asp:TextBox id="Textbox2" runat="server"></asp:TextBox>
															</td>
														</tr>
														<tr>
															<td align="center" valign="middle" colspan="2">
																<asp:ImageButton id="ImageButton1" runat="server" ImageUrl="file:///C:\Inetpub\wwwroot\GreenWich\images\login.gif"></asp:ImageButton>
															</td>
														</tr>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<uc1:Footer id="Footer1" runat="server"></uc1:Footer></td>
				</tr>
			</table>
		</form>
		</TD></TR></TBODY></TABLE>
	</body>
</html>
