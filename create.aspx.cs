using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class create2 : System.Web.UI.Page
{
    string idd;
    protected void Page_Load(object sender, EventArgs e)
    {
        string idd = Session["new2"].ToString();
        Response.Write(idd);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string idd = Session["new2"].ToString();
        string CS = ConfigurationManager.ConnectionStrings["reg_ConnectionString"].ConnectionString;
        using (SqlConnection conn = new SqlConnection(CS))
        {
            conn.Open();

            string insert = "insert into account(UserID,name,fname,mname,email,phone,type) values(@id,@userr,@fnamee,@mnamee,@emaill,@phonee,@type)";
            SqlCommand com = new SqlCommand(insert, conn);
            com.Parameters.AddWithValue("@id", idd);

            com.Parameters.AddWithValue("@userr", name.Text);
            com.Parameters.AddWithValue("@fnamee", fname.Text);
            com.Parameters.AddWithValue("@mnamee", mname.Text);
            com.Parameters.AddWithValue("@emaill", email.Text);
            com.Parameters.AddWithValue("@phonee", phone.Text);
            com.Parameters.AddWithValue("@type", DropDownList1.SelectedItem.ToString());

            com.ExecuteNonQuery();
            Response.Redirect("user.aspx");
            Response.Write("Registration is succesful no get lost! ");

        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}