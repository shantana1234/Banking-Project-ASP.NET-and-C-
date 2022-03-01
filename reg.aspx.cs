using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class reg : System.Web.UI.Page
{
    string type;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Write("hii");
        if (RadioButton.Checked)
        {
            Response.Write(RadioButton.Text);
            type = RadioButton.Text;

        }
        else if (RadioButton1.Checked)
        {
            Response.Write(RadioButton1.Text);
            type = RadioButton1.Text;
        }
        else
        {
            Response.Write(RadioButton2.Text);
            type = RadioButton2.Text;
        }
        Response.Write(type);


        string CS = ConfigurationManager.ConnectionStrings["reg_ConnectionString"].ConnectionString;
        using (SqlConnection conn = new SqlConnection(CS))
        {
            conn.Open();

            string insert = "insert into userreg(name,fname,mname,email,phone,pass,date,nation,city,preadd,paraadd,cat) values(@userr,@fnamee,@mnamee,@emaill,@phonee,@pass,@bd,@nation,@city,@paradd,@preadd,@type)";
            SqlCommand com = new SqlCommand(insert, conn);
            com.Parameters.AddWithValue("@type", type);

            com.Parameters.AddWithValue("@userr", name.Text);
            com.Parameters.AddWithValue("@fnamee", fname.Text);
            com.Parameters.AddWithValue("@mnamee", mname.Text);
            com.Parameters.AddWithValue("@emaill", email.Text);
            com.Parameters.AddWithValue("@phonee", phone.Text);
            com.Parameters.AddWithValue("@pass", pass.Text);
            com.Parameters.AddWithValue("@bd", bdate.Text);
            com.Parameters.AddWithValue("@nation", nation.Text);
            com.Parameters.AddWithValue("@city", city.SelectedItem.ToString());
            com.Parameters.AddWithValue("@paradd", paradd.Text);
            com.Parameters.AddWithValue("@preadd", preadd.Text);

            com.ExecuteNonQuery();
            Response.Redirect("login.aspx");
            Response.Write("Registration is succesful no get lost! ");

        }
       
        }


    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}