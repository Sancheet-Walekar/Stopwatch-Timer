<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisplayStopwatch.aspx.cs" Inherits="StopwatchDemo.DisplayStopwatch" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <br />
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Label ID="lblmins" runat="server" Font-Size="X-Large" ForeColor="#CC0000" Text="0"></asp:Label>
                    mins&nbsp;
                    <asp:Label ID="lblsecs" runat="server" Font-Size="X-Large" ForeColor="#CC0000" Text="0"></asp:Label>
                    secs
                </ContentTemplate>
            </asp:UpdatePanel>
&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnstart" runat="server" Font-Size="X-Large" OnClick="btnstart_Click" Text="Start" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnstop" runat="server" Font-Size="X-Large" OnClick="btnstop_Click" Text="Stop" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnrestart" runat="server" Font-Size="X-Large" OnClick="btnrestart_Click" Text="Restart" />
            <br />
            <asp:Timer ID="Timer1" runat="server" Enabled="False" Interval="1000" OnTick="Timer1_Tick">
            </asp:Timer>
        </div>
    </form>
</body>
</html>
