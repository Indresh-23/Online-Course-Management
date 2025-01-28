<%@ Register TagPrefix="uc1" TagName="Footer" Src="Footer.ascx" %>
<%@ Page language="c#" Inherits="e_learn.EmpReg" CodeFile="EmpReg.aspx.cs" %>
<%@ Register TagPrefix="uc1" TagName="Banner" Src="Banner.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Menus" Src="Menus.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD html 4.0 Transitional//EN" >
<html>
	<head>
		<title>EmpReg</title>
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
							<tr width="100%">
								<td style="WIDTH: 100%; HEIGHT: 20%" valign="top" align="left" colSpan="2">
									<P><uc1:banner id="Banner1" runat="server"></uc1:banner></P>
									<P><uc1:menus id="Menus1" runat="server"></uc1:menus></P>
								</td>
							</tr>
							<tr>
								<td style="WIDTH: 4px" valign="top" align="left"></td>
								<td valign="top" align="left">
									<table style="WIDTH: 100%; HEIGHT: 100%">
										<tr>
											<td style="HEIGHT: 26px" valign="top" align="left" colSpan="2"><font style="FONT-WEIGHT: bold; FONT-SIZE: 13px; COLOR: gray; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif; TEXT-ALIGN: justify; TEXT-DECORATION: underline">Student 
													Registration </font>
											</td>
										</tr>
										<tr>
											<td style="WIDTH: 129px"><font style="FONT-WEIGHT: bold; FONT-SIZE: 10px; COLOR: black; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif">Student 
													Id:&nbsp;&nbsp;&nbsp;&nbsp;</font></td>
											<td><asp:textbox id="eid" Width="144px" Runat="server">GU</asp:textbox><font style="FONT-SIZE: 8px; TEXT-TRANSFORM: uppercase; COLOR: red; FONT-FAMILY: Verdana, Sans-Serif">r</font>
												<asp:requiredfieldvalidator id="RequiredFieldValidator1" runat="server" Width="56px" ErrorMessage="please fill "
													ControlToValidate="eid" Font-Size="8pt" Font-Names="Verdana"></asp:requiredfieldvalidator></td>
										</tr>
										<tr>
											<td style="WIDTH: 129px"><font style="FONT-WEIGHT: bold; FONT-SIZE: 10px; COLOR: black; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif">First 
													Name:</font></td>
											<td><asp:textbox id="fn" Width="144px" Runat="server"></asp:textbox><font style="FONT-SIZE: 8px; TEXT-TRANSFORM: uppercase; COLOR: red; FONT-FAMILY: Verdana, Sans-Serif">r</font>
												<asp:requiredfieldvalidator id="Requiredfieldvalidator10" runat="server" Width="65px" ErrorMessage="please fill "
													ControlToValidate="fn" Font-Size="8pt" Font-Names="Verdana"></asp:requiredfieldvalidator></td>
										</tr>
										<tr>
											<td style="WIDTH: 129px"><font style="FONT-WEIGHT: bold; FONT-SIZE: 10px; COLOR: black; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif">Last 
													Name:</font></td>
											<td><asp:textbox id="ln" Width="144px" Runat="server"></asp:textbox>&nbsp;<FONT style="FONT-WEIGHT: bold; FONT-SIZE: 10px; COLOR: black; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif">Middle 
													Name:</FONT>
												<asp:textbox id="mn" Width="56px" Runat="server"></asp:textbox></td>
										</tr>
										<tr>
											<td style="WIDTH: 129px"><font style="FONT-WEIGHT: bold; FONT-SIZE: 10px; COLOR: black; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif">Father 
													Name:</font></td>
											<td><asp:textbox id="desig" Width="144px" Runat="server"></asp:textbox><font style="FONT-SIZE: 8px; TEXT-TRANSFORM: uppercase; COLOR: red; FONT-FAMILY: Verdana, Sans-Serif">r</font>
												<asp:requiredfieldvalidator id="Requiredfieldvalidator2" runat="server" Width="65px" ErrorMessage="please fill "
													ControlToValidate="desig" Font-Size="8pt" Font-Names="Verdana"></asp:requiredfieldvalidator></td>
										</tr>
										<tr>
											<td style="WIDTH: 129px; HEIGHT: 28px"><font style="FONT-WEIGHT: bold; FONT-SIZE: 10px; COLOR: black; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif">Address:</font></td>
											<td style="HEIGHT: 28px"><asp:textbox id="addr" Width="144px" Runat="server"></asp:textbox><font style="FONT-SIZE: 8px; TEXT-TRANSFORM: uppercase; COLOR: red; FONT-FAMILY: Verdana, Sans-Serif">r</font>
												<asp:requiredfieldvalidator id="Requiredfieldvalidator3" runat="server" Width="65px" ErrorMessage="please fill "
													ControlToValidate="addr" Font-Size="8pt" Font-Names="Verdana"></asp:requiredfieldvalidator></td>
										</tr>
										<tr>
											<td style="WIDTH: 129px; HEIGHT: 25px"><font style="FONT-WEIGHT: bold; FONT-SIZE: 10px; COLOR: black; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif">City:</font></td>
											<td style="HEIGHT: 25px"><asp:textbox id="city" Width="144px" Runat="server"></asp:textbox><FONT style="FONT-SIZE: 8px; TEXT-TRANSFORM: uppercase; COLOR: red; FONT-FAMILY: Verdana, Sans-Serif">r</FONT>
												<asp:requiredfieldvalidator id="Requiredfieldvalidator8" runat="server" Width="65px" ErrorMessage="please fill "
													ControlToValidate="city" Font-Size="8pt" Font-Names="Verdana"></asp:requiredfieldvalidator></td>
										</tr>
										<tr>
											<td style="WIDTH: 129px; HEIGHT: 27px"><font style="FONT-WEIGHT: bold; FONT-SIZE: 10px; COLOR: black; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif">State:</font></td>
											<td style="HEIGHT: 27px"><font style="FONT-SIZE: 8px; TEXT-TRANSFORM: uppercase; COLOR: red; FONT-FAMILY: Verdana, Sans-Serif"></font>
												<asp:TextBox id="state" runat="server" Width="145px"></asp:TextBox>&nbsp;<font style="FONT-WEIGHT: bold; FONT-SIZE: 10px; COLOR: black; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif">Zip:&nbsp;&nbsp;</font><asp:textbox id="zip" Width="89px" Runat="server"></asp:textbox>
											</td>
										</tr>
										<tr>
											<td style="WIDTH: 129px; HEIGHT: 7px"><font style="FONT-WEIGHT: bold; FONT-SIZE: 10px; COLOR: black; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif">Country:</font></td>
											<td style="HEIGHT: 7px"><font style="FONT-SIZE: 8px; TEXT-TRANSFORM: uppercase; COLOR: red; FONT-FAMILY: Verdana, Sans-Serif">
													<asp:DropDownList id="sel" runat="server" Width="152px">
														<asp:ListItem Value="select">Select</asp:ListItem>
														<asp:ListItem Value="USA">USA</asp:ListItem>
														<asp:ListItem Value="INDIA">INDIA</asp:ListItem>
														<asp:ListItem Value="AFRICA">AFRICA</asp:ListItem>
													</asp:DropDownList>r</font>
												<asp:requiredfieldvalidator id="Requiredfieldvalidator4" runat="server" Width="65px" ErrorMessage="please fill "
													ControlToValidate="sel" Font-Size="8pt" Font-Names="Verdana"></asp:requiredfieldvalidator></td>
										</tr>
										<tr>
											<td style="WIDTH: 129px"><font style="FONT-WEIGHT: bold; FONT-SIZE: 10px; COLOR: black; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif">Email 
													Id:</font></td>
											<td><asp:textbox id="Email" Width="144px" Runat="server"></asp:textbox><font style="FONT-SIZE: 8px; TEXT-TRANSFORM: uppercase; COLOR: red; FONT-FAMILY: Verdana, Sans-Serif">r</font>
												<asp:requiredfieldvalidator id="Requiredfieldvalidator5" runat="server" Width="65px" ErrorMessage="please fill "
													ControlToValidate="Email" Font-Size="8pt" Font-Names="Verdana"></asp:requiredfieldvalidator></td>
										</tr>
										<tr>
											<td style="WIDTH: 129px"><font style="FONT-WEIGHT: bold; FONT-SIZE: 10px; COLOR: black; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif">Password:</font></td>
											<td><asp:textbox id="pwd" Width="144px" Runat="server" TextMode="Password"></asp:textbox><font style="FONT-SIZE: 8px; TEXT-TRANSFORM: uppercase; COLOR: red; FONT-FAMILY: Verdana, Sans-Serif">r</font>
												<asp:requiredfieldvalidator id="Requiredfieldvalidator6" runat="server" Width="144px" ErrorMessage="please fill "
													ControlToValidate="pwd" Font-Size="8pt" Font-Names="Verdana"></asp:requiredfieldvalidator></td>
										</tr>
										<tr>
											<td style="WIDTH: 129px; HEIGHT: 38px"><font style="FONT-WEIGHT: bold; FONT-SIZE: 10px; COLOR: black; FONT-STYLE: normal; FONT-FAMILY: Verdana, Sans-Serif">Confirm 
													Password:</font></td>
											<td style="HEIGHT: 38px"><asp:textbox id="cpwd" Width="144px" Runat="server" TextMode="Password"></asp:textbox><font style="FONT-SIZE: 8px; TEXT-TRANSFORM: uppercase; COLOR: red; FONT-FAMILY: Verdana, Sans-Serif">r</font>
												<asp:requiredfieldvalidator id="RequiredFieldValidator7" runat="server" ErrorMessage="confirm" ControlToValidate="cpwd"
													Font-Size="8pt" Width="45px" Font-Names="Verdana"></asp:requiredfieldvalidator>
												<asp:RegularExpressionValidator id="RegularExpressionValidator1" runat="server" ControlToValidate="Email" ErrorMessage="RegularExpressionValidator"
													ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
												<asp:CompareValidator id="CompareValidator1" runat="server" ErrorMessage="password incorrect" ControlToValidate="cpwd"
													ControlToCompare="pwd" Font-Size="8pt" Width="128px" Font-Names="Verdana"></asp:CompareValidator></td>
										</tr>
										<tr>
											<td style="WIDTH: 129px"></td>
											<td align="left"><asp:imagebutton id="ImageButton1" runat="server" ImageAlign="TextTop" ImageUrl="file:///C:\Inetpub\wwwroot\GreenWich\images\register.gif"></asp:imagebutton>&nbsp;</td>
											<!-- <asp:imagebutton id="ImageButton2" runat="server" ImageAlign="TextTop" ImageUrl="images\continue.gif"></asp:imagebutton></td>-->
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
