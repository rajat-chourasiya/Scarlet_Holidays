using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Net.Mail;
using System.Net;
using System.Text.RegularExpressions;
using System.Data.SqlClient;
using System.Configuration;

public partial class destination : System.Web.UI.Page
{
    string destid = string.Empty;
    protected void Page_Load(object sender, EventArgs e)
    {
        ConString c = new ConString();
        if (!IsPostBack)
        {
            PkgMenu7();
           
        }
    }



    public void PkgMenu7()
    {

        try
        {
            SqlVariable.con.Open();
            SqlVariable.com = new SqlCommand("Select * from PackageDestination", SqlVariable.con);
            //  SqlVariable.com.Parameters.AddWithValue("@DestID", destid);
            SqlVariable.da = new SqlDataAdapter(SqlVariable.com);
            SqlVariable.ds = new DataSet();
            SqlVariable.da.Fill(SqlVariable.ds);
            desti_txt.DataSource = SqlVariable.ds;
            desti_txt.DataBind();
            SqlVariable.ds.Dispose();
            SqlVariable.con.Close();
        }
        catch (Exception ex)
        {

        }
        finally
        {
            SqlVariable.con.Close();
            //SqlVariable.com.Dispose();
        }

    }




    //protected void submit_ServerClick(object sender, EventArgs e)
    //{

    //    SqlConnection con = new SqlConnection("data source=A2NWPLSK14SQL-v03.shr.prod.iad2.secureserver.net;initial catalog=carweelup;user id=carweelup;password=Sikkim@123;");
    //    con.Open();
    //    if (dest_txt.Value != "" || phone.Value != "" || email.Value != "")
    //    {

    //        SqlCommand cmd = new SqlCommand("insert into Enquiry(Destination,phone,email) values(@Destination,@phone,@email)", con);
    //        cmd.Parameters.AddWithValue("@Destination", dest_txt.Value);
    //        cmd.Parameters.AddWithValue("@phone", phone.Value);
    //        cmd.Parameters.AddWithValue("@email", email.Value);

    //        int i1 = cmd.ExecuteNonQuery();
    //        if (i1 > 0)
    //        {

    //            Response.Redirect("/thank-you");
    //        }
    //    }
    //    else
    //    {
    //        //Msg_lbl.Text = "Please Complete Your Field";
    //        //Msg_lbl.Focus();
    //    }

    //    con.Close();


    //    try
    //    {


    //        //Email Code
    //        string Body = "<span style='font-weight: bold;'>" +
    //                "Destination : " + "</span>" +
    //                 dest_txt.Value + "<br/>" +
    //                 "<span style='font-weight: bold;'>" +
    //                " Contact Number: " + "</span>" +
    //                 phone.Value + "<br/>" +
    //                 "<span style='font-weight: bold;'>" +
    //                " Email Id: " + "</span>" +
    //                 email.Value + "<br/>";



    //        eMail.ma(Body);
    //        Response.Redirect("/thank-you");

    //    }
    //    catch
    //    {

    //    }

    //}
}