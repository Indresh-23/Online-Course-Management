<%@ Register TagPrefix="uc1" TagName="Banner" Src="Banner.ascx" %>
<%@ Page language="c#" CodeFile="Examination.aspx.cs" AutoEventWireup="false" Inherits="e_learn.Examination" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD html 4.0 Transitional//EN" >
<html>
	<head>
		<title>Examination</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<link href="Style.css" rel="stylesheet" type="text/css">
	</head>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<table style="WIDTH: 100%; HEIGHT: 100%">
				<tr>
					<td style="WIDTH: 100%; HEIGHT: 100%" valign="top" align="left">
						<table style="WIDTH: 100%; HEIGHT: 100%">
							<tr style="WIDTH: 100%; HEIGHT: 20%">
								<td style="WIDTH: 100%; HEIGHT: 20%" valign="top" align="left"><uc1:banner id="Banner1" runat="server"></uc1:banner></td>
							</tr>
							<tr bgColor="navy">
								<td>
									<table style="WIDTH: 100%; HEIGHT: 5%">
										<tr style="WIDTH: 100%; HEIGHT: 5%">
											<td align="left"><asp:label id="Label1" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt"
													ForeColor="White">Label</asp:label></td>
											<td align="right" ><asp:linkbutton id="LinkButton1" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt"
													ForeColor="White">Logout</asp:linkbutton></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td style="WIDTH: 100%; HEIGHT: 100%" valign="middle" align="center">
									<table style="WIDTH: 50%; HEIGHT: 50%">
										<tr>
											<td bgColor="skyblue" colSpan="2"><font style="FONT-WEIGHT: bold; FONT-SIZE: 10px; COLOR: black; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif"><asp:label id="Label3" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt">Label</asp:label></font></td>
										</tr>
										<tr>
											<td style="WIDTH: 63px"><asp:label id="Question" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt"
													ForeColor="#C00000">Question</asp:label></td>
											<td><asp:label id="Label2" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt">Label</asp:label></td>
										</tr>
										<tr>
											<td colSpan="2"><br>
												<asp:radiobuttonlist id="RadioButtonList1" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt"></asp:radiobuttonlist></td>
										</tr>
										<tr>
											<td style="WIDTH: 63px"></td>
											<td><asp:imagebutton id="ImageButton1" runat="server" ImageUrl="file:///C:\Inetpub\wwwroot\GreenWich\images\personal.gif"
													Height="14px" Width="24px"></asp:imagebutton></td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
			&nbsp;
		</form>
	</body>
</html>
