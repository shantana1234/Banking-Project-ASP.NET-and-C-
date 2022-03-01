using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class user : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["new"] != null)
        {
            string user = Session["new"].ToString();
            //Response.Write("hiii");
             string CS = ConfigurationManager.ConnectionStrings["reg_ConnectionString"].ConnectionString;
             using (SqlConnection conn = new SqlConnection(CS))
             {
                 conn.Open();
                 string pascheck = "select id as User_ID,name as User_Name,fname as Father_Name,mname as Mother_Name,email as Email,phone as Phone_Number,date as Birth_Day,city,preadd,paraadd from userreg where name= '" + user + "'";
                 SqlDataAdapter da = new SqlDataAdapter(pascheck, CS);
                 DataSet ds = new DataSet();
                 da.Fill(ds);
                 GridView1.DataSource = ds;
                 GridView1.DataBind();
                 string id = "select id as User_ID from userreg where name= '" + user + "'";
                 SqlCommand comcheck = new SqlCommand(id, conn);
                 string password = comcheck.ExecuteScalar().ToString().Replace(" ", "");
              
                 Session["new2"] = password;
                 string fnamee = "select fname from userreg where name= '" + user + "'";
                 SqlCommand comm = new SqlCommand(fnamee, conn);
                 string fname = comm.ExecuteScalar().ToString().Replace(" ", "");

                 Session["fname"] = fname;
                 string mnamee = "select mname from userreg where name= '" + user + "'";
                 SqlCommand commm = new SqlCommand(mnamee, conn);
                 string mname = commm.ExecuteScalar().ToString().Replace(" ", "");

                 Session["mname"] = mname;
                 string phonee = "select phone from userreg where name= '" + user + "'";
                 SqlCommand commmm = new SqlCommand(phonee, conn);
                 string phone = commmm.ExecuteScalar().ToString().Replace(" ", "");

                 Session["phone"] = phone;
                 string email = "select email from userreg where name= '" + user + "'";
                 SqlCommand co = new SqlCommand(email, conn);
                 string com = co.ExecuteScalar().ToString().Replace(" ", "");

                 Session["email"] = com;


          }
        }
        else
        {
            Response.Redirect("home.aspx");
        }

    }
    protected void Button3_Click(object sender, EventArgs e)
    {

    }
    protected void log_Click(object sender, EventArgs e)
    {
       
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        Session["new"] = null;
        Response.Redirect("login.aspx");
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
       // Session["new2"] = password;
        Response.Redirect("create2.aspx");

    }
}