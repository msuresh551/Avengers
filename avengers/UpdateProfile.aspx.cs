using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class UpdateProfile : System.Web.UI.Page
{
    public static string _connectionstring = ConfigurationManager.ConnectionStrings["SqlConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Getusedetails();
        }
    }
    private void Getusedetails()
    {
        DataTable dt = new DataTable();
        string strQuery = "";
        strQuery = "select Id, Username,Mobile,Email,BillingAddress,TempAddres from Users where  Status='Active' and Id=" + Convert.ToInt32(Session["Id"]) + "";
        SqlDataAdapter dagetReturnTypeDataTable = new SqlDataAdapter(strQuery, _connectionstring);
        dagetReturnTypeDataTable.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Session["Id"] = dt.Rows[0]["Id"].ToString();
            //Session["Username"] = dt.Rows[0]["Fname"].ToString();
            //Session["Role"] = dt.Rows[0]["Role"].ToString();
            //Response.Redirect("Home.aspx", false);

            txtUsername.Text = dt.Rows[0]["Username"].ToString();

            txtmobile.Text = dt.Rows[0]["Mobile"].ToString();
            txtEmailID.Text = dt.Rows[0]["Email"].ToString();
            txtbill.Text = dt.Rows[0]["BillingAddress"].ToString();
            txtaddresstemp.Text = dt.Rows[0]["TempAddres"].ToString();




        }
        else
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "Incorrectpwd",
            "alert('Username/Password is Incorrect.');", true);
        }
    }


    protected void btnSumit_Click(object sender, EventArgs e)
    {

        DataTable dt = new DataTable();
        string strQuery = "";
        strQuery = "update  Users set Mobile='" + txtmobile.Text + "',Email='" + txtEmailID.Text + "',BillingAddress='" + txtbill.Text + "',TempAddres='" + txtaddresstemp.Text + "'  where  Status='Active' and Id=" + Convert.ToInt32(Session["Id"]) + " ";
        SqlDataAdapter dagetReturnTypeDataTable = new SqlDataAdapter(strQuery, _connectionstring);
        dagetReturnTypeDataTable.Fill(dt);
        ScriptManager.RegisterStartupScript(this, GetType(), "sccess","alert('Details has been updated Successfully.');", true);


    }
    
}