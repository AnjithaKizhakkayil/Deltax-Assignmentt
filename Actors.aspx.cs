using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Actors : System.Web.UI.Page
{
    static string prevPage = String.Empty;
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\user1\Documents\DeltaxDataBase.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if (IsPostBack == false)
        {
             prevPage = Request.UrlReferrer.ToString();
            Calendar1.Visible = false;
        }
           
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        //txtdob.Text=Calendar1.
        txtdob.Text = Calendar1.SelectedDate.ToString("dd/MM/yyyy");
        Calendar1.Visible = false;
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Calendar1.Visible = true;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string gender="";

        if (RadioButton1.Checked == true)
        {
            gender = "Male";
        }
        else if (RadioButton2.Checked == true)
        {
             gender = "Female";
        }

        DateTime date = DateTime.Parse(txtdob.Text);

        String str = "Insert into Actor_Tbl values('" + txtacorname.Text + "','" + gender + "','" + date + "','" + txtbio.Text + "')";
        
        SqlCommand cmd =new SqlCommand (str,con);
        con.Open();
       cmd.ExecuteNonQuery();
        con.Close();


    }
    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
        if (RadioButton1.Checked==true)
        {
            RadioButton1.Checked=true;
            RadioButton2.Checked=false;
        }

    }

    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {
        if (RadioButton2.Checked == true)
        {
            RadioButton1.Checked = false;
            RadioButton2.Checked = true ;
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

         
      Response.Redirect(prevPage);
 
    }
}