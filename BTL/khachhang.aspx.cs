using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BTL.Class;
using System.Data;
using System.Data.SqlClient;

namespace BTL
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string sql;
        DataTable tblKH;
        protected void Page_Load(object sender, EventArgs e)
        {
            Functions.Connect();
            sql = "SELECT * from tblKhach";
            tblKH = Functions.GetDataToTable(sql);
            khachhang.DataSource = tblKH;
            khachhang.DataBind();
            khachhang.UseAccessibleHeader = true;
            khachhang.HeaderRow.TableSection = TableRowSection.TableHeader;
        }

        protected void them_Click(object sender, EventArgs e)
        {
            //string checkkey = "SELECT * from tblKhach where MaKhach=N'" + txtMaKhach.Text.Trim() + "'";
            //if (Functions.CheckKey(checkkey))
            //{
            //    Response.Write("<script>alert('Mã khách hàng đã tồn tại');</script>");
            //}
            sql = "INSERT INTO tblKhach VALUES (N'" + txtMaKhach.Text.Trim() + "',N'" + txtTenKhach.Text.Trim() + "',N'" + txtDiaChi.Text.Trim() + "','" + mtbDienThoai.Text + "')";
            Functions.RunSQL(sql);
            Response.Redirect("khachhang.aspx");
        }

        protected void edit_Click(object sender, EventArgs e)
        {
            string id = (sender as LinkButton).CommandArgument;
            Response.Redirect("suaTTKhachHang.aspx?makhach=" + id + "");
        }

        protected void delete_Click(object sender, EventArgs e)
        {
            string id = (sender as LinkButton).CommandArgument;
            sql = "DELETE tblKhach WHERE MaKhach=N'" + id + "'";
            Functions.RunSQL(sql);
            Response.Redirect("khachhang.aspx");
        }
    }
}