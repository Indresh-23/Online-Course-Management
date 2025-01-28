<%@ Page language="c#" Inherits="e_learn.Modify_EmpReg" CodeFile="Modify_EmpReg.aspx.cs" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Menus" Src="Menus.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Banner" Src="Banner.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD html 4.0 Transitional//EN" >
<html>
	<head>
		<title>Modify_EmpReg</title>
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
						<table style="WIDTH: 100%; HEIGHT: 100%" align="left">
							<TBODY>
								<tr>
									<td style="WIDTH: 100%; HEIGHT: 14.26%" valign="top" align="left" colSpan="2">
										<P><uc1:banner id="Banner1" runat="server"></uc1:banner></P>
										<P><uc1:menus id="Menus1" runat="server"></uc1:menus></P>
									</td>
								</tr>
								<tr>
									<td style="WIDTH: 0.1%" valign="top" align="left"></td>
									<td valign="top" align="left" width="100%">
										<table style="WIDTH: 620px; HEIGHT: 34.75%" width="620" align="left">
											<TBODY>
												<tr width="100%">
													<td style="HEIGHT: 19px" valign="top" align="left"></td>
													<TD style="HEIGHT: 19px" valign="middle" align="right"><asp:linkbutton id="LinkButton1" runat="server" Font-Size="8pt" Font-Names="Verdana" Font-Bold="True">Logout</asp:linkbutton></TD>
												</tr>
												<tr>
													<td align="center" style="HEIGHT: 22px">
														<asp:Label id="Label4" runat="server" Font-Bold="True" ForeColor="#0000C0" Font-Names="Verdana"
															Font-Size="10pt" Width="560px">Extension of Student  Course </asp:Label>
													</td>
												</tr>
												<tr>
													<td style="HEIGHT: 22px">
													</td>
												</tr>
												<tr>
													<td width="100%" height="36" style="HEIGHT: 36px">
														<font style="FONT-WEIGHT: bold; FONT-SIZE: 10px; COLOR: navy; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif">
															<asp:label id="Label2" runat="server" Width="112px">Student Id</asp:label><asp:textbox id="TextBox1" runat="server"></asp:textbox></font>
													</td>
												</tr>
												<tr>
													<td style="HEIGHT: 24px"><font style="FONT-WEIGHT: bold; FONT-SIZE: 10px; COLOR: navy; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif"><asp:label id="Label3" runat="server" Width="112px">Extension / Days</asp:label><asp:textbox id="TextBox2" runat="server"></asp:textbox></font>
														<asp:Button id="Button1" runat="server" Text="Update" onclick="Button1_Click"></asp:Button>
													</td>
												</tr>
												<tr>
													<td>
														<font style="FONT-WEIGHT: bold; FONT-SIZE: 10px; COLOR: navy; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif">
															<!-- <asp:DataGrid id="DataGrid1" Font-Size="10px" ForeColor="#333399" Font-Name="Verdana" runat="server"
																Width="512px"></asp:DataGrid> -->
															<font SIZE="4">
																<asp:label id="Label1" runat="server" Font-Bold="True" ForeColor="Teal" Font-Names="Verdana"
																	Font-Size="8pt"></asp:label></font> </font>
													</td>
												</tr>
									</td>
								</tr>
							</TBODY>
						</table>
					</td>
				</tr>
			</table>
			</TD></TR>
			<tr>
				<td>
					<uc1:Footer id="Footer1" runat="server"></uc1:Footer></td>
			</tr>
			</TBODY></TABLE></form>
	</body>
</html>
