<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="sanpham.aspx.cs" Inherits="BTL.sanpham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="xemTT.css">
    <script src="xemTT.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
        <div class='table-header'>
            <h2>Quản Lý Sản Phẩm </h2>
            <button type="button" id="add" class="btn btn-info" onclick="addU()">Thêm Sản Phẩm</button>
            <div class='add-container'>
                <div class='add-form'>
                    <label><b>Mã Sản Phẩm</b></label>
                    <%--<input type='text' placeholder='Nhập mã Sản Phẩm' id="txtMaSP">--%>
                    <asp:TextBox ID="txtMaSP" runat="server" placeholder='Nhập mã Sản Phẩm'></asp:TextBox>
                   
                    <label><b>Tên Sản Phẩm</b></label>
                    <%--<input type='text' placeholder='Nhập tên Sản Phẩm'id="txtTenSP">--%>
                    <asp:TextBox ID="txtTenSP" runat="server" placeholder='Nhập tên Sản Phẩm'></asp:TextBox>
                    <label><b>Số lượng</b></label>
                    <%--<input type='text' placeholder='Nhập Số lượng'id=" txtSoLuong">--%>
                    <asp:TextBox ID="txtSoLuong" runat="server" placeholder='Nhập Số lượng'></asp:TextBox>
                    <label><b>Đơn Giá Nhập</b></label>
                    <%--<input type='text' placeholder='Nhập Đơn Giá Nhập'id="txtDonGiaNhap">--%>
                    <asp:TextBox ID="txtDonGiaNhap" runat="server" placeholder='Nhập Đơn Giá Nhập'></asp:TextBox>
                     <label><b>Đơn Giá Bán</b></label>
                    <%--<input type='text' placeholder='Nhập Đơn Giá Bán'id="txtDonGiaBan">--%>
                    <asp:TextBox ID="txtDonGiaBan" runat="server" placeholder='Nhập Đơn Giá Bán'></asp:TextBox>
                    <div class='buttons'>
                        <%--<button type='submit' class='btn btn-info' id="them">Thêm</button>--%>
                        <asp:Button ID="them" runat="server" Text="Thêm" class='btn btn-info' OnClick="them_Click"/>
                        <button type='button' class='btn btn-danger' id='huy'>Hủy</button>
                    </div>
                </div>
            </div>
        </div>
        <div class='table-content'>
            <asp:GridView ID="qlSanPham" runat="server" AutoGenerateColumns="False" GridLines="None" CssClass="table table-hover table-striped">
                <Columns>
                    <asp:BoundField DataField="MaSP" HeaderText="Mã Sản Phẩm" />
                    <asp:BoundField DataField="TenSP" HeaderText="Tên Sản Phẩm" />
                    <asp:BoundField DataField="SoLuong" HeaderText="Số Lượng" />
                    <asp:BoundField DataField="DonGiaNhap" HeaderText="Đơn Giá Nhập" />
                     <asp:BoundField DataField="DonGiaBan" HeaderText="Đơn Giá Bán" />
                    <asp:TemplateField>

                        <ItemTemplate>
                            &nbsp;&nbsp;&nbsp;
                       
                            <asp:LinkButton ID="edit" runat="server" CssClass="btn btn-success" OnClick="edit_Click" CommandArgument='<%#Eval("MaSP") %>' Width="60px">Edit</asp:LinkButton>
                            &nbsp;
                        <asp:LinkButton ID="delete" runat="server" CssClass="btn btn-danger" Onclick="delete_Click" CommandArgument='<%#Eval("MaSP") %>' OnClientClick="return confirm('Bạn có muốn xóa bản ghi này không?');">Delete</asp:LinkButton>
                        </ItemTemplate>

                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </form>
</asp:Content>