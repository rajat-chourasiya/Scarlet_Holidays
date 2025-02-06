<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Scarlet Holidays</title>
        <style type="text/css">
    body {
    background-color: #f4f4f4;
    color: #5a5656;
    font-family: 'Open Sans', Arial, Helvetica, sans-serif;
    font-size: 16px;
    line-height: 1.5em;
    }
    a { text-decoration: none; }
    h1 { font-size: 1em; }
    h1, p {
    margin-bottom: 10px;
    }
    strong {
    font-weight: bold;
    }
    .uppercase { text-transform: uppercase; }

    /* ---------- LOGIN ---------- */
    #login {
    margin: 50px auto;
    width: 300px;
    }
    form fieldset input[type="text"], input[type="password"] {
    background-color: #e5e5e5;
    border: none;
    border-radius: 3px;
    -moz-border-radius: 3px;
    -webkit-border-radius: 3px;
    color: #5a5656;
    font-family: 'Open Sans', Arial, Helvetica, sans-serif;
    font-size: 14px;
    height: 50px;
    outline: none;
    padding: 0px 10px;
    width: 280px;
    -webkit-appearance:none;
    }
    form fieldset input[type="submit"] {
    background-color: #008dde;
    border: none;
    border-radius: 3px;
    -moz-border-radius: 3px;
    -webkit-border-radius: 3px;
    color: #f4f4f4;
    cursor: pointer;
    font-family: 'Open Sans', Arial, Helvetica, sans-serif;
    height: 50px;
    text-transform: uppercase;
    width: 300px;
    -webkit-appearance:none;
    }
    form fieldset a {
    color: #5a5656;
    font-size: 10px;
    }
    form fieldset a:hover { text-decoration: underline; }
    .btn-round {
    background-color: #5a5656;	
	border-radius: 50%;
    -moz-border-radius: 50%;
    -webkit-border-radius: 50%;
    color: #f4f4f4;
    display: block;
    font-size: 12px;
    height: 50px;
    line-height: 50px;
    margin: 30px 125px;
    text-align: center;
    text-transform: uppercase;
    width: 50px;
    }
	.profile-img {
      border-bottom-left-radius:50%;
      border-bottom-right-radius:50%;
      border-top-left-radius:50%;
      border-top-right-radius:50%;
      display:block;
      height:96px;
      margin:0 auto 10px;
      width:96px;
      }
    .facebook-before {
    background-color: #0064ab;
    border-radius: 3px 0px 0px 3px;
    -moz-border-radius: 3px 0px 0px 3px;
    -webkit-border-radius: 3px 0px 0px 3px;
    color: #f4f4f4;
    display: block;
    float: left;
    height: 50px;
    line-height: 50px;
    text-align: center;
    width: 50px;
    }
    .facebook {
    background-color: #0079ce;
    border: none;
    border-radius: 0px 3px 3px 0px;
    -moz-border-radius: 0px 3px 3px 0px;
    -webkit-border-radius: 0px 3px 3px 0px;
    color: #f4f4f4;
    cursor: pointer;
    height: 50px;
    text-transform: uppercase;
    width: 250px;
    }
    .twitter-before {
    background-color: #189bcb;
    border-radius: 3px 0px 0px 3px;
    -moz-border-radius: 3px 0px 0px 3px;
    -webkit-border-radius: 3px 0px 0px 3px;
    color: #f4f4f4;
    display: block;
    float: left;
    height: 50px;
    line-height: 50px;
    text-align: center;
    width: 50px;
    }
    .twitter {
    background-color: #1bb2e9;
    border: none;
    border-radius: 0px 3px 3px 0px;
    -moz-border-radius: 0px 3px 3px 0px;
    -webkit-border-radius: 0px 3px 3px 0px;
    color: #f4f4f4;
    cursor: pointer;
    height: 50px;
    text-transform: uppercase;
    width: 250px;
    }
    </style>

</head>
<body>
    <div id="login">
    <h1><strong>Welcome to Scarlet Holidays</strong> Please login.</h1>
    <form id="form1" runat="server">
    <fieldset>
  
    <p><asp:TextBox ID="user_txt" runat="server" required value="Username" onBlur="if(this.value=='')this.value='Username'" onFocus="if(this.value=='Username')this.value='' "></asp:TextBox></p>
    <p><asp:TextBox ID="pwd_txt" runat="server" TextMode="Password"  required value="Password" onBlur="if(this.value=='')this.value='Password'" onFocus="if(this.value=='Password')this.value='' "></asp:TextBox></p>      
    <asp:Label ID="ErrorMsg" runat="server" Text="" ForeColor="red" Font-Size="Small"></asp:Label>
    <p><a href="#">Forgot Password?</a></p>
    <asp:Button ID="LoginBtn" runat="server" Text="Sign In" OnClick="LoginBtn_Click" />
    </fieldset>
    </form>
   <span class="btn-round">Or</span>
    <!--
    <p>
    <a class="facebook-before"></a>
    <button class="facebook">Login Using Facbook</button>
    </p>-->
   
    <p>
    <a class="twitter-before"></a>
    <button class="twitter"> << Bach to Home</button>
    </p>
   
    </div> 
   
</body>
</html>
