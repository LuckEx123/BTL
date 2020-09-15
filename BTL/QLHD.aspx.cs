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
    public partial class WebForm4 : System.Web.UI.Page
    {
        string sql;
        DataTable tblHD;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["DangNhap"] != null)
            {
                Functions.Connect();
                sql = "SELECT * from tblHDBan";
                tblHD = Functions.GetDataToTable(sql);
                QLHD.DataSource = tblHD;
                QLHD.DataBind();
                QLHD.UseAccessibleHeader = true;
                QLHD.HeaderRow.TableSection = TableRowSection.TableHeader;
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
            sql = "INSERT INTO tblHDBan VALUES (N'" + txtMaHD.Text.Trim() + "',N'" + txtMaNhanVien.Text.Trim() + "',N'" + txtMaSP.Text.Trim() + "',N'" + txtTenSP.Text.Trim() + "',N'" + txtSoLuong.Text.Trim() + "','" + txtDonGia.Text.Trim() + "','" + txtNgayBan.Text.Trim() + "','" + txtThanhTien.Text + "')";
            Functions.RunSQL(sql);
            Response.Redirect("QLHD.aspx");
        }



        protected void delete_Click(object sender, EventArgs e)
        {
            string id = (sender as LinkButton).CommandArgument;
            sql = "DELETE tblHDBan WHERE MaHD=N'" + id + "'";
            Functions.RunSQL(sql);
            Response.Redirect("QLHD.aspx");
        }
        protected void huy_Click(object sender, EventArgs e)
        {
            
        }

    }
}
