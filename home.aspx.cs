using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void login_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
    protected void reg_Click(object sender, EventArgs e)
    {
        Response.Redirect("reg.aspx");
    }
}