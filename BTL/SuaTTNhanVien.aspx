<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="SuaTTNhanVien.aspx.cs" Inherits="BTL.SuaTTNhanVien" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="suaTT.css">
    <script src="suaTT.js"></script>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class='table-header'>
            <h2>Sửa thông tin Nhân Viên </h2>
            <button type="button" id="add" class="btn btn-info" onclick='enableEdit()'>Sửa Nhân Viên</button>
        </div>

        <div class='edit-form' id='edit-form'>
            <label><b>Mã Nhân Viên</b></label>
            <asp:TextBox ID="maNV" runat="server" ReadOnly="true"></asp:TextBox>
            <label><b>Tên Nhân Viên</b></label>
            <asp:TextBox ID="tenNV" runat="server"></asp:TextBox>
            <label><b>Địa Chỉ</b></label>
            <asp:TextBox ID="diachi" runat="server"></asp:TextBox>
            <label><b>Giới tính</b></label>
            <asp:DropDownList ID="gt" runat="server">
                <asp:ListItem Text="Nam" Value="Nam"></asp:ListItem>
                <asp:ListItem Text="Nữ" Value="Nu"></asp:ListItem>
            </asp:DropDownList>
            <br />
            <label><b>Số điện thoại</b></label>
            <asp:TextBox ID="sdt" runat="server"></asp:TextBox>
            <label><b>Ngày Sinh</b></label>
            <asp:TextBox ID="ngaysinh" runat="server"></asp:TextBox>
            <div class='buttons'>
                <asp:Button ID="luu" runat="server" Text="Lưu" class="btn btn-info" OnClick="luu_Click" />
                <button type='button' class='btn btn-danger' onclick='disableEdit()'>Hủy</button>
            </div>
        </div>
</asp:Content>
