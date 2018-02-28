using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class frmCustomers : System.Web.UI.Page
{
    public static string _connectionstring = ConfigurationManager.ConnectionStrings["SqlConnectionString"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {


        if (!IsPostBack)
        {
            fillGrid();
        }
    }

    private void fillGrid()
    {
        try
        {
            SqlConnection connection = new SqlConnection(_connectionstring);
            connection.Open();
            
            
            
            string strQuery = "select f.* ,Us.*,u.Id,u.Fname,u.Mobile,u.Email,u.BillingAddress  from [Users_subscription] Us left join Users u on u.Id=Us.userid  left join Frequency f on f.AdvertiseType_ID=Us.AdvertiseType_ID  where Us.AdvertiseType_ID in (select a.ID from Advertisements a where a.UserID="+Convert.ToInt32(Session["ID"])+")";
            SqlCommand cmd = new SqlCommand(strQuery, connection);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            gvCustomers.DataSource = dt;
            gvCustomers.DataBind();
        }
        catch (Exception ex)
        {
        }
    }
}