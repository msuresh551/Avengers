using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Users : System.Web.UI.MasterPage
{

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Session["Username"] == null)
            {
                Response.Redirect("index.html");
            }
            if (Convert.ToInt32(Session["Role"].ToString()) == 2)
            {
                Advertisement.Visible = true;
                Customer.Visible = false;
            }
            else if (Convert.ToInt32(Session["Role"].ToString()) == 1)
            {
                Customer.Visible = true;
                Advertisement.Visible = false;
            }
            lblUsername.Text = "Welcome to: " + Session["Username"].ToString();


        }
        catch (Exception ex)
        {
        }
    }

    /// <summary>
    /// Sign out the corrent logged in User Details
    /// </summary>
    protected void Unnamed1_Click(object sender, EventArgs e)
    {
        try
        {
            Session["ID"] = null;
            Response.Redirect("index.html");
        }
        catch (Exception ex)
        {
        }

    }
}
