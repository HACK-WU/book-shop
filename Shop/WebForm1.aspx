<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Shop.Views.Books.WebForm1" %>

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
<body runat="server">
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
                    <asp:Button ID="search" runat="server" Text="搜索"/>
                </div>
            </div><!--/.nav-collpase-->
        </div>
    </nav>
 <div class="container body-content">     
   <div class="jumbotron">
    <div class="container ">
        <asp:Button ID="wenxue" runat="server" Text="文学" OnClick="wenxue_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="shenghuo" runat="server" Text="生活" OnClick="shenghuo_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="计算机" runat="server" Text="计算机" OnClick="计算机_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="jingying" runat="server" Text="经营" OnClick="jingying_Click" />
        <div class="starter-template">
            <h1 style="font-family: 微软雅黑; font-size: 85px">京&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 江&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;      书&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;      店</h1>
            <p class="lead" style="font-size: 40px">
               这&nbsp;&nbsp; 是&nbsp; 一&nbsp; 家&nbsp; 属&nbsp; 于&nbsp; 大&nbsp; 学&nbsp; 生&nbsp; 的&nbsp; 书&nbsp; 店
                <br />您&nbsp; 的&nbsp; 满&nbsp; 意&nbsp; 是&nbsp; 我&nbsp; 最&nbsp; 大&nbsp; 的&nbsp; 幸&nbsp; 福
            </p>
        </div>
    </div><!--/.container-->
   </div><!--/.jumbotron--> 
    
  <div class="row">
    <div class="col-md-4">
      <a href="Detail.aspx?id=1"><h2 style="color:green;">C++程序教程</h2>
        <p>
           &nbsp;&nbsp;&nbsp;&nbsp;<img alt="图片显示失败" src="Image/C.jpg" width="191" height="201"/>
        </p></a>
    <p>&nbsp;&nbsp;&nbsp;<a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301865">了解更多 &raquo;</a></p>
    </div>
    <div class="col-md-4">
        <h2>ASP程序教程</h2>
        <p><a href="~/WebForm1.aspx" ><img alt="图片显示失败" src="Image/ASP程序教程.jpg" width="191" height="201" /></a></p>
        <p><a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301866">了解更多 &raquo;</a></p>
    </div>
    <div class="col-md-4">
        <h2>数据结构</h2>
        <p>  <img alt="图片显示失败" src="Image/C.jpg" width="191" height="201" /></p>
        <p><a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301867">了解更多 &raquo;</a></p>
    </div>
</div>
    <!--jQuery(neccessary for BootStrap's JavaScript plugins-->
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <!--Include all comiled plugins(blow),or include individual files as needed-->
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

   
    <asp:GridView ID="GridView1" runat="server"></asp:GridView>
    <asp:Label ID="mess" runat="server" ></asp:Label>
    

     <hr />
        <footer>
            <p>&copy;- 我的私人书店</p>
        </footer>
 </div>
    <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
</form>
</body>
</html>
