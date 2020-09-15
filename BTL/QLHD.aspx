<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="QLHD.aspx.cs" Inherits="BTL.WebForm4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="xemTT.css">
    <script src="xemTT.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class='table-header'>
        <h2>Quản lý hóa đơn </h2>
        <button type="button" id="add" class="btn btn-info" onclick="addU()">Thêm hóa đơn</button>
        <div class='add-container'>
            <div class='add-form'>
                
                <label><b>Mã Hóa Đơn</b></label>
                <%--<input type='text' placeholder='Nhập mã khách hàng' id="txtMaKhach">--%>
                <asp:TextBox ID="txtMaHD" runat="server" placeholder='Nhập mã hóa đơn'></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Mã hóa đơn không được để trống" ControlToValidate="txtMaHD" ValidationGroup="add" ForeColor="Red"></asp:RequiredFieldValidator>
                
                <label><b>Mã Nhân Viên</b></label>
                <%--<input type='text' placeholder='Nhập tên khách hàng'id="txtTenKhach">--%>
                <asp:TextBox ID="txtMaNhanVien" runat="server" placeholder='Nhập mã nhân viên'></asp:TextBox>
                <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationExpression="^\D+(?!\d)$" ControlToValidate="txtTenKhach" ErrorMessage="Tên khách hàng không được chứa kí tự số " ValidationGroup="add" ForeColor="Red"></asp:RegularExpressionValidator>--%>
                <br>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Mã nhân viên không được để trống" ControlToValidate="txtMaNhanVien" ValidationGroup="add" ForeColor="Red"></asp:RequiredFieldValidator>
                
                <label><b>Mã Sản Phẩm</b></label>
                <%--<input type='text' placeholder='Nhập địa chỉ'id=" txtDiaChi">--%>
                <asp:TextBox ID="txtMaSP" runat="server" placeholder='Nhập  mã sản phẩm'></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Mã sản phẩm không được để trống" ControlToValidate="txtMaSP" ValidationGroup="add" ForeColor="Red"></asp:RequiredFieldValidator>
               
                <label><b>Tên Sản Phẩm</b></label>
                <%--<input type='text' placeholder='Nhập số điện thoại'id="mtbDienThoai">--%>
                <asp:TextBox ID="txtTenSP" runat="server" placeholder='Nhập tên sản phẩm'></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Tên sản phẩm không được để trống" ControlToValidate="txtTenSP" ValidationGroup="add" ForeColor="Red"></asp:RequiredFieldValidator>
                

                 <label><b>Số lượng</b></label>
                <%--<input type='text' placeholder='Nhập mã khách hàng' id="txtMaKhach">--%>
                <asp:TextBox ID="txtSoLuong" runat="server" placeholder='Nhập số lượng'></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Số lượng không được để trống" ControlToValidate="txtSoLuong" ValidationGroup="add" ForeColor="Red"></asp:RequiredFieldValidator>
                
                <label><b>Đơn giá</b></label>
                <%--<input type='text' placeholder='Nhập tên khách hàng'id="txtTenKhach">--%>
                <asp:TextBox ID="txtDonGia" runat="server" placeholder='Nhập đơn giá'></asp:TextBox>
                <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationExpression="^\D+(?!\d)$" ControlToValidate="txtTenKhach" ErrorMessage="Tên khách hàng không được chứa kí tự số " ValidationGroup="add" ForeColor="Red"></asp:RegularExpressionValidator>--%>
                <br>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Đơn giá không được để trống" ControlToValidate="txtDonGia" ValidationGroup="add" ForeColor="Red"></asp:RequiredFieldValidator>
                
                <label><b>Ngày Bán</b></label>
                <%--<input type='text' placeholder='Nhập địa chỉ'id=" txtDiaChi">--%>
                <asp:TextBox ID="txtNgayBan" runat="server" placeholder='Nhập ngày bán'></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Ngày bán không được để trống" ControlToValidate="txtNgayBan" ValidationGroup="add" ForeColor="Red"></asp:RequiredFieldValidator>
               
                <label><b>Thành tiền</b></label>
                <%--<input type='text' placeholder='Nhập số điện thoại'id="mtbDienThoai">--%>
                <asp:TextBox ID="txtThanhTien" runat="server" placeholder='Nhập trường thành tiền'></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Thành tiền không được để trống" ControlToValidate="txtThanhTien" ValidationGroup="add" ForeColor="Red"></asp:RequiredFieldValidator>
                

                <div class='buttons'>
                    <%--<button type='submit' class='btn btn-info' id="them">Thêm</button>--%>
                    <asp:Button ID="them" ValidationGroup="add" runat="server" Text="Thêm" class='btn btn-info' OnClick="them_Click" />
                    <button type='button' class='btn btn-danger' id='huy'>Hủy</button>
                </div>
            </div>
        </div>
    </div>
    <div class='table-content'>
         <asp:GridView ID="QLHD" runat="server" AutoGenerateColumns="False" GridLines="None" CssClass="table table-hover table-striped">
            <Columns>
                <asp:BoundField DataField="MaHD" HeaderText="Mã Hóa Đơn" />
                <asp:BoundField DataField="MaNhanVien" HeaderText="Mã nhân viên" />
                <asp:BoundField DataField="MaSP" HeaderText="Mã sản phẩm" />
                <asp:BoundField DataField="TenSP" HeaderText="Tên sản phẩm" />
                <asp:BoundField DataField="SoLuong" HeaderText="Số lượng" />
                <asp:BoundField DataField="DonGia" HeaderText="Đơn giá" />
                <asp:BoundField DataField="NgayBan" HeaderText="Ngày bán" />
                <asp:BoundField DataField="ThanhTien" HeaderText="Thành tiền" />
                <asp:TemplateField>

                    <ItemTemplate>
                        &nbsp;&nbsp;&nbsp;
                            
                        &nbsp;
                        <asp:LinkButton ID="delete" runat="server" CssClass="btn btn-danger" OnClick="delete_Click" CommandArgument='<%#Eval("MaHD") %>' OnClientClick="return confirm('Bạn có muốn xóa bản ghi này không?');">Delete</asp:LinkButton>
                    </ItemTemplate>

                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
