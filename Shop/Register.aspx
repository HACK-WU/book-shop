<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Shop.Register" %>
<!DOCTYPE html>
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width,initial-scal=1" />
    <!--上面三个标签必须放在最前面，任何其他内容都必须跟随在其后-->
    <title>用户注册</title>
    <link href="StyleSheet2.css" rel="stylesheet" />
    <!--BootStrap-->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" />
</head>
<html xmlns="http://www.w3.org/1999/xhtml">
<body>
<form runat="server">
    <nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbr-toggle collapse"
                        data-toggle="collapse" data-target="#navbar"
                        aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">Project name</a>
            </div>
            <div id="navbar" class="collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="#">home</a></li>
                    <li><a href="#about">About</a></li>
                    <li><a href="#contact">Contact</a></li>
                    <li><a href="#">购物车</a></li>
                    <li><a href="#">登录</a></li>
                    <li><a href="#">注册</a></li>                                        
                </ul>
               <div class="navbar-form navbar-right" role="search" >
                    <div class="form-group">
                        <asp:TextBox ID="searchText" class="form-control" placeholder="serach" runat="server"/>
                    </div>
                    <asp:Button ID="serach" runat="server" Text="搜索"/>
                </div>
            </div><!--/.nav-collpase-->
        </div>
    </nav>
    <div class="container body-content">


<h2>用户登录</h2>

    <div class="form-horizontal">
        <h1>用户登录</h1>
        <hr />
       <h2>ID号</h2>
        <div class="form-group">          
            <div class="col-md-10">
               <asp:TextBox ID="id" runat="server" Height="36px" Width="292px" ></asp:TextBox>
            </div>
        </div>

         <h2>密码</h2>
        <div class="form-group">          
            <div class="col-md-10">
               <asp:TextBox ID="TextBox1" runat="server" Height="36px" Width="292px" TextMode="Password" ></asp:TextBox>
            </div>
        </div>

        

        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
               <h2><asp:Button ID="login" runat="server" Height="36px" Text="登录" /></h2>
            </div>
        </div>
    </div>


<div>
   
</div>
   
    <!--jQuery(neccessary for BootStrap's JavaScript plugins-->
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <!--Include all comiled plugins(blow),or include individual files as needed-->
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <hr />
        <footer>
            <p>&copy;- 我的私人书店</p>
        </footer>
 </div>
</form>
</body>
</html>
