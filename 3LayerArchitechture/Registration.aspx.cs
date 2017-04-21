using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessAccessLayer;

namespace _3LayerArchitechture
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            BusinessAccess ba = new BusinessAccess();
            ba.RegisterUser(txtUserName.Text, txtPassword.Text);
            Response.Redirect("~/Confirmation.aspx");
        }
    }
}