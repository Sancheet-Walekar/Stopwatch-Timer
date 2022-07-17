<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisplayTimer.aspx.cs" Inherits="StopwatchDemo.DisplayTimer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 42px;
            margin-bottom: 4px;
        }
        .auto-style2 {
            width: 434px;
            height: 31px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lbltime" runat="server" Font-Size="X-Large" Text="Enter Time(mins) : " Font-Names="Segoe Print" ForeColor="#660033"></asp:Label>
&nbsp;<asp:TextBox ID="txttime" runat="server" Font-Size="X-Large" Width="182px" BorderColor="#660066" Height="30px"></asp:TextBox>
            <br />
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <fieldset class="auto-style2">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lbltimer" runat="server" Font-Size="X-Large" ForeColor="#CC0000" Font-Names="Calibri"></asp:Label>
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                </Triggers>
            </asp:UpdatePanel>
                </fieldset>
            <br />
            <br />
            <asp:Button ID="btnstart" runat="server" CssClass="auto-style1" Font-Size="X-Large" Text="Start" BackColor="#CCCCFF" BorderColor="#660066" BorderStyle="Ridge" Font-Names="Segoe Print" ForeColor="#660066" Height="42px" OnClick="btnstart_Click" />
            <asp:Button ID="btnreset" runat="server" CssClass="auto-style1" Font-Size="X-Large" Text="Reset" BackColor="#CCCCFF" BorderColor="#660066" BorderStyle="Ridge" Font-Names="Segoe Print" ForeColor="#660066" Height="42px" OnClick="btnreset_Click" />
            <asp:Button ID="btnstop" runat="server" CssClass="auto-style1" Font-Size="X-Large" Text="Stop" BackColor="#CCCCFF" BorderColor="#660066" BorderStyle="Ridge" Font-Names="Segoe Print" ForeColor="#660066" Height="42px" OnClick="btnstop_Click" Enabled="False" />
            <br />
            <asp:Timer ID="Timer1" runat="server" Enabled="False" Interval="1000" OnTick="Timer1_Tick">
            </asp:Timer>
        </div>
    </form>
</body>
</html>
