<%@ Register TagPrefix="uc1" TagName="Menus" Src="Menus.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Banner" Src="Banner.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="Footer.ascx" %>
<%@ Page language="c#" Inherits="e_learn.Session_Details" CodeFile="Session_Details.aspx.cs" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD html 4.0 Transitional//EN" >
<html>
	<head>
		<title>Session_Details</title>
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
								<td style="WIDTH: 100%; HEIGHT: 20%" colSpan="2">
									<P><uc1:banner id="Banner1" runat="server"></uc1:banner></P>
									<P><uc1:menus id="Menus1" runat="server"></uc1:menus></P>
								</td>
							</tr>
							<tr>
								<td style="WIDTH: 0.4%; HEIGHT: 100%" valign="top" align="center"></td>
								<td style="HEIGHT: 100%" valign="top">
									<table style="WIDTH: 100%; HEIGHT: 100%" align="right">
										<tr valign="top" align="left">
											<td>
												<table style="WIDTH: 20%; HEIGHT: 100%" align="left">
													<TBODY>
														<tr style="HEIGHT:5%">
															<td colspan="4" align="left" valign="top">
																<table cellpadding="0" cellspacing="0">
																	<tr>
																		<td align="left" valign="top">
																			<asp:ImageButton id="ImageButton1" runat="server" ImageUrl="images\mang.gif"></asp:ImageButton></td>
																		<td align="left" valign="top">
																			<asp:ImageButton id="ImageButton2" runat="server" ImageUrl="images\tech.gif"></asp:ImageButton>
																		</td>
																		<td align="left" valign="top">
																			<asp:ImageButton id="ImageButton3" runat="server" ImageUrl="images\personal.gif"></asp:ImageButton></td>
																	</tr>
																</table>
															</td>
														</tr>
														<TR>
															<td style="WIDTH: 35.6%" valign="top" align="left"><font style="FONT-WEIGHT: bold; FONT-SIZE: 10px; COLOR: navy; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif">Course 
																	Name </font>
															</td>
															<td style="WIDTH: 9.88%" valign="top" align="left"><font style="FONT-WEIGHT: bold; FONT-SIZE: 10px; COLOR: navy; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif">Session 
																	Id </font>
															</td>
															<td><font style="FONT-WEIGHT: bold; FONT-SIZE: 10px; COLOR: navy; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif">
																	Session Name </font>
															</td>
															<td style="WIDTH: 15%" valign="top" align="left"><font style="FONT-WEIGHT: bold; FONT-SIZE: 10px; COLOR: navy; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif">Mode
																</font>
															</td>
														</TR>
										</tr>
										<tr>
											<td style="WIDTH: 35.6%" valign="top" align="left">
												<asp:DropDownList id="DropDownList2" runat="server" Width="168px"></asp:DropDownList></td>
											<td style="WIDTH: 8.18%" valign="top" align="left"><asp:textbox id="TextBox2" runat="server" Width="64px"></asp:textbox></td>
											<td>
												<asp:textbox id="Textbox1" runat="server" Width="112px"></asp:textbox></td>
											<td style="WIDTH: 15%" valign="top" align="left"><asp:dropdownlist id="DropDownList1" runat="server" Width="88px" AutoPostBack="True" onselectedindexchanged="DropDownList1_SelectedIndexChanged">
													<asp:ListItem Value="--select--">--select--</asp:ListItem>
													<asp:ListItem Value="0">File</asp:ListItem>
													<asp:ListItem Value="1">Text</asp:ListItem>
												</asp:dropdownlist></td>
										</tr>
									</table>
								</td>
							<tr style="WIDTH: 100%; HEIGHT: 10%">
								<td colSpan="3" style="HEIGHT: 10%"><input id="fdb" type="file" runat="server">
									<asp:Button id="bsave" runat="server" Text="Save" Font-Names="Verdana" Font-Size="9pt" onclick="bsave_Click"></asp:Button>
									<asp:Label id="Label1" runat="server" Font-Size="8pt" Font-Names="Verdana" ForeColor="#0000C0"
										Font-Bold="True"></asp:Label></td>
							</tr>
							<tr style="WIDTH: 100%; HEIGHT: 100%">
								<td colSpan="3"><asp:textbox id="TextBox4" runat="server" Width="528px" TextMode="MultiLine" Rows="15"></asp:textbox></td>
							</tr>
							<tr style="WIDTH: 100%; HEIGHT: 10%">
								<td valign="top" align="left"><asp:imagebutton id="saveb" runat="server" ImageUrl="file:///C:\Inetpub\wwwroot\GreenWich\images\personal.gif"
										Width="24px"></asp:imagebutton><asp:imagebutton id="clearb" runat="server" ImageUrl="images\clear.gif"></asp:imagebutton></td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
			</TD></TR></TBODY></TABLE></TD></TR></TABLE></TD></TR><tr>
				<td><uc1:footer id="Footer1" runat="server"></uc1:footer></td>
			</tr>
			</TABLE></form>
	</body>
</html>
