<%@ Page language="c#" CodeFile="Modify_Ques.aspx.cs" AutoEventWireup="false" Inherits="e_learn.Modify_Ques" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Banner" Src="Banner.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Menus" Src="Menus.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD html 4.0 Transitional//EN" >
<html xmlns="http://www.w3.org/1999/xhtml" >

	<head>
		<title>Modify_Ques</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<link href="Style.css" rel="stylesheet" type="text/css">
	</head>
	<body >
		<form id="Form1" method="post" runat="server">
			<table style="WIDTH: 100%; HEIGHT: 100%" cellspacing="0" cellPadding="0">
				<tr>
					<td style="WIDTH: 100%; HEIGHT: 100%" valign="top" align="left">
						<table style="WIDTH: 100%; HEIGHT: 100%" cellspacing="0" cellPadding="0">
							<tr>
								<td style="WIDTH: 100%; HEIGHT: 54.25%" colSpan="3"><P>&nbsp;</P>
									<P><uc1:menus id="Menus1" runat="server"></uc1:menus></P>
									<P><uc1:banner id="Banner1" runat="server"></uc1:banner></P>
								</td>
							</tr>
							<tr>
								<td style="WIDTH: 0.53%; HEIGHT: 100%" valign="top" align="center"></td>
								<td style="WIDTH: 100%; HEIGHT: 100%" valign="top" align="center">
									<table style="WIDTH: 100%; HEIGHT: 100%" cellspacing="0" cellpadding="0">
										<tr style="width: 100px; background-color: skyblue">
											<td valign ="top" align="center" colspan ="3"><font style="FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: black; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif">Modify 
													Questionnaires &nbsp;</font></td>
											<td align="left" style="HEIGHT:5%" bordercolor="skyblue"><asp:linkbutton id="LinkButton1" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt">Logout</asp:linkbutton></td>
										</tr>
										<tr>
											<td valign="top" align="left"><asp:imagebutton id="ImageButton3" runat="server" ImageUrl="images\mang.gif"></asp:imagebutton><asp:imagebutton id="ImageButton4" runat="server" ImageUrl="images\tech.gif"></asp:imagebutton><asp:imagebutton id="ImageButton5" runat="server" ImageUrl="images\Personal.gif"></asp:imagebutton></td>
										</tr>
										<tr>
											<td align="center" colSpan="3"><br>
												<table cellspacing="0" cellPadding="0">
													<tr>
														<td style="HEIGHT: 6px"><font style="FONT-WEIGHT: bold; FONT-SIZE: 8pt; COLOR: black; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif">Course 
																Name</font></td>
														<td style="HEIGHT: 6px"><asp:dropdownlist id="DropDownList2" runat="server" AutoPostBack="True" Font-Size="8pt" Font-Names="Verdana"
																Font-Bold="True" Width="184px"></asp:dropdownlist></td>
													</tr>
													<tr>
														<td><font style="FONT-WEIGHT: bold; FONT-SIZE: 8pt; COLOR: black; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif">Session&nbsp;Id</font></td>
														<td><asp:dropdownlist id="Dropdownlist3" runat="server" Font-Size="8pt" Font-Names="Verdana" Font-Bold="True"
																Width="80px"></asp:dropdownlist></td>
													</tr>
													<tr>
														<td style="HEIGHT: 23px"><font style="FONT-WEIGHT: bold; FONT-SIZE: 8pt; COLOR: black; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif">Question 
																Id </font>
														</td>
														<td style="HEIGHT: 23px"><asp:textbox id="Textbox2" runat="server" Width="120px"></asp:textbox>
															<asp:ImageButton id="ImageButton6" runat="server" ImageUrl="images\Display.gif"></asp:ImageButton></td>
													</tr>
													<tr>
														<td><font style="FONT-WEIGHT: bold; FONT-SIZE: 8pt; COLOR: black; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif">Question 
																Description </font>
														</td>
														<td><asp:textbox id="Textbox3" runat="server" Width="267px"></asp:textbox></td>
													</tr>
													<tr>
														<td><font style="FONT-WEIGHT: bold; FONT-SIZE: 8pt; COLOR: black; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif">Option 
																1 </font>
														</td>
														<td><asp:textbox id="Textbox4" runat="server" Width="120px"></asp:textbox></td>
													</tr>
													<tr>
														<td><font style="FONT-WEIGHT: bold; FONT-SIZE: 8pt; COLOR: black; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif">Option 
																2</font>
														</td>
														<td><asp:textbox id="Textbox5" runat="server" Width="120px"></asp:textbox></td>
													</tr>
													<tr>
														<td><font style="FONT-WEIGHT: bold; FONT-SIZE: 8pt; COLOR: black; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif">Option 
																3 </font>
														</td>
														<td><asp:textbox id="Textbox6" runat="server" Width="120px"></asp:textbox></td>
													</tr>
													<tr>
														<td><font style="FONT-WEIGHT: bold; FONT-SIZE: 8pt; COLOR: black; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif">Option 
																4</font>
														</td>
														<td><asp:textbox id="Textbox7" runat="server" Width="120px"></asp:textbox></td>
													</tr>
													<tr>
														<td>
															<P><font style="FONT-WEIGHT: bold; FONT-SIZE: 8pt; COLOR: black; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif">Select&nbsp; 
																	Answer </font>
															</P>
														</td>
														<td><asp:dropdownlist id="DropDownList1" runat="server" Font-Size="8pt" Font-Names="Verdana" Font-Bold="True">
																<asp:ListItem Value="1">1</asp:ListItem>
																<asp:ListItem Value="2">2</asp:ListItem>
																<asp:ListItem Value="3">3</asp:ListItem>
																<asp:ListItem Value="4">4</asp:ListItem>
															</asp:dropdownlist></td>
													</tr>
													<tr>
														<td><asp:imagebutton id="ImageButton1" runat="server" ImageUrl="images\save.gif"></asp:imagebutton></td>
														<td><asp:imagebutton id="ImageButton2" runat="server" ImageUrl="file:///C:\Inetpub\wwwroot\GreenWich\images\personal.gif"
																Width="24px" Height="22px"></asp:imagebutton></td>
														<td></td>
													</tr>
													<tr>
														<td></td>
													</tr>
													<tr>
														<td colSpan="2"><asp:label id="Label2" runat="server" Font-Size="8pt" Font-Names="Verdana" Font-Bold="True"
																ForeColor="Red"></asp:label></td>
													</tr>
												</table>
											</td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td></td>
				</tr>
			</table>
		</form>
	</body>
</html>
