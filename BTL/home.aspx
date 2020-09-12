<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="BTL.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class='home-content'>
        <h5><b>HỌC VIỆN NÔNG NGHIỆP VIỆT NAM</b></h5>
        <h5>KHOA CÔNG NGHỆ THÔNG TIN</h5>
        <img src="https://3.bp.blogspot.com/-xGJgjxvHO5U/XYcMOd6w_OI/AAAAAAAAABc/Slse_ghC7jMEJgtbfvE0FzM-8NUxfGpFwCK4BGAYYCw/s1600/FITA.png" class='img'>
        <h5><b>HỌC PHẦN:  PHÁT TRIỂN ỨNG DỤNG WEB 2</b></h5>
        <h5><b>ĐỀ TÀI:  HỆ THỐNG QUẢN LÝ CỬA HÀNG BÁN MỸ PHẨM</b></h5>
        <table class='table'>
            <tr>
                <th>STT</th>
                <th>Họ Tên</th>
                <th>MSV</th>
            </tr>
            <tr>
                <td>1</td>
                <td>Trần Thị Lệ Thu</td>
                <td>621081</td>
            </tr>
            <tr>
                <td>2</td>
                <td>Trần Mạnh Quân</td>
                <td>621053</td>
            </tr>
            <tr>
                <td>3</td>
                <td>Nguyễn Thị Kim Tiến</td>
                <td>621059</td>
            </tr>
        </table>
    </div>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style>
        .home-content {
            font-family: "Times New Roman" !important;
            text-align: center;
            padding: 20px 20px 0 20px;
        }

        .img {
            width: 10%;
            margin: 15px 0;
        }

        .home-content table {
            margin-top: 15px;
            font-size: 1.1em;
        }
    </style>
</asp:Content>
