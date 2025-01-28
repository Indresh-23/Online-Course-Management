<%@ Page language="c#" Inherits="e_learn.Welcome" CodeFile="Welcome.aspx.cs" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Menus" Src="Menus.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Banner" Src="Banner.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD html 4.0 Transitional//EN" >
<html>
	<head>
		<title>Welcome</title>
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
						<table style="WIDTH:100%; HEIGHT:100%" align="left">
							<tr>
								<td colspan="2" style="WIDTH:100%; HEIGHT:20%" align="left" valign="top">
									<uc1:Banner id="Banner1" runat="server"></uc1:Banner>
									<uc1:Menus id="Menus1" runat="server"></uc1:Menus></td>
							</tr>
							<tr>
								<td align="left" valign="top" style="WIDTH:1.39%"></td>
								<td width="100%" align="left" valign="top">
									<table width="100%" align="left" style="WIDTH: 620px; HEIGHT: 100%">
										<tr width="100%">
											<td align="left" valign="top" style="HEIGHT: 19px">
												<asp:Label id="Label1" runat="server" Font-Bold="True" ForeColor="Teal" Font-Names="Verdana"
													Font-Size="8pt"></asp:Label></td>
											<td style="HEIGHT: 19px" align="right" valign="middle">
												<asp:LinkButton id="LinkButton1" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" onclick="LinkButton1_Click">Logout</asp:LinkButton></td>
										</tr>
										<tr>
											<td colspan="2" width="100%" height="100%"></td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td>
						<uc1:Footer id="Footer1" runat="server"></uc1:Footer></td>
				</tr>
			</table>
		</form>
	</body>
</html>
