<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangNhap.aspx.cs" Inherits="BTL.DangNhap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700">
    <title></title>
    <style>
        body {
            font-family:  'Poppins', sans-serif;
            background-color: #99CC00;
        }

        .logIn {
            width: 30%;
            box-sizing: border-box;
            background-color: white;
            padding: 10px;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%,-50%);
            border-radius:2%;
        }

        .uname,.password,.submit, #cancel {
            width: 100%;
            padding: 10px;
            margin: 5px 0;
            box-sizing: border-box;
        }
        .lb{
            display:block;
            margin:10px 0;
        }
        .submit {
            background-color: #4CAF50;
            border: none;
            color: white;
        }

        #cancel {
            background-color: #f44336;
            border: none;
            color: white;
        }

        img {
            width: 50%
        }

        .img {
            text-align: center;
        }
    </style>
</head>
<body>
    <form class="logIn" runat="server">
        <div class='img'>
            <img src="https://cdn.iconscout.com/icon/free/png-512/avatar-370-456322.png">
        </div>
        <label><b>User Name</b></label>
        <%--<input type='text' placeholder="Please enter your User Name" id='uName'>--%>
        <asp:TextBox ID="uName" runat="server" placeholder="Nhập tên đăng nhập" CssClass="uname"></asp:TextBox>
        <label><b>Password</b></label>
        <asp:TextBox ID="pw" runat="server" placeholder="Nhập mật khẩu" CssClass="password" TextMode="Password"></asp:TextBox>
        <%--<input type='password' placeholder="Please enter your password" id='pw'>--%>
        <asp:CheckBox ID="checkbox" runat="server" /><label>Ghi nhớ đăng nhập</label>
        <asp:Label ID="lb" runat="server" Text="" ForeColor="Red" CssClass="lb"></asp:Label>
        <asp:Button ID="submit" runat="server" Text="Đăng nhập" CssClass="submit" OnClick="submit_Click"/>
        <%--<input type="submit" name='submit' id='submit'>--%>
        <button type='button' id='cancel'>Hủy</button>
    </form>
</body>
</html>
