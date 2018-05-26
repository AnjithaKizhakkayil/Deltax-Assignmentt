using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class Add_New_Movies : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\user1\Documents\DeltaxDataBase.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            //txtactor.Text = "";
            //txtactres.Text = "";
            //txtproducer.Text="";
            //txtname.Text = "";
            txtdate.Text = "";
            DropDownList1.DataSource = "";
           // DropDownList2.DataSource = "";
            DropDownList3.DataSource = "";

            DropDownList1.Items.Insert(0, "--SELECT--");
           // DropDownList2.Items.Insert(0, "--SELECT--");
            DropDownList3.Items.Insert(0, "--SELECT--");

            Calendar1.Visible = false;
            //txtactor.Visible = false;
            //txtactres.Visible = false;

            //txtproducer.Visible = false;
         //   btnactrNew.Visible = false;
            //btnActrsNew.Visible = false;
          //  btnproducrNew.Visible = false;
            String str = "Select * from Actor_Tbl";
            SqlDataAdapter adpt = new SqlDataAdapter(str, con);
            DataSet ds = new DataSet();
            con.Open();
            adpt.Fill(ds);
            con.Close();
            if (ds.Tables[0].Rows.Count > 0)
            {

                DropDownList1.DataSource = ds.Tables[0];
                DropDownList1.DataTextField = "ActorName";
                DropDownList1.DataValueField = "Id";
              DropDownList1.  DataBind();
            }


            DropDownList1.Items.Insert(0, "--SELECT--");


            //String str2 = "Select * from Actress_tbl";
            //SqlDataAdapter adpt2 = new SqlDataAdapter(str2, con);
            //DataSet ds2 = new DataSet();
            //con.Open();
            //adpt2.Fill(ds2);
            //con.Close();

            //if (ds2.Tables[0].Rows.Count > 0)
            //{
            //    DropDownList2.DataSource = ds2.Tables[0];
            //    DropDownList2.DataTextField = "ActressName";
            //    DropDownList2.DataValueField = "Id";
            //  DropDownList2.  DataBind();
            //}

            //DropDownList2.Items.Insert(0, "--SELECT--");



            String str3 = "Select * from ProducerTbl";
            SqlDataAdapter adpt3 = new SqlDataAdapter(str3, con);
            DataSet ds3 = new DataSet();
            con.Open();
            adpt3.Fill(ds3);
            con.Close();
            if (ds3.Tables[0].Rows.Count > 0)
            {

                DropDownList3.DataSource = ds3.Tables[0];
                DropDownList3.DataTextField = "ProducerName";
                DropDownList3.DataValueField = "Id";
              DropDownList3.  DataBind();
            }


            DropDownList3.Items.Insert(0, "--SELECT--");



        }
    }

    
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        txtdate.Text = Calendar1.SelectedDate.ToString("dd/MM/yyyy");
        Calendar1.Visible = false;
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (Calendar1.Visible == true)
        {
            Calendar1.Visible = false;
        }
        else
        {
            Calendar1.Visible = true;
        }
    }


    protected void btnActorAdd_Click(object sender, EventArgs e)
    {

        Response.Redirect("~/Actors.aspx");

        //txtactor.Visible = true;
        //DropDownList1.Visible = false;
        //btnActorAdd .Visible = false;
    }
   
    protected void btnproAd_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Producer.aspx");
        //txtproducer.Visible = true;
        //DropDownList3.Visible = false;
        //btnproAd.Visible = false;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {

            string path = "~/Images/" + FileUpload1.FileName;
            FileUpload1.SaveAs(Server.MapPath(path));
            //.MapPath(path));
            Image1.ImageUrl = path;
            Label1 .Text = "Photo uploaded succesfully.....................";
        }
        else
        {
            Label1.Text = "Please upload your photo";
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //if (txtactor.Visible == false)
        //{
        //    txtactor.Text = DropDownList1.SelectedItem.Text;

        //}
        //if (txtactor.Visible == false)
        //{
        //    txtactres.Text = DropDownList2.SelectedItem.Text;
        //}

        //if (txtproducer.Visible == false)
        //{


        //    txtproducer.Text = DropDownList3.SelectedItem.Text;
        //}
      //  DateTime date = DateTime.Parse(  txtdate.Text);
     //   DateTime sdate = DateTime.ParseExact(Convert.ToDateTime ( txtdate.Text), "dd/MM/yyyy").ToString("MM/dd/yyyy");
        String str = "Insert into AddNew_tbl values('" + txtname.Text + "','" + Image1.ImageUrl + "','" + DropDownList1.SelectedItem.Text  + "','" + DropDownList3.SelectedItem.Text  + "','" + Convert.ToDateTime (txtdate .Text  )+ "')";
        SqlCommand cmd = new SqlCommand(str, con);
        con.Open();
      int r=  cmd.ExecuteNonQuery();
        con.Close();
        if (r > 0)
        {
            //if (txtactor.Text.Length > 0)
            //{

            //    String str1 = "Insert into Actor_Tbl values('" + txtactor.Text + "')";
            //    SqlCommand cmd1 = new SqlCommand(str1, con);
            //    con.Open();
            //    cmd1.ExecuteNonQuery();
            //    con.Close();
            //}
            //if (txtactres.Text.Length > 0)
            //{
            //    String str1 = "Insert into Actress_tbl values('" + txtactres .Text + "')";
            //    SqlCommand cmd1 = new SqlCommand(str1, con);
            //    con.Open();
            //    cmd1.ExecuteNonQuery();
            //    con.Close();
            //}
            //if (txtproducer.Text.Length > 0)
            //{
            //    String str1 = "Insert into ProducerTbl values('" + txtproducer.Text + "')";
            //    SqlCommand cmd1 = new SqlCommand(str1, con);
            //    con.Open();
            //    cmd1.ExecuteNonQuery();
            //    con.Close();
            //}


            Response.Write("Inserted");
        }
        

    }
}