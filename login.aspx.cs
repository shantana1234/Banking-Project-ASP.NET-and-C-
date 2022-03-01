using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string CS = ConfigurationManager.ConnectionStrings["reg_ConnectionString"].ConnectionString;
        using (SqlConnection conn = new SqlConnection(CS))
        {
            conn.Open();
            string check = "select count(*) from userreg where name= '" + uname.Text + "'";
            SqlCommand com = new SqlCommand(check, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            conn.Close();
            if (temp == 1)
            {
                conn.Open();
                string pascheck = "select pass from userreg where name= '" + uname.Text + "'";
                SqlCommand comcheck = new SqlCommand(pascheck, conn);
                string password = comcheck.ExecuteScalar().ToString().Replace(" ", "");
                if (password == pass.Text)
                {
                    Session["new"] = uname.Text;
                    Response.Redirect("user.aspx");

                }
                else Response.Write("Wrong Password");

            }
            else
            {
                Response.Write("Username does not exits");
            }
        }
    }
    protected void Button5_Click(object sender, EventArgs e)
    {

    }
}