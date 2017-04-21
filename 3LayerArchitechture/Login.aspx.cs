using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessAccessLayer;

namespace _3LayerArchitechture
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            BusinessAccess businessAccess = new BusinessAccess();
            if( businessAccess.IsAuthenticate(txtUserName.Text, txtPassword.Text))
            {
                
                Session["User"] = txtUserName.Text;
                Response.Redirect("~/Test.aspx");
            }
            else
            {
                statusLabel.Text = "Username and/or Password not Matched !";
                statusLabel.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}