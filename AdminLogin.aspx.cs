using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class AdminLogin : System.Web.UI.Page
{
    SqlConnection con = null;
    SqlCommand com = null;
    SqlDataReader dr = null;
    SqlDataAdapter adp;
    DataSet ds = new DataSet();

    private string connectionString = WebConfigurationManager.ConnectionStrings["Connection"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(connectionString);
    }
    protected void LoginBtn_Click(object sender, EventArgs e)
    {
        try
        {
            if ((user_txt.Text.Trim() == "") && (pwd_txt.Text.Trim() == ""))
            {
                ErrorMsg.Text = "Invalid Input";
            }
            else
            {
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "Select [UserName1],[Password], [UserRole] From [AdminLogin] Where [UserName1] COLLATE Latin1_general_CS_AS=@UserName And [Password]=@password";

                cmd.Connection = con;
                cmd.Parameters.Add("@username", SqlDbType.VarChar, 50).Value = user_txt.Text;
                cmd.Parameters.Add("@password", SqlDbType.VarChar, 50).Value = pwd_txt.Text;
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    dr.Read();
                    if ((dr[0].ToString() == user_txt.Text) && (dr[1].ToString() == pwd_txt.Text))
                    {
                        //   here i am creating a formauthentication ticket that will be use in   the whole //application. This is the main part of the formauthentication security, inside dr[2] //there is  a role of the user
                        FormsAuthenticationTicket tkt = new FormsAuthenticationTicket(1, user_txt.Text, DateTime.Now, DateTime.Now.AddHours(3), false, dr[2].ToString(), FormsAuthentication.FormsCookiePath);
                        //   here i am enctypt the ticket. With the encryption  of this ticket it will encrypt the //userrole
                        String st = FormsAuthentication.Encrypt(tkt);
                        //   here i am creat a cookie that will we used inside the whole application
                        HttpCookie ck = new HttpCookie(FormsAuthentication.FormsCookieName, st);
                        Response.Cookies.Add(ck);

                        Response.Redirect("CheckUser.aspx");
                       // FormsAuthentication.RedirectFromLoginPage(user_txt.Text, false);
                    }
                    else
                    {
                        ErrorMsg.Text = "Wrong User Name Or Password";
                    }            

                }
                else
                {
                    ErrorMsg.Text = "Wrong User Name Or Password";
                }
            }
        }
        catch (Exception EX)
        {
            ErrorMsg.Text = EX.Message;
        }
        finally
        {
            con.Close();
        }
    }
}
