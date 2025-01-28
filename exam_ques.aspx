<%@ Page language="c#" Inherits="e_learn.exam_ques" CodeFile="exam_ques.aspx.cs" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Banner" Src="Banner.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Menus" Src="Menus.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD html 4.0 Transitional//EN" >
<html>
	<head>
		<title>exam_ques</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<link href="Style.css" rel="stylesheet" type="text/css">
	</head>
	<body>
		<form id="Form1" method="post" runat="server">
			<table style="WIDTH: 100%; HEIGHT: 100%" cellspacing="0" cellPadding="0">
				<tr>
					<td style="WIDTH: 100%; HEIGHT: 100%" valign="top" align="left">
						<table style="WIDTH: 100%; HEIGHT: 100%" cellspacing="0" cellPadding="0">
							<tr>
								<td style="WIDTH: 100%; HEIGHT: 21.24%" colSpan="3"><P><uc1:banner id="Banner1" runat="server"></uc1:banner></P>
									<P><uc1:menus id="Menus1" runat="server"></uc1:menus></P>
								</td>
							</tr>
							<tr>
								<td style="WIDTH: 14.81%; HEIGHT: 100%" valign="top" align="center"></td>
								<td style="WIDTH: 100%; HEIGHT: 100%" valign="top" align="center">
									<table style="WIDTH: 100%; HEIGHT: 20px" cellspacing="0" cellPadding="0">
										<tr bgColor="skyblue">
											<td valign="top" align="center" colSpan="3" style="WIDTH: 688px"><font style="FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: black; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif">Staff 
													Details&nbsp;</font></td>
										</tr>
										<tr>
											<td align="right" style="HEIGHT:5%" borderColor="skyblue"><asp:linkbutton id="LinkButton1" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" onclick="LinkButton1_Click">Logout</asp:linkbutton></td>
										</tr>
										<tr>
											<td align="center" colSpan="1" style="WIDTH: 688px"><br>
												<br>
												<br>
												<table cellspacing="0" cellPadding="0" style="WIDTH: 842px; HEIGHT: 235px">
													<tr>
														<td valign="top" align="center" colSpan="2" style="WIDTH: 736px; HEIGHT: 190px"><asp:datagrid id="DataGrid1" runat="server" PageSize="1" AllowCustomPaging="True" AllowPaging="True"
																AutoGenerateColumns="False" BorderColor="#8080FF" CellPadding="0" cellspacing="1" Width="848px" Height="45px">
																<ItemStyle Font-Size="10pt"></ItemStyle>
																<headerStyle Font-Size="10pt" Font-Bold="True"></headerStyle>
																<Columns>
																	<asp:BoundColumn DataField="Staffname" headerText="Staff Name"></asp:BoundColumn>
																	<asp:BoundColumn DataField="Desig" headerText="Designation"></asp:BoundColumn>
																	<asp:BoundColumn DataField="Addr" headerText="Address"></asp:BoundColumn>
																	<asp:BoundColumn DataField="city" headerText="City"></asp:BoundColumn>
																	<asp:BoundColumn DataField="State" headerText="State"></asp:BoundColumn>
																	<asp:BoundColumn DataField="Zip" headerText="Zip"></asp:BoundColumn>
																	<asp:BoundColumn DataField="country" headerText="Contry"></asp:BoundColumn>
																	<asp:BoundColumn DataField="Emailid" headerText="Email Id"></asp:BoundColumn>
																	<asp:BoundColumn DataField="A_Date" headerText="Joined Date"></asp:BoundColumn>
																</Columns>
																<PagerStyle Visible="False"></PagerStyle>
															</asp:datagrid></td>
													</tr>
													<TR>
														<td align="left" style="WIDTH:736px; HEIGHT:1.79%" borderColor="skyblue"></td>
													</TR>
												</table>
												<br>
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
