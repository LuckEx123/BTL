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
    public partial class SuaTTSanPham : System.Web.UI.Page
    {
        string sql;
        protected void Page_Load(object sender, EventArgs e)
        {
            Functions.Connect();
            if (!IsPostBack)
            {
                sql = "SELECT * from tblSanPham WHERE MaSP='" + Request.QueryString["maSP"] + "'";
                DataTable kh = Functions.GetDataToTable(sql);
                maSP.Text = kh.Rows[0][0].ToString();
                tenSP.Text = kh.Rows[0][1].ToString();
                soLuong.Text = kh.Rows[0][2].ToString();
                donGiaNhap.Text = kh.Rows[0][3].ToString();
                donGiaBan.Text = kh.Rows[0][4].ToString();
            }
        }

        protected void luu_Click(object sender, EventArgs e)
        {
            sql = "UPDATE tblSanPham SET TenSP=N'" + tenSP.Text + "',SoLuong=N'" +
                soLuong.Text + "',DonGiaNhap='" + donGiaNhap.Text +
                "',DonGiaBan='" + donGiaBan.Text +"' WHERE MaSP=N'" + maSP.Text + "'";
            Functions.RunSQL(sql);
            Response.Redirect("sanpham.aspx");
        }

    }
}