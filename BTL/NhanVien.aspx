<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="NhanVien.aspx.cs" Inherits="BTL.NhanVien" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="xemTT.css">
    <script src="xemTT.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class='table-header'>
            <h2>Quản lý Nhân viên </h2>
            <button type="button" id="add" class="btn btn-info" onclick="addU()">Thêm nhân viên</button>
            <div class='add-container'>
                <div class='add-form'>
                    <label><b>Mã Nhân Viên</b></label>
                    <%--<input type='text' placeholder='Nhập mã nhân viên' id="txtMaNhanVien">--%>
                    <asp:TextBox ID="txtMaNhanVien" runat="server" placeholder='Nhập mã nhân viên'></asp:TextBox>                  
                    <label><b>Tên nhân viên</b></label>
                    <%--<input type='text' placeholder='Nhập tên nhân viên'id="txtTenNV">--%>
                    <asp:TextBox ID="txtTenNV" runat="server" placeholder='Nhập tên nhân viên'></asp:TextBox>
                    <label><b>Giới tính</b></label>
                    <asp:DropDownList ID="gt" runat="server">
                        <asp:ListItem Text="Nam" Value="Nam"></asp:ListItem>
                        <asp:ListItem Text="Nữ" Value="Nu"></asp:ListItem>

                    </asp:DropDownList>
                   
                    <label><b>Địa chỉ</b></label>
                    <%--<input type='text' placeholder='Nhập địa chỉ'id=" txtDiaChi">--%>
                    <asp:TextBox ID="txtDiaChi" runat="server" placeholder='Nhập địa chỉ'></asp:TextBox>
                    <label><b>Số điện thoại</b></label>
                    <%--<input type='text' placeholder='Nhập số điện thoại'id="mtbDienThoai">--%>
                    <asp:TextBox ID="mtbDienThoai" runat="server" placeholder='Nhập số điện thoại'></asp:TextBox>
                      <label><b>Ngay Sinh</b></label>
                    <%--<input type='text' placeholder='Nhập ngày sinh'id="ngaysinh">--%>
                    <asp:TextBox ID="ngaysinh"  runat="server" placeholder='Nhập ngày sinh' DataFormatString="{0:dd/MMM/yyyy}" SortExpression="Date"/></asp:TextBox>
                    <div class='buttons'>
                        <%--<button type='submit' class='btn btn-info' id="them">Thêm</button>--%>
                        <asp:Button ID="them" runat="server" Text="Thêm" class='btn btn-info' OnClick="them_Click"/>
                        <button type='button' class='btn btn-danger' id='huy'>Hủy</button>
                    </div>
                </div>
            </div>
        </div>
        <div class='table-content'>
            <asp:GridView ID="qlnhanvien" runat="server" AutoGenerateColumns="False" GridLines="None" CssClass="table table-hover table-striped">
                <Columns>
                    <asp:BoundField DataField="MaNhanVien" HeaderText="Mã nhân viên" />
                    <asp:BoundField DataField="TenNhanVien" HeaderText="Tên nhân viên" />
                    <asp:BoundField DataField="GioiTinh" HeaderText="Giới Tính" />
                     <asp:BoundField DataField="DiaChi" HeaderText="Địa Chỉ" />
                    <asp:BoundField DataField="SDT" HeaderText="Số Điện Thoại" />
                    <asp:BoundField DataField="NgaySinh" HeaderText="Ngày Sinh" />
                    <asp:TemplateField>

                        <ItemTemplate>
                            &nbsp;&nbsp;&nbsp;
                       
                            <asp:LinkButton ID="edit" runat="server" CssClass="btn btn-success" OnClick="edit_Click" CommandArgument='<%#Eval("MaNhanVien") %>' Width="60px">Edit</asp:LinkButton>
                            &nbsp;
                        <asp:LinkButton ID="delete" runat="server" CssClass="btn btn-danger" Onclick="delete_Click" CommandArgument='<%#Eval("MaNhanVien") %>' OnClientClick="return confirm('Bạn có muốn xóa bản ghi này không?');">Delete</asp:LinkButton>
                        </ItemTemplate>

                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
</asp:Content>
