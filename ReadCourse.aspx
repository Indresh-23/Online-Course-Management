<%@ Register TagPrefix="uc1" TagName="Banner" Src="Banner.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="Footer.ascx" %>
<%@ Page language="c#" Inherits="e_learn.ReadCourse" CodeFile="ReadCourse.aspx.cs" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD html 4.0 Transitional//EN" >
<html>
	<head>
		<title>ReadCourse</title>
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
							<tr style="WIDTH: 100%; HEIGHT: 20%">
								<td valign="top" align="left"><uc1:banner id="Banner1" runat="server"></uc1:banner></td>
							</tr>
							<tr>
								<td valign="top" align="center">
									<P><asp:hyperlink id="HyperLink1" runat="server" Font-Names="Verdana" Font-Size="10pt" Target="_blank">Click Here to start the course</asp:hyperlink></P>
									<P>&nbsp;</P>
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
