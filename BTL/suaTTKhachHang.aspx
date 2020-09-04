<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="suaTTKhachHang.aspx.cs" Inherits="BTL.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="suaTT.css">
    <script src="suaTT.js"></script>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
        <div class='table-header'>
            <h2>Sửa thông tin khách hàng </h2>
            <button type="button" id="add" class="btn btn-info" onclick='enableEdit()'>Sửa khách hàng</button>
        </div>


        <div class='edit-form' id='edit-form'>
            <label><b>Mã Khách Hàng</b></label>
            <asp:TextBox ID="makhach" runat="server" ReadOnly="true"></asp:TextBox>
            <label><b>Tên Khách Hàng</b></label>
            <asp:TextBox ID="tenkhach" runat="server"></asp:TextBox>
            <label><b>Địa chỉ</b></label>
            <asp:TextBox ID="diachi" runat="server"></asp:TextBox>
            <label><b>Số điện thoại</b></label>
            <asp:TextBox ID="sdt" runat="server"></asp:TextBox>
            <div class='buttons'>
                <asp:Button ID="luu" runat="server" Text="Lưu" class="btn btn-info" onclick="luu_Click"/>
                <button type='button' class='btn btn-danger' onclick='disableEdit()'>Hủy</button>
            </div>
        </div>
    </form>
</asp:Content>
