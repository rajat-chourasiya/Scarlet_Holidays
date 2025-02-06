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

public partial class head : System.Web.UI.UserControl
{

    protected void Page_Load(object sender, EventArgs e)
    {
        ConString c = new ConString();

        if (!IsPostBack)
        {
            PkgMenu1();
           

            PkgMenu3();
          

        }
    }
    public void PkgMenu1()
    {
        try
        {
            SqlVariable.con.Open();
            SqlVariable.com = new SqlCommand("Select * from  Destination where Domestic = 1", SqlVariable.con);
            SqlVariable.da = new SqlDataAdapter(SqlVariable.com);
            SqlVariable.ds = new DataSet();
            SqlVariable.da.Fill(SqlVariable.ds);
            dom_txt.DataSource = SqlVariable.ds;
            dom_txt.DataBind();
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

   


    public void PkgMenu3()
    {
        try
        {
            SqlVariable.con.Open();
            SqlVariable.com = new SqlCommand("Select * from  Destination where inter = 1", SqlVariable.con);
            SqlVariable.da = new SqlDataAdapter(SqlVariable.com);
            SqlVariable.ds = new DataSet();
            SqlVariable.da.Fill(SqlVariable.ds);
            Repeater1.DataSource = SqlVariable.ds;
            Repeater1.DataBind();
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


   


    
}