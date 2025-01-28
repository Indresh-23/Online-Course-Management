<%@ Page language="c#" Inherits="e_learn.Course_Details" CodeFile="Course_Details.aspx.cs" %>
<%@ Register TagPrefix="uc1" TagName="Menus" Src="Menus.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Banner" Src="Banner.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="Footer.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD html 4.0 Transitional//EN" >
<html>
	<head>
		<title>Course_Details</title>
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
								<td style="WIDTH: 0.16%; HEIGHT: 100%" valign="top" align="center"></td>
								<td style="WIDTH: 100%; HEIGHT: 100%" valign="top" align="center">
									<table style="WIDTH: 100%; HEIGHT: 50%" align="center">
										<tr>
											<td valign="top" align="center" width="80%" bgColor="navy" height="5%"><font style="FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: white; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif">Course 
													Information </font>
											</td>
											<td align="right" bgColor="navy"><asp:linkbutton id="LinkButton1" runat="server" CausesValidation="False" Font-Bold="True" Font-Names="Verdana"
													Font-Size="8pt" ForeColor="White" onclick="LinkButton1_Click">Logout</asp:linkbutton></td>
										</tr>
										<tr>
											<td valign="top" align="center" colSpan="2"><asp:datagrid id="DataGrid1" runat="server" PageSize="1" AllowCustomPaging="True" AllowPaging="True"
													AutoGenerateColumns="False" BorderColor="#8080FF" CellPadding="0" cellspacing="1" Width="75%">
													<ItemStyle Font-Size="10pt"></ItemStyle>
													<headerStyle Font-Size="10pt" Font-Bold="True"></headerStyle>
													<Columns>
														<asp:BoundColumn DataField="coursename" headerText="Course Name"></asp:BoundColumn>
														<asp:BoundColumn DataField="courcecat" headerText="Course Category"></asp:BoundColumn>
														<asp:BoundColumn DataField="sessions" headerText="Sessions"></asp:BoundColumn>
													</Columns>
													<PagerStyle Visible="False"></PagerStyle>
												</asp:datagrid></td>
										</tr>
										<tr>
											<td valign="middle" align="center" bgColor="skyblue" height="5%"><font style="FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: black; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif">Session 
													Deatils </font>
											</td>
										</tr>
										<tr>
											<td valign="top" align="center" width="100%"><asp:datagrid id="DataGrid2" runat="server" AutoGenerateColumns="False" Width="261px" onselectedindexchanged="DataGrid2_SelectedIndexChanged">
													<ItemStyle Font-Size="8pt" Font-Names="Verdana" Font-Bold="True"></ItemStyle>
													<headerStyle Font-Bold="True" ForeColor="#0000C0" BorderColor="White"></headerStyle>
													<Columns>
														<asp:BoundColumn DataField="Sessionname" ReadOnly="True" headerText="Topics"></asp:BoundColumn>
														<asp:EditCommandColumn ButtonType="LinkButton" UpdateText="Read" CancelText="Test" EditText="Select"></asp:EditCommandColumn>
													</Columns>
												</asp:datagrid></td>
										</tr>
									</table>
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
