<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Detail.aspx.cs" Inherits="Shop.Detail" %>

<!DOCTYPE html>
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width,initial-scal=1" />
    <!--上面三个标签必须放在最前面，任何其他内容都必须跟随在其后-->
    <title>京江书店</title>
    <link href="StyleSheet.css" rel="stylesheet" />
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
                <a class="navbar-brand" href="Home/Index">京江书店</a>
            </div>
            <div id="navbar" class="collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="WebForm1.aspx">主页</a></li>  
                    <li><a href="#">购物车</a></li>
                    <li><a href="Login.aspx">登录</a></li>
                    <li><a href="Users/Create">注册</a></li>                                          
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
     <h2>京江书店</h2>

    <asp:Label ID="photo" runat="server"></asp:Label>

<div>
    <hr />
    <dl class="dl-horizontal" style="font-size:25px;">

        <dt>
           名称：
        </dt>

        <dd>
            <asp:Label ID="name" runat="server"></asp:Label>
        </dd>

        <dt>
           价格：
        </dt>

        <dd>
           <asp:Label ID="price" runat="server"></asp:Label> 元
        </dd>  

        <dt>
            种类：
        </dt>

        <dd>
          <asp:Label ID="kind" runat="server"></asp:Label>
        </dd>

    </dl>
</div>
     
<p >
  <asp:Button ID="return" runat="server" Text="返回页面" OnClick="return_Click" /> 
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <asp:Button ID="shopping" runat="server" Text="加入购物车" />
</p>
   
     <hr />
        <footer>
            <p>&copy;- 我的私人书店</p>
        </footer>
 </div>
    <br /><br /><br /><br /><br /><br /><br /><br /><br />
</form>
</body>
</html>























    

