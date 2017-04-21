using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessAccessLayer;

namespace _3LayerArchitechture
{
    public partial class Test : System.Web.UI.Page
    {
        BusinessAccess businessAccess = new BusinessAccess();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["User"] != null)
                {
                    GridViewBind();
                }
                else
                {
                    Response.Redirect("~/Login.aspx");
                }
            }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

        }

        public void GridViewBind()
        {
            GridView1.DataSource = businessAccess.BusinesAccessLayerBind();
            GridView1.DataBind();

        }



        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            businessAccess.ID = int.Parse(txtID.Text);
            businessAccess.Name = txtName.Text;
            businessAccess.Gender = txtGender.Text;
            businessAccess.Age = int.Parse(txtAge.Text);

            businessAccess.UpdateStudentRecord();
            GridViewBind();
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            businessAccess.ID = int.Parse(txtID.Text);
            businessAccess.Name = txtName.Text;
            businessAccess.Gender = txtGender.Text;
            businessAccess.Age = int.Parse(txtAge.Text);

            businessAccess.InsertStudentRecord();
            GridViewBind();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            businessAccess.ID = int.Parse(txtID.Text);
            businessAccess.DeleteStudentRecord();
            GridViewBind();
        }


    }
}