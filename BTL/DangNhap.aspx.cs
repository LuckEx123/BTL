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
    public partial class DangNhap : System.Web.UI.Page
    {
        string sql;
        HttpCookie ck;
        protected void Page_Load(object sender, EventArgs e)
        {
            ck = Request.Cookies["DangNhap"];
            Functions.Connect();
            if (!IsPostBack)
            {
                lb.Text = "";
                if (ck != null)
                {
                    sql = "Select * from tblDangNhap Where username=N'" + ck["uName"] + "'And password=N'" + ck["pw"] + "'";
                    if (Functions.CheckKey(sql))
                    {
                        Session["DangNhap"] = uName.Text;
                        Response.Redirect("home.aspx");
                    }
                }
            }
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            sql = "Select * from tblDangNhap Where username=N'" + uName.Text + "'And password=N'" + pw.Text + "'";
            if (Functions.CheckKey(sql))
            {
                if (checkbox.Checked)
                {
                    ck = Request.Cookies["DangNhap"];
                    if (ck == null)
                    {
                        ck = new HttpCookie("DangNhap");
                    }
                    ck["uName"] = uName.Text;
                    ck["pw"] = pw.Text;
                    Response.Cookies.Add(ck);
                    Response.Cookies["DangNhap"].Expires = DateTime.Now.AddDays(+1);
                }
                Session["DangNhap"] = uName.Text;
                Response.Redirect("home.aspx");
            }
            else
            {
                lb.Text = "Sai tài khoản hoặc mật khẩu";
            }
        }
    }
}