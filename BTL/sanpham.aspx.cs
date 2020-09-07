using BTL.Class;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL
{
    public partial class sanpham : System.Web.UI.Page
    {
        string sql;
        DataTable tblSP;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["DangNhap"] != null)
            {
                Functions.Connect();
                sql = "SELECT * from tblSanPham";
                tblSP = Functions.GetDataToTable(sql);
                qlSanPham.DataSource = tblSP;
                qlSanPham.DataBind();
                qlSanPham.UseAccessibleHeader = true;
                qlSanPham.HeaderRow.TableSection = TableRowSection.TableHeader;
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
            sql = "INSERT INTO tblSanPham Values (N'" + txtMaSP.Text.Trim() + "',N'" + txtTenSP.Text.Trim() + "',N'" + float.Parse(txtSoLuong.Text) + "',N'" + float.Parse(txtDonGiaNhap.Text) + "',N'" + float.Parse(txtDonGiaBan.Text) + "','"+""+ "','" + "" + "')";
            Functions.RunSQL(sql);
            Response.Redirect("sanpham.aspx");
        }

        protected void edit_Click(object sender, EventArgs e)
        {
            string id = (sender as LinkButton).CommandArgument;
            Response.Redirect("SuaTTSanPham.aspx?maSP=" + id + "");
        }

        protected void delete_Click(object sender, EventArgs e)
        {
            string id = (sender as LinkButton).CommandArgument;
            sql = "DELETE tblSanPham WHERE MaSP=N'" + id + "'";
            Functions.RunSQL(sql);
            Response.Redirect("sanpham.aspx");
        }
    }
}