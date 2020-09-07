<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="SuaTTSanPham.aspx.cs" Inherits="BTL.SuaTTSanPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="suaTT.css">
    <script src="suaTT.js"></script>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class='table-header'>
            <h2>Sửa thông tin Sản Phẩm </h2>
            <button type="button" id="add" class="btn btn-info" onclick='enableEdit()'>Sửa Sản Phẩm</button>
        </div>


        <div class='edit-form' id='edit-form'>
            <label><b>Mã Sản Phẩm</b></label>
            <asp:TextBox ID="maSP" runat="server" ReadOnly="true"></asp:TextBox>
            <label><b>Tên Sản Phẩm</b></label>
            <asp:TextBox ID="tenSP" runat="server"></asp:TextBox>
            <label><b>Số Lượng</b></label>
            <asp:TextBox ID="soLuong" runat="server"></asp:TextBox>
            <label><b>Đơn Giá Nhập</b></label>
            <asp:TextBox ID="donGiaNhap" runat="server"></asp:TextBox>
             <label><b>Đơn Giá Bán</b></label>
            <asp:TextBox ID="donGiaBan" runat="server"></asp:TextBox>
            <div class='buttons'>
                <asp:Button ID="luu" runat="server" Text="Lưu" class="btn btn-info" onclick="luu_Click"/>
                <button type='button' class='btn btn-danger' onclick='disableEdit()'>Hủy</button>
            </div>
        </div>
</asp:Content>
