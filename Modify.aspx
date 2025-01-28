<%@ Page language="c#" Inherits="e_learn.Modify" CodeFile="Modify.aspx.cs" %>
<%@ Register TagPrefix="uc1" TagName="Menus" Src="Menus.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Banner" Src="Banner.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="Footer.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD html 4.0 Transitional//EN" >
<html>
	<head>
		<title>Modify</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
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
								<td style="WIDTH: 0.54%; HEIGHT: 100%" valign="top" align="center"></td>
								<td style="WIDTH: 100%; HEIGHT: 100%" valign="top" align="center">
									<table style="WIDTH: 100%; HEIGHT: 100%" cellspacing="0" cellPadding="0">
										<tr borderColor="skyblue" bgColor="skyblue">
											<td style="WIDTH: 45%; HEIGHT: 5%"><asp:label id="Label1" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt">Label</asp:label></td>
											<td style="WIDTH: 100%; HEIGHT: 5%" align="left"><font style="FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: black; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif">Modifications</font>
											</td>
											<td style="HEIGHT: 5%" borderColor="skyblue"><asp:linkbutton id="LinkButton1" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" onclick="LinkButton1_Click">Logout</asp:linkbutton></td>
										</tr>
										<tr>
											<td style="HEIGHT: 19px" valign="top" align="center" colSpan="3"><br>
												<table align="center">
													<TBODY>
														<tr>
												<!--	<td align="center" valign="top"><font style="FONT-WEIGHT: bold; FONT-SIZE: 11px; COLOR: navy; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif"><A href="Modify_Ques.aspx">Modify 
																		Questionnaires</A> </font> -->
											</td>
											</FONT></tr>
										<tr>
											<td align="center"><font style="FONT-WEIGHT: bold; FONT-SIZE: 11px; COLOR: navy; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif"><A href="Modify_Courses.aspx">Modify 
														Courses</A> </font>
											</td>
										</tr>
										<tr>
											<td align="center"><font style="FONT-WEIGHT: bold; FONT-SIZE: 11px; COLOR: navy; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif"><A href="Modify_EmpReg.aspx">Modify 
														Student Course Registrations</A> </font>
											</td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
			</TD></TR>
			<tr>
				<td>
					<uc1:Footer id="Footer1" runat="server"></uc1:Footer>
				</td>
			</tr>
			</TBODY></TABLE>
		</form>
	</body>
</html>
