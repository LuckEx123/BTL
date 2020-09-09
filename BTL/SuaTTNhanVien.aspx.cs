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
    public partial class SuaTTNhanVien : System.Web.UI.Page
    {
        string sql;
        protected void Page_Load(object sender, EventArgs e)
        {
            Functions.Connect();
            if (!IsPostBack)
            {
                sql = "SELECT * from tblNhanVien WHERE MaNhanVien='" + Request.QueryString["maNV"] + "'";
                DataTable kh = Functions.GetDataToTable(sql);
                maNV.Text = kh.Rows[0][0].ToString();
                tenNV.Text = kh.Rows[0][1].ToString();
                diachi.Text = kh.Rows[0][3].ToString();
                sdt.Text = kh.Rows[0][4].ToString();
                DateTime dt = DateTime.Parse(kh.Rows[0][5].ToString());
                ngaysinh.Text = dt.ToString("yyyy-MM-dd");
                if (kh.Rows[0][2].ToString() == "Nam")
                {
                    gt.Items.FindByValue("Nam").Selected = true;
                }
                else
                {
                    gt.Items.FindByValue("Nu").Selected = true;
                }
      
            }
        }

        protected void luu_Click(object sender, EventArgs e)
        {
            DateTime ngaysinh1 = DateTime.Parse(ngaysinh.Text);
            sql = "UPDATE tblNhanVien SET TenNHanVien=N'" + tenNV.Text + "',GioiTinh=N'" +
                gt.SelectedValue + "',DiaChi='" + diachi.Text +
                "',SDT='" + sdt.Text + "',NgaySinh='" + ngaysinh1 + "' WHERE MaNhanVien=N'" + maNV.Text + "'";
            Functions.RunSQL(sql);
            Response.Redirect("NhanVien.aspx");
        }

    }
}