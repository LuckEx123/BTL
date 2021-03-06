﻿<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="khachhang.aspx.cs" Inherits="BTL.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="xemTT.css">
    <script src="xemTT.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class='table-header'>
        <h2>Quản lý khách hàng </h2>
        <button type="button" id="add" class="btn btn-info" onclick="addU()">Thêm khách hàng</button>
        <div class='add-container'>
            <div class='add-form'>
                <label><b>Mã Khách Hàng</b></label>
                <%--<input type='text' placeholder='Nhập mã khách hàng' id="txtMaKhach">--%>
                <asp:TextBox ID="txtMaKhach" runat="server" placeholder='Nhập mã khách hàng'></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Mã khách hàng không được để trống" ControlToValidate="txtMaKhach" ValidationGroup="add" ForeColor="Red"></asp:RequiredFieldValidator>
                <label><b>Tên Khách Hàng</b></label>
                <%--<input type='text' placeholder='Nhập tên khách hàng'id="txtTenKhach">--%>
                <asp:TextBox ID="txtTenKhach" runat="server" placeholder='Nhập tên khách hàng'></asp:TextBox>
                <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationExpression="^\D+(?!\d)$" ControlToValidate="txtTenKhach" ErrorMessage="Tên khách hàng không được chứa kí tự số " ValidationGroup="add" ForeColor="Red"></asp:RegularExpressionValidator>--%>
                <br>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Tên khách hàng không được để trống" ControlToValidate="txtTenKhach" ValidationGroup="add" ForeColor="Red"></asp:RequiredFieldValidator>
                <label><b>Địa chỉ</b></label>
                <%--<input type='text' placeholder='Nhập địa chỉ'id=" txtDiaChi">--%>
                <asp:TextBox ID="txtDiaChi" runat="server" placeholder='Nhập địa chỉ'></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Địa chỉ không được để trống" ControlToValidate="txtDiaChi" ValidationGroup="add" ForeColor="Red"></asp:RequiredFieldValidator>
                <label><b>Số điện thoại</b></label>
                <%--<input type='text' placeholder='Nhập số điện thoại'id="mtbDienThoai">--%>
                <asp:TextBox ID="mtbDienThoai" runat="server" placeholder='Nhập số điện thoại'></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Số điện thoại không được để trống" ControlToValidate="mtbDienThoai" ValidationGroup="add" ForeColor="Red"></asp:RequiredFieldValidator>
                <div class='buttons'>
                    <%--<button type='submit' class='btn btn-info' id="them">Thêm</button>--%>
                    <asp:Button ID="them" ValidationGroup="add" runat="server" Text="Thêm" class='btn btn-info' OnClick="them_Click" />
                    <button type='button' class='btn btn-danger' id='huy'>Hủy</button>
                </div>
            </div>
        </div>
    </div>
    <div class='table-content'>
        <asp:GridView ID="khachhang" runat="server" AutoGenerateColumns="False" GridLines="None" CssClass="table table-hover table-striped">
            <Columns>
                <asp:BoundField DataField="MaKhach" HeaderText="Mã Khách Hàng" />
                <asp:BoundField DataField="TenKhach" HeaderText="Tên Khách Hàng" />
                <asp:BoundField DataField="DiaChi" HeaderText="Địa Chỉ" />
                <asp:BoundField DataField="SDT" HeaderText="Số Điện Thoại" />
                <asp:TemplateField>

                    <ItemTemplate>
                        &nbsp;&nbsp;&nbsp;
                       
                            <asp:LinkButton ID="edit" runat="server" CssClass="btn btn-success" OnClick="edit_Click" CommandArgument='<%#Eval("MaKhach") %>' Width="60px">Edit</asp:LinkButton>
                        &nbsp;
                        <asp:LinkButton ID="delete" runat="server" CssClass="btn btn-danger" OnClick="delete_Click" CommandArgument='<%#Eval("MaKhach") %>' OnClientClick="return confirm('Bạn có muốn xóa bản ghi này không?');">Delete</asp:LinkButton>
                    </ItemTemplate>

                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
