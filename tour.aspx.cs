using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;
using System.Web.Mail;
using System.Net;
using System.Net.Mail;
using System.Data.SqlTypes;
using System.IO;
using Microsoft.AspNet.FriendlyUrls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class tour : System.Web.UI.Page
{

    string destid = string.Empty;

    string Id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {



            IList<string> segments = Request.GetFriendlyUrlSegments();
            if (segments.Count > 0)
            {
                Id = segments[0].ToString();
                ConString c = new ConString();
                GetPkgData();

                GetPkgData();
                Destination();
		PkgMenu1();

            }
            else
            {
                Response.Redirect("/");
            }

        }
    }

    private void GetPkgData()
    {
        try
        {
            SqlVariable.con.Open();
            SqlVariable.com = new SqlCommand("select * from Destination where DestID = @DestID", SqlVariable.con);
            SqlVariable.com.CommandType = CommandType.Text;
            // SqlVariable.com.Parameters.AddWithValue("@Action", "SelectOne");
            // SqlVariable.com.Parameters.AddWithValue("@AutoPackageID", 0); // pass mendatory parameter sql
            SqlVariable.com.Parameters.AddWithValue("@DestID", Id);
            SqlVariable.dr = SqlVariable.com.ExecuteReader();
            SqlVariable.dr.Read();

            //destID = SqlVariable.dr["DestID"].ToString();
            Label1.Text = SqlVariable.dr["Name"].ToString();
            lable2.InnerHtml = SqlVariable.dr["Name"].ToString();
            //d_txt.InnerHtml = SqlVariable.dr["Description"].ToString();

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




    public void Destination()
    {
        try
        {
            SqlVariable.con.Open();
            SqlVariable.com = new SqlCommand("Select * from [PakageEntry] where [DestID]=@DestID", SqlVariable.con);
            SqlVariable.com.Parameters.AddWithValue("@DestID", Id);
            SqlVariable.da = new SqlDataAdapter(SqlVariable.com);
            SqlVariable.dt = new DataTable();
            SqlVariable.da.Fill(SqlVariable.dt);

            tour_txt.DataSource = SqlVariable.dt;
            tour_txt.DataBind();

            SqlVariable.ds.Dispose();
            SqlVariable.con.Close();
            if (SqlVariable.dt.Rows.Count > 0)
            {
                //Label1.Text = SqlVariable.dt.Rows.Count.ToString() + "";



            }
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

 public void PkgMenu1()
    {
        try
        {
            SqlVariable.con.Open();
            SqlVariable.com = new SqlCommand("Select * from  TourType", SqlVariable.con);
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


    public string SearchType { get; set; }




}