using Microsoft.AspNet.FriendlyUrls;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;
using System.Text.RegularExpressions;

public partial class tour_details : System.Web.UI.Page
{
    public string location;
    public string connectionString = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;
    public string trip;
    string Id;
    string destID = string.Empty;
    protected void Page_Load(object sender, EventArgs e)
    {

        IList<string> segments = Request.GetFriendlyUrlSegments();
        if (segments.Count > 0)
        {
            Id = segments[0].ToString();
            ConString c = new ConString();
            GetPkgData();
            Pack();
            desk8();
            Destination();

        }
        else
        {
            Response.Redirect("/");
        }

    }

    private void GetPkgData()
    {
        try
        {
            SqlVariable.con.Open();
            SqlVariable.com = new SqlCommand("select * from PakageEntry where PackageID = @DestID", SqlVariable.con);
            SqlVariable.com.CommandType = CommandType.Text;
            SqlVariable.com.Parameters.AddWithValue("@Action", "SelectOne");
            SqlVariable.com.Parameters.AddWithValue("@DestID", Id);
            SqlVariable.dr = SqlVariable.com.ExecuteReader();
            SqlVariable.dr.Read();


            n2_txt.Text = SqlVariable.dr["pName"].ToString();
            price.InnerHtml = SqlVariable.dr["Price"].ToString();
            dura.InnerHtml = SqlVariable.dr["Duration"].ToString();
            //day.InnerHtml = (Int32.Parse(SqlVariable.dr["Nights"].ToString()) + 1).ToString();
            type_txt.InnerHtml = SqlVariable.dr["title"].ToString();
            rating.Text = SqlVariable.dr["rating"].ToString();
            //review_number.Text = SqlVariable.dr["rvNumber"].ToString();
            ov_txt.InnerHtml = SqlVariable.dr["overview"].ToString();
            inc_txt.InnerHtml = SqlVariable.dr["Inclusion"].ToString();
            exp.InnerHtml = SqlVariable.dr["Exclusion"].ToString();
            ViewState["Image2"] = SqlVariable.dr["Image2"].ToString();
            pkg_img.ImageUrl = "~/ServerImage/" + SqlVariable.dr["Image2"].ToString();
            SqlVariable.dr.Close();

            SqlVariable.con.Close();

        }
        catch
        {

        }
        finally
        {
            SqlVariable.con.Close();
            //SqlVariable.com.Dispose();
        }
    }


    public void Pack()
    {
        try
        {
            SqlVariable.con.Open();
            SqlVariable.com = new SqlCommand("Select * from TourType", SqlVariable.con);
            SqlVariable.com.Parameters.AddWithValue("@Id", Id);
            SqlVariable.da = new SqlDataAdapter(SqlVariable.com);
            SqlVariable.ds = new DataSet();
            SqlVariable.da.Fill(SqlVariable.ds);

            type_txt1.DataSource = SqlVariable.ds;
            type_txt1.DataBind();

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

    private void desk8()
    {

        try
        {
            SqlVariable.con.Open();
            SqlVariable.com = new SqlCommand("Select " +
                                                " ROW_NUMBER() Over (Order by PackageID) As [SL]," +
                                                " [DayTitle], " +
                                                " [DayDetails]" +
                                                " from [PackageDet] " +
                                                " Where [PackageID]=@PackageID", SqlVariable.con);
            SqlVariable.com.Parameters.AddWithValue("@PackageID", Id);
            SqlVariable.da = new SqlDataAdapter(SqlVariable.com);
            SqlVariable.dt = new DataTable();
            SqlVariable.da.Fill(SqlVariable.dt);
            det_txt.DataSource = SqlVariable.dt;
            det_txt.DataBind();
            SqlVariable.dt.Dispose();
            SqlVariable.con.Close();

        }
        catch (Exception ex)
        {

        }
        finally
        {
            SqlVariable.con.Close();
        }
    }

    public void Destination()
    {

        //try
        //{
        SqlVariable.con.Open();
        SqlVariable.com = new SqlCommand("Select * from [PakageEntry] where [DestID]=@DestID and PackageID!=@PackageID", SqlVariable.con);

        SqlVariable.com.Parameters.AddWithValue("@DestID", Id);
        SqlVariable.com.Parameters.AddWithValue("@PackageID", Id);
        SqlVariable.da = new SqlDataAdapter(SqlVariable.com);
        SqlVariable.ds = new DataSet();
        SqlVariable.da.Fill(SqlVariable.ds);

        //similer_pkg.DataSource = SqlVariable.ds;
        //similer_pkg.DataBind();

        SqlVariable.ds.Dispose();
        SqlVariable.con.Close();
        //}
        //catch (Exception ex)
        //{

        //}
        //finally
        //{
        //    SqlVariable.con.Close();
        //    //SqlVariable.com.Dispose();
        //}
    }









    //protected void submit_ServerClick(object sender, EventArgs e)
    //{
    //    SqlConnection con = new SqlConnection("data source=A2NWPLSK14SQL-v03.shr.prod.iad2.secureserver.net;initial catalog=carweelup;user id=carweelup;password=Sikkim@123;");
    //    con.Open();
    //    if (name.Value != "" || phone.Value != "" || email.Value != "" || city.Value != "" || inputDate.Text != "" || adu.Value != "")
    //    {

    //        SqlCommand cmd = new SqlCommand("insert into Enquiry(Name,phone,email,city,date,adu) values(@Name,@phone,@email,@city,@date,@adu)", con);
    //        cmd.Parameters.AddWithValue("@Name", name.Value);
    //        cmd.Parameters.AddWithValue("@phone", phone.Value);
    //        cmd.Parameters.AddWithValue("@email", email.Value);
    //        cmd.Parameters.AddWithValue("@city", city.Value);
    //        cmd.Parameters.AddWithValue("@date", inputDate.Text);
    //        cmd.Parameters.AddWithValue("@adu", adu.Value);
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
    //            "Full Name : " + "</span>" +
    //             name.Value + "<br/>" +
    //             "<span style='font-weight: bold;'>" +
    //            " Contact Number: " + "</span>" +
    //             phone.Value + "<br/>" +
    //             "<span style='font-weight: bold;'>" +
    //            " Email Id: " + "</span>" +
    //             email.Value + "<br/>" +
    //             "<span style='font-weight: bold;'>" +
    //            " Country: " + "</span>" +
    //             city.Value + "<br/>" +
    //             "<span style='font-weight: bold;'>" +
    //            " Travel Date: " + "</span>" +
    //             inputDate.Text + "<br/>" +
    //             "<span style='font-weight: bold;'>" +
    //            " No. Of Travelers: " + "</span>" +
    //             adu.Value + "<br/>";

    //        eMail.ma(Body);

    //        Response.Redirect("/thank-you");
    //    }
    //    catch
    //    {

    //    }

    //}
}
