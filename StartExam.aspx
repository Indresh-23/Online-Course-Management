<%@ Page language="c#" CodeFile="StartExam.aspx.cs" AutoEventWireup="false" Inherits="e_learn.StartExam" %>
<%@ Register TagPrefix="uc1" TagName="Banner" Src="Banner.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD html 4.0 Transitional//EN" >
<html>
	<head>
		<title>StartExam</title>
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
							<tr style="WIDTH:100%; HEIGHT:20%">
								<td align="left" valign="top">
									<uc1:Banner id="Banner1" runat="server"></uc1:Banner>
								</td>
							</tr>
							<tr style="WIDTH:100%; HEIGHT:5%" bgcolor="skyblue">
								<td align="right">
									<asp:LinkButton id="LinkButton1" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt">Logout</asp:LinkButton></td>
							</tr>
							<tr style="WIDTH:100%; HEIGHT:100%">
								<td align="center" valign="middle">
									<asp:Button id="Button1" runat="server" Text="StartExam" Font-Bold="True" Font-Names="Verdana"
										Font-Size="8pt" Font-Underline="True" BackColor="#FFC080" BorderColor="#FF8000" BorderStyle="Dotted"></asp:Button>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>
