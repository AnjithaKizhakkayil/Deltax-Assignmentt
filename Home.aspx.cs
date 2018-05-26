using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class Home : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\user1\Documents\DeltaxDataBase.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        String str = "Select * from AddNew_tbl ";
            SqlDataAdapter adpt =new SqlDataAdapter(str,con);
        DataSet ds =new DataSet();
        con.Open ();
        adpt.Fill(ds);
        con.Close();
        if( ds.Tables[0].Rows.Count>0)
        {
            DataList1.DataSource = ds.Tables[0];
            DataList1.DataBind();

        }


    }

    protected void DataList1_EditCommand(object source, DataListCommandEventArgs e)
    {
        DataList1.EditItemIndex = e.Item.ItemIndex;
    }

    protected void DataList1_UpdateCommand(object source, DataListCommandEventArgs e)
    {
        TextBox lblid = (TextBox)e.Item.FindControl("TextBox1");
        DropDownList ddlactor = (DropDownList)e.Item.FindControl("DropDownList1");
        DropDownList ddlpro = (DropDownList)e.Item.FindControl("DropDownList2");

        TextBox txtdate = (TextBox)e.Item.FindControl("TextBox2");
        Image img1 = (Image)e.Item.FindControl("Image3");
    }
    protected void DataList1_CancelCommand(object source, DataListCommandEventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        //if (FileUpload1.HasFile)
        //{

        //    string path = "~/Images/" + FileUpload1.FileName;
        //    FileUpload1.SaveAs(Server.MapPath(path));
        //    //.MapPath(path));
        //    Image1.ImageUrl = path;
        //    Label1.Text = "Photo uploaded succesfully.....................";
        //}
        //else
        //{
        //    Label1.Text = "Please upload your photo";
        //}
    }
}