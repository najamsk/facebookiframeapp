<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="fbnajam._default" %>

<%@ Register Assembly="Facebook.Web" Namespace="Facebook.Web" TagPrefix="cc2" %>

<%@ Register Assembly="Facebook.Web" Namespace="Facebook.Web.FbmlControls" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xmlns:fb="http://www.facebook.com/2008/fbml">
<head runat="server">
    <title></title>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js" type="text/javascript"></script>
    

<%--    <script type="text/javascript">
        $(document).ready(function () {
            FB_RequireFeatures(["CanvasUtil"], function () {

                FB.XdComm.Server.init("xd_receiver.htm?v=2");

                var failed;
                try {
                    /*FB.CanvasClient.setSizeToContent();*/
                }
                catch (e) {
                    failed = true;
                    try {
                        FB.CanvasClient.setCanvasHeight("1500px");
                    }
                    catch (e) {

                    }
                }

                if (!failed) {
                    FB.CanvasClient.startTimerToSizeToContent();
                }

            });
        });

        function resizeContent() {
            FB.CanvasClient.setSizeToContent();
            FB.CanvasClient.startTimerToSizeToContent();
        }      
    </script>--%>
</head>
<body>
    <form id="form1" runat="server">
    <script src="http://static.ak.facebook.com/js/api_lib/v0.4/FeatureLoader.js.php" type="text/javascript"></script>
    
    <div>
        <asp:Literal ID="Literal1" runat="server"></asp:Literal> <br />
      <%-- Hello, <%= Api.Users.GetInfo().name %>--%>
        <cc1:ProfilePic uid="100000959016556" linked="True" width="300" height="400" runat="server" Xfbml="True" FacebookLogo="False"></cc1:ProfilePic>
    </div>
    </form>
    <script type="text/javascript">
        FB_RequireFeatures(["XFBML"], function () {
            FB.Facebook.init('540b51ce47415b31b09f1f5d92147370', "channel/xd_receiver.htm");
        });
    </script>
    
</body>
</html>
