<%@ Page language="c#" Inherits="e_learn.Course" CodeFile="Course.aspx.cs" %>
<%@ Register TagPrefix="uc1" TagName="Banner" Src="Banner.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Menus" Src="Menus.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="Footer.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD html 4.0 Transitional//EN" >
<html>
	<head>
		<title>Course</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR"/>
		<meta content="C#" name="CODE_LANGUAGE"/>
		<meta content="JavaScript" name="vs_defaultClientScript"/>
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema"/>
		<link href="Style.css" rel="stylesheet" type="text/css"/>
	</head>
	<body>
		<form id="Form1" method="post" runat="server">
			<table style="WIDTH: 100%; HEIGHT: 100%" >
				<tr>
					<td style="WIDTH: 100%; HEIGHT: 100%" valign="top" align="left">
						<table style="WIDTH: 100%; HEIGHT: 100%" align="left">
							<tr>
								<td style="WIDTH: 100%; HEIGHT: 20%" align="left" colSpan="2"><uc1:banner id="Banner1" runat="server"></uc1:banner></td>
							</tr>
							<tr>
								<td style="WIDTH: 0.27%; HEIGHT: 100%" valign="top" align="left">
									<P>&nbsp;</P>
								</td>
								<td style="WIDTH: 100%; HEIGHT: 100%" valign="top" align="left">
									<table style="WIDTH: 100%; HEIGHT: 100%">
										<tr>
											<td style="HEIGHT: 54px" valign="top" align="left" colSpan="2"><FONT style="FONT-WEIGHT: bold; FONT-SIZE: 10px; COLOR: black; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif">
													<P><uc1:menus id="Menus1" runat="server"></uc1:menus></P>
													<P>&nbsp;</P>
													<P><FONT style="FONT-WEIGHT: bold; FONT-SIZE: 10px; COLOR: black; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif">Welcome 
															to s</FONT>
													tudents's Greeenwich university,Success of any company,inter alia,depends to 
													large extent on its ability to attract,retain and motivate the work force One 
													of the important aspects of motivating the Students is to add value to them by 
													imparting training on personal,management and technical skills related 
													topics,So for this traing the Greenwich site helps a lot to the Students </FONT>
												</P>
											</td>
										</tr>
										<tr>
											<td style="WIDTH: 21.41%; TEXT-ALIGN: justify" valign="top" align="center">
												<p><FONT style="FONT-WEIGHT: bold; FONT-SIZE: 10px; COLOR: black; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif">The 
														main VISION is to create a traing organisation which focuses on continuous 
														improvement,and provides customised solutions to knowledge development to meet 
														the organistional needs.The MISSION is to devolop,maintain and provide a rich 
														knowledge base for use by all Students.
														<br>
													</FONT><FONT style="FONT-WEIGHT: bold; FONT-SIZE: 11px; COLOR: navy; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif">
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<U> RULES TO LOGIN</U><br>
													</FONT><FONT style="FONT-WEIGHT: bold; FONT-SIZE: 10px; COLOR: black; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif">
														.The Student has to register in order to pursue a cource
														<br>
														.An Student can do only one cource at a time<br>
														.The Student has to complete the course within allotted time
														<br>
														.If the Student fails to complete the cource within the alloted time ,he/she 
														has to contact the administrator fro time extension
														<br>
														.The Student can access the study material of the next level only after 
														qualifying in the test for current level<br>
														.More than 3 attempts at a test is not permitted<br>
														.Once completed,the same course cannot be done twice </FONT>
												</p>
											</td>
											<td valign="top" align="left">
												<table style="WIDTH: 100%; HEIGHT: 100%" cellspacing="0" cellPadding="0">
													<tr>
														<td style="WIDTH: 100%; HEIGHT: 5%" align="center" bgColor="navy" colSpan="3"><FONT style="FONT-WEIGHT: bold; FONT-SIZE: 11px; COLOR: white; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif">Register 
																your Course </FONT>
														</td>
													</tr>
													<tr>
														<td style="HEIGHT: 13px" align="left"><asp:imagebutton id="Managerial" runat="server" Width="80px" ImageUrl="images\mang.gif"></asp:imagebutton><asp:imagebutton id="Technical" runat="server" Width="80px" ImageUrl="images\tech.gif"></asp:imagebutton><asp:imagebutton id="Personal" runat="server" Width="80px" ImageUrl="images\personal.gif"></asp:imagebutton></td>
													</tr>
													<tr>
														<td style="WIDTH: 100%" valign="top" align="center" colSpan="5"><br>
															<br>
															<table style="WIDTH: 100%; HEIGHT: 100%">
																<tr style="WIDTH: 100%; HEIGHT: 80%">
																	<td valign="top" align="center" colspan="2">
																		<table style="WIDTH: 478px; HEIGHT: 264px">
																			<tr>
																				<td  colspan="2" style="WIDTH: 254px"><asp:label id="Label2" runat="server" ForeColor="Red" Font-Bold="True" Font-Names="Verdana"
																						Font-Size="8pt"></asp:label></td>
																			</tr>
																			<tr>
																				<td style="WIDTH: 84px; HEIGHT: 12px"><FONT style="FONT-WEIGHT: bold; FONT-SIZE: 10px; COLOR: navy; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif">Select 
																						Course:</FONT></td>
																				<td style="WIDTH: 161px; HEIGHT: 12px"><asp:dropdownlist id="DropDownList1" runat="server" Width="168px" Font-Bold="True" Font-Names="Verdana"
																						Font-Size="8pt" onselectedindexchanged="DropDownList1_SelectedIndexChanged"></asp:dropdownlist></td>
																				<td valign="top" align="center" rowspan="4" style="HEIGHT: 94px"></td>
																			</tr>
																			<tr>
																				<td style="WIDTH: 84px"><asp:label id="Label1" runat="server" ForeColor="Navy" Font-Bold="True" Font-Names="Verdana"
																						Font-Size="8pt">No Of Sessions</asp:label></td>
																				<td style="WIDTH: 161px"><asp:label id="ns" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt"></asp:label></td>
																			</tr>
																			<tr>
																				<td style="WIDTH: 84px"><FONT style="FONT-WEIGHT: bold; FONT-SIZE: 10px; COLOR: navy; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif">Student 
																						Id</FONT>
																				</td>
																				<td style="WIDTH: 161px"><asp:textbox id="TextBox1" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt"></asp:textbox></td>
																			</tr>
																			<tr>
																				<td style="WIDTH: 84px; HEIGHT: 16px"><FONT style="FONT-WEIGHT: bold; FONT-SIZE: 10px; COLOR: navy; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif">Password</FONT></td>
																				<td style="WIDTH: 161px; HEIGHT: 16px"><asp:textbox id="TextBox2" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt"
																						TextMode="Password"></asp:textbox></td>
																			</tr>
																			<tr>
																				<td style="WIDTH: 84px"></td>
																				<td style="WIDTH: 161px"><asp:imagebutton id="ImageButton2" runat="server" ImageUrl="images\Register.gif"></asp:imagebutton></td>
																			</tr>
																		</table>
																		<asp:datagrid id="DataGrid1" runat="server" Width="310px" cellspacing="1" CellPadding="0" BorderColor="#8080FF"
																			AutoGenerateColumns="False" AllowPaging="True" AllowCustomPaging="True" PageSize="1">
																			<ItemStyle Font-Size="10pt"></ItemStyle>
																			<headerStyle Font-Size="10pt" Font-Bold="True"></headerStyle>
																			<Columns>
																				<asp:BoundColumn DataField="STAFFNAME" headerText="Staff Name"></asp:BoundColumn>
																				<asp:EditCommandColumn ButtonType="LinkButton" UpdateText="Update" headerText="Show Details" CancelText="Cancel"
																					EditText="Details"></asp:EditCommandColumn>
																			</Columns>
																			<PagerStyle Visible="False"></PagerStyle>
																		</asp:datagrid>
																	</td>
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
						</table>
					</td>
				</tr>
				<!--P	</table> --> </TD></TR>
				<tr>
					<td><uc1:footer id="Footer1" runat="server"></uc1:footer></td>
				</tr>
			</table>
		</form>
	</body>
</html>
