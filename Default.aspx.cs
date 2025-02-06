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

public partial class _Default : System.Web.UI.Page
{
    string destid = string.Empty;
    protected void Page_Load(object sender, EventArgs e)
    {
        ConString c = new ConString();
        if (!IsPostBack)
        {
            PkgMenu7();
            PkgMenu10();
            PkgMenu11();
            PkgMenu8();
            PkgMenu9();
            PkgMenu15();
        }
    }



    public void PkgMenu7()
    {

        try
        {
            SqlVariable.con.Open();
            SqlVariable.com = new SqlCommand("Select * from PakageEntry where Domestic = 1", SqlVariable.con);
            //  SqlVariable.com.Parameters.AddWithValue("@DestID", destid);
            SqlVariable.da = new SqlDataAdapter(SqlVariable.com);
            SqlVariable.ds = new DataSet();
            SqlVariable.da.Fill(SqlVariable.ds);
            domestic_txt.DataSource = SqlVariable.ds;
            domestic_txt.DataBind();
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

    public void PkgMenu10()
    {

        try
        {
            SqlVariable.con.Open();
            SqlVariable.com = new SqlCommand("Select * from PakageEntry where International =1", SqlVariable.con);
            //  SqlVariable.com.Parameters.AddWithValue("@DestID", destid);
            SqlVariable.da = new SqlDataAdapter(SqlVariable.com);
            SqlVariable.ds = new DataSet();
            SqlVariable.da.Fill(SqlVariable.ds);
            international.DataSource = SqlVariable.ds;
            international.DataBind();
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

    public void PkgMenu11()
    {

        try
        {
            SqlVariable.con.Open();
            SqlVariable.com = new SqlCommand("Select * from PakageEntry where best =1", SqlVariable.con);
            //  SqlVariable.com.Parameters.AddWithValue("@DestID", destid);
            SqlVariable.da = new SqlDataAdapter(SqlVariable.com);
            SqlVariable.ds = new DataSet();
            SqlVariable.da.Fill(SqlVariable.ds);
            best_pkg.DataSource = SqlVariable.ds;
            best_pkg.DataBind();
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

    public void PkgMenu8()
    {

        try
        {
            SqlVariable.con.Open();
            SqlVariable.com = new SqlCommand("Select * from PakageEntry where tourtype = 1", SqlVariable.con);
            // SqlVariable.com.Parameters.AddWithValue("@DestID", destid);
            SqlVariable.da = new SqlDataAdapter(SqlVariable.com);
            SqlVariable.ds = new DataSet();
            SqlVariable.da.Fill(SqlVariable.ds);
            //them_txt.DataSource = SqlVariable.ds;
            //them_txt.DataBind();
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

    public void PkgMenu9()
    {

        try
        {
            SqlVariable.con.Open();
            SqlVariable.com = new SqlCommand("Select * from Testimoni", SqlVariable.con);
            // SqlVariable.com.Parameters.AddWithValue("@DestID", destid);
            SqlVariable.da = new SqlDataAdapter(SqlVariable.com);
            SqlVariable.ds = new DataSet();
            SqlVariable.da.Fill(SqlVariable.ds);
            testi_txt.DataSource = SqlVariable.ds;
            testi_txt.DataBind();
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

    public void PkgMenu15()
    {

        try
        {
            SqlVariable.con.Open();
            SqlVariable.com = new SqlCommand("Select * from TourType", SqlVariable.con);
            // SqlVariable.com.Parameters.AddWithValue("@DestID", destid);
            SqlVariable.da = new SqlDataAdapter(SqlVariable.com);
            SqlVariable.ds = new DataSet();
            SqlVariable.da.Fill(SqlVariable.ds);
            type_txt.DataSource = SqlVariable.ds;
            type_txt.DataBind();
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

    protected void send_ServerClick(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection("data source=A2NWPLSK14SQL-v03.shr.prod.iad2.secureserver.net;initial catalog=scarletholidays;user id=scarletholidays;password=otKg4_889;");
        con.Open();
        if (destination_txt.Value != "" || datepicker.Value != "" || name.Value != "" || phone.Value != "")
        {

            SqlCommand cmd = new SqlCommand("insert into Enquiry(Destination,date,name,phone,date1) values(@Destination,@date,@name,@phone,@date1)", con);
            cmd.Parameters.AddWithValue("@Destination", destination_txt.Value);
            cmd.Parameters.AddWithValue("@date", datepicker.Value);
            cmd.Parameters.AddWithValue("@name", name.Value);
            cmd.Parameters.AddWithValue("@phone", phone.Value);
            int i1 = cmd.ExecuteNonQuery();
            if (i1 > 0)
            {

                Response.Redirect("/thank-you");
            }
        }
        else
        {
            //Msg_lbl.Text = "Please Complete Your Field";
            //Msg_lbl.Focus();
        }

        con.Close();


        try
        {


            //Email Code
            string Body = "<span style='font-weight: bold;'>" +
                    "Destination : " + "</span>" +
                     destination_txt.Value + "<br/>" +
                     "<span style='font-weight: bold;'>" +
                    "Travel Date: " + "</span>" +
                     datepicker.Value + "<br/>" +
                     "<span style='font-weight: bold;'>" +
                    " Full Name: " + "</span>" +
                     name.Value + "<br/>" +
                     "Contact Number: " + "</span>" +
                     phone.Value + "<br/>";



            eMail.ma(Body);
            Response.Redirect("/thank-you");

        }
        catch
        {

        }

    }
}