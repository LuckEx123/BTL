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
    public partial class WebForm3 : System.Web.UI.Page
    {
        string sql;
        protected void Page_Load(object sender, EventArgs e)
        {
            Functions.Connect();
            if (!IsPostBack)
            {
                sql = "SELECT * from tblKhach WHERE MaKhach='" + Request.QueryString["makhach"] + "'";
                DataTable kh = Functions.GetDataToTable(sql);
                makhach.Text = kh.Rows[0][0].ToString();
                tenkhach.Text = kh.Rows[0][1].ToString();
                diachi.Text = kh.Rows[0][2].ToString();
                sdt.Text = kh.Rows[0][3].ToString();
            }
        }

        protected void luu_Click(object sender, EventArgs e)
        {
            sql = "UPDATE tblKhach SET TenKhach=N'" + tenkhach.Text + "',DiaChi=N'" +
                diachi.Text + "',SDT='" + sdt.Text +
                "' WHERE MaKhach=N'" + makhach.Text + "'";
            Functions.RunSQL(sql);
            Response.Redirect("khachhang.aspx");
        }

    }
}