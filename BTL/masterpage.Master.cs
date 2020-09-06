using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL
{
    public partial class masterpage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["DangNhap"] != null)
            {
                lb.Text = "Welcome " + Session["DangNhap"];
            }
            else
            {
                lb.Text = "Welcome Guess";
            }
        }

        protected void log_Click(object sender, EventArgs e)
        {
            if (Session["DangNhap"] != null)
            {
                Session.RemoveAll();
                Response.Cookies["DangNhap"].Expires = DateTime.Now.AddDays(-1);
            }
            Response.Redirect("DangNhap.aspx");
        }
    }
}