using BTL.Class;
using System;
using System.Collections.Generic;
using System.Data;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL
{
    public partial class NhanVien : System.Web.UI.Page
    {

            string sql;
            DataTable tblSP;
            protected void Page_Load(object sender, EventArgs e)
            {
            if (Session["DangNhap"] != null)
            {
                Functions.Connect();
                sql = "SELECT * from tblNhanVien";
                tblSP = Functions.GetDataToTable(sql);
                qlnhanvien.DataSource = tblSP;
                qlnhanvien.DataBind();
                qlnhanvien.UseAccessibleHeader = true;
                qlnhanvien.HeaderRow.TableSection = TableRowSection.TableHeader;
            }
            else
            {
                Response.Redirect("DangNhap.aspx");
            }
            }

            protected void them_Click(object sender, EventArgs e)
            {
            //string checkkey = "SELECT * from tblKhach where MaKhach=N'" + txtMaKhach.Text.Trim() + "'";
            //if (Functions.CheckKey(checkkey))
            //{
            //    Response.Write("<script>alert('Mã khách hàng đã tồn tại');</script>");
            //}
            DateTime ngaysinh1 = DateTime.Parse(ngaysinh.Text);
           
            string gioitinh= gt.SelectedValue;
            sql = "INSERT INTO tblNhanVien Values (N'" + txtMaNhanVien.Text.Trim() + "',N'" + txtTenNV.Text.Trim() + "',N'" + gioitinh + "',N'" + txtDiaChi.Text + "',N'" + mtbDienThoai.Text + "',N'" + ngaysinh1 + "')";
                Functions.RunSQL(sql);
                Response.Redirect("NhanVien.aspx");
            }

            protected void edit_Click(object sender, EventArgs e)
            {
                string id = (sender as LinkButton).CommandArgument;
                Response.Redirect("SuaTTNhanVien.aspx?maNV=" + id + "");
            }

            protected void delete_Click(object sender, EventArgs e)
            {
                string id = (sender as LinkButton).CommandArgument;
                sql = "DELETE tblNhanVien WHERE MaNhanVien=N'" + id + "'";
                Functions.RunSQL(sql);
                Response.Redirect("NhanVien.aspx");
            }
        }
}