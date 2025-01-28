<%@ Page language="c#" Inherits="e_learn.StaffReg" CodeFile="StaffReg.aspx.cs" %>
<%@ Register TagPrefix="uc1" TagName="Menus" Src="Menus.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Banner" Src="Banner.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="Footer.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD html 4.0 Transitional//EN" >
<html>
	<head>
		<title>StaffReg</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<link href="Style.css" rel="stylesheet" type="text/css">
	</head>
	<body>
		<form id="Form1" method="post" runat="server">
			<P>
				<asp:Label id="Label1" style="Z-INDEX: 123; LEFT: 288px; POSITION: absolute; TOP: 704px" runat="server"
					Width="369px" Visible="False">Label</asp:Label>
				<asp:Button id="Button3" style="Z-INDEX: 124; LEFT: 480px; POSITION: absolute; TOP: 752px" runat="server"
					Font-Bold="True" Width="96px" Text="Return" Height="22px" onclick="Button3_Click"></asp:Button><uc1:banner id="Banner1" runat="server"></uc1:banner></P>
			<P><uc1:menus id="Menus1" runat="server"></uc1:menus></P>
			<asp:Label id="Label11" style="Z-INDEX: 122; LEFT: 192px; POSITION: absolute; TOP: 648px" runat="server"
				Font-Size="Larger" Font-Bold="True">Appointment Date</asp:Label>
			<asp:Label id="Label10" style="Z-INDEX: 121; LEFT: 288px; POSITION: absolute; TOP: 528px" runat="server"
				Font-Size="Larger" Font-Bold="True">ZIP</asp:Label>
			<asp:TextBox id="TextBox10" style="Z-INDEX: 120; LEFT: 376px; POSITION: absolute; TOP: 648px"
				runat="server" Width="224px"></asp:TextBox>
			<asp:TextBox id="TextBox9" style="Z-INDEX: 119; LEFT: 376px; POSITION: absolute; TOP: 608px"
				runat="server" Width="224px"></asp:TextBox>
			<asp:Label id="Label9" style="Z-INDEX: 118; LEFT: 280px; POSITION: absolute; TOP: 608px" runat="server"
				Font-Size="Larger" Font-Bold="True">Email</asp:Label>
			<asp:DropDownList id="DropDownList1" style="Z-INDEX: 117; LEFT: 376px; POSITION: absolute; TOP: 568px"
				runat="server" Width="224px"></asp:DropDownList>
			<asp:Button id="Button2" style="Z-INDEX: 116; LEFT: 400px; POSITION: absolute; TOP: 752px" runat="server"
				Font-Size="Larger" Font-Bold="True" Text="Reset" onclick="Button2_Click"></asp:Button>
			<asp:Button id="Button1" style="Z-INDEX: 115; LEFT: 328px; POSITION: absolute; TOP: 752px" runat="server"
				Font-Size="Larger" Font-Bold="True" Text="Insert" onclick="Button1_Click"></asp:Button>
			<asp:TextBox id="TextBox8" style="Z-INDEX: 114; LEFT: 376px; POSITION: absolute; TOP: 528px"
				runat="server" Font-Size="Larger" Font-Bold="True"></asp:TextBox>
			<asp:TextBox id="TextBox7" style="Z-INDEX: 113; LEFT: 376px; POSITION: absolute; TOP: 488px"
				runat="server" Font-Size="Larger" Font-Bold="True"></asp:TextBox>
			<asp:TextBox id="TextBox6" style="Z-INDEX: 112; LEFT: 376px; POSITION: absolute; TOP: 440px"
				runat="server" Font-Size="Larger" Font-Bold="True"></asp:TextBox>
			<asp:TextBox id="TextBox5" style="Z-INDEX: 111; LEFT: 376px; POSITION: absolute; TOP: 392px"
				runat="server" Font-Size="Larger" Font-Bold="True"></asp:TextBox>
			<asp:TextBox id="TextBox4" style="Z-INDEX: 110; LEFT: 376px; POSITION: absolute; TOP: 344px"
				runat="server" Font-Size="Larger" Font-Bold="True"></asp:TextBox>
			<asp:TextBox id="TextBox3" style="Z-INDEX: 109; LEFT: 376px; POSITION: absolute; TOP: 296px"
				runat="server" Font-Size="Larger" Font-Bold="True"></asp:TextBox>
			<asp:TextBox id="TextBox2" style="Z-INDEX: 108; LEFT: 376px; POSITION: absolute; TOP: 248px"
				runat="server" Font-Size="Larger" Font-Bold="True"></asp:TextBox>
			<asp:Label id="Label8" style="Z-INDEX: 107; LEFT: 264px; POSITION: absolute; TOP: 568px" runat="server"
				Font-Size="Larger" Font-Bold="True">Country</asp:Label>
			<asp:Label id="Label7" style="Z-INDEX: 106; LEFT: 280px; POSITION: absolute; TOP: 488px" runat="server"
				Font-Size="Larger" Font-Bold="True">State</asp:Label>
			<asp:Label id="Label6" style="Z-INDEX: 105; LEFT: 288px; POSITION: absolute; TOP: 440px" runat="server"
				Font-Size="Larger" Font-Bold="True">City</asp:Label>
			<asp:Label id="Label5" style="Z-INDEX: 104; LEFT: 264px; POSITION: absolute; TOP: 392px" runat="server"
				Font-Size="Larger" Font-Bold="True">Address</asp:Label>
			<asp:Label id="Label4" style="Z-INDEX: 103; LEFT: 248px; POSITION: absolute; TOP: 344px" runat="server"
				Font-Size="Larger" Font-Bold="True">Designation</asp:Label>
			<asp:Label id="Label3" style="Z-INDEX: 102; LEFT: 256px; POSITION: absolute; TOP: 248px" runat="server"
				Font-Size="Larger" Font-Bold="True">Staff name</asp:Label>
			<asp:Label id="Label2" style="Z-INDEX: 101; LEFT: 232px; POSITION: absolute; TOP: 304px" runat="server"
				Font-Size="Larger" Font-Bold="True">Select Course</asp:Label>
		</form>
	</body>
</html>
