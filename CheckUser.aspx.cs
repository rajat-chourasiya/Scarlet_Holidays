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

public partial class CheckUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // here iam explainnig that if the role of the user that will be login is admin ,he will 
        //be go to the admin folder, if the role will we client then it will be go to the client 
        //folder , if the role will be director then it will be go to the director folder

        if (User.IsInRole("admin"))
        {
            Response.Redirect("~/Admin/Default.aspx");
        }
    }
}
