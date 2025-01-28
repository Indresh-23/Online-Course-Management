<%@ Register TagPrefix="uc1" TagName="Footer" Src="Footer.ascx" %>
<%@ Page language="c#" Inherits="e_learn.admin_home" CodeFile="admin_home.aspx.cs" %>
<%@ Register TagPrefix="uc1" TagName="Banner" Src="Banner.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Menus" Src="Menus.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD html 4.0 Transitional//EN" >
<html>
	<head>
		<title>admin_home</title>
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
								<td style="WIDTH: 100%; HEIGHT: 26.16%" colSpan="2"><uc1:banner id="Banner1" runat="server"></uc1:banner></td>
							</tr>
							<tr>
								<td style="WIDTH: 3.45%; HEIGHT: 100%" valign="top" align="center"></td>
								<td style="WIDTH: 100%; HEIGHT: 100%" valign="top" align="center">
									<table style="WIDTH: 100%; HEIGHT: 100%" cellspacing="0" cellPadding="0">
										<tr>
											<td colspan="3" style="HEIGHT: 3px"><uc1:menus id="Menus1" runat="server"></uc1:menus>
											</td>
										</tr>
										<tr borderColor="skyblue" bgColor="skyblue">
											<td style="WIDTH: 45%; HEIGHT: 5%">
												<P><asp:label id="Label1" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt">Label</asp:label></P>
											</td>
											<td style="WIDTH: 100%; HEIGHT: 5%" align="left"><font style="FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: black; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif">Admin 
													Page </font>
											</td>
											<td style="HEIGHT: 5%" borderColor="skyblue"><asp:linkbutton id="LinkButton1" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" onclick="LinkButton1_Click">Logout</asp:linkbutton></td>
										</tr>
										<tr>
											<td style="HEIGHT: 19px" valign="top" align="center" colSpan="3"><br>
												<table>
													<TBODY>
														<tr>
															<td><font style="FONT-WEIGHT: bold; FONT-SIZE: 11px; COLOR: navy; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif"><A href="add_course.aspx"><A href="new_admin.aspx">Add 
																			An Administrator</A> </font>
															</td>
															</FONT></tr>
														<tr>
															<td align="center"><font style="FONT-WEIGHT: bold; FONT-SIZE: 11px; COLOR: navy; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif"><A href="add_course.aspx">Add 
																		New Course</A> </font>
															</td>
														</tr>
														<tr>
															<td align="center"><font style="FONT-WEIGHT: bold; FONT-SIZE: 11px; COLOR: navy; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif"><a href="Modify.aspx">Modify</a>
																</font>
															</td>
														</tr>
														<tr>
															<td align="center"><font style="FONT-WEIGHT: bold; FONT-SIZE: 11px; COLOR: navy; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif"><A href="StaffReg.aspx">Staff 
																		Appointment </A></font>
															</td>
														</tr>
														<tr>
															<td align="center"><font style="FONT-WEIGHT: bold; FONT-SIZE: 11px; COLOR: navy; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif"><A href="exam_ques.aspx">Staff 
																		Details </A></font>
															</td>
														</tr>
													<!--	<tr>
															<td align="center"><font style="FONT-WEIGHT: bold; FONT-SIZE: 11px; COLOR: navy; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif"><A href="Session_Details.aspx">
																		Add Sessions</A> </font>
															</td>
														</tr> -->
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
					<td>
						<uc1:Footer id="Footer1" runat="server"></uc1:Footer>
					</td>
				</tr>
				</TBODY></table>
		</form>
	</body>
</html>
