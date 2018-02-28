using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Frmlogin : System.Web.UI.Page
{
    public static string _connectionstring = ConfigurationManager.ConnectionStrings["SqlConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {



    }
    /// <summary>
    /// validating the User Credentials
    /// </summary>
    /// 

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        try
        {
            DataTable dt = new DataTable();
            string strQuery = "";
            strQuery = "select ID,Fname,Role from Users where Username='" + txtUsername.Text.Trim() + "' and Password='" + txtPassword.Text.Trim() + "' and Status='Active'";
            SqlDataAdapter dagetReturnTypeDataTable = new SqlDataAdapter(strQuery, _connectionstring);
            dagetReturnTypeDataTable.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Session["ID"] = dt.Rows[0]["ID"].ToString();
                Session["Username"] = dt.Rows[0]["Fname"].ToString();
                Session["Role"] = dt.Rows[0]["Role"].ToString();
                Response.Redirect("Home.aspx", false);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "Incorrectpwd",
                "alert('Username/Password is Incorrect.');", true);
            }

        }
        catch (Exception ex)
        {
        }


    }
    /// <summary>
    /// submitting UserDetails to the DB
    /// </summary>
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        try
        {
            string gender = "Male";


            if (rbMaleorFemale.Items[0].Selected == true)
            {
                gender = "Male";

            }
            else
            {
                gender = "FeMale";
            }

            SqlCommand cmd;
            SqlConnection connection = new SqlConnection(_connectionstring);
            string Existsornot = "SELECT * FROM Users WHERE Username='" + txtUsername.Text.Trim() + "' and Status='Active'";
            cmd = new SqlCommand(Existsornot, connection);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count == 0)
            {
                connection.Open();


                String strquery = "Insert into Users([Username] ,[Password] ,[Email] ,[Fname]  ,[Role] ,[Status] ,[Gender] ,[CreatedOn] ,[ModifiedOn])";
                strquery = strquery + "values('" + txtRUsername.Text.Trim() + "','" + txtRPassword.Text.Trim() + "', '" + txtEmailID.Text.Trim() + "' , '" + txtFUllname.Text.Trim() + "',1,'Active','" + gender + "',getdate(),getdate())";
                cmd = new SqlCommand(strquery, connection);
                int n = cmd.ExecuteNonQuery();
                connection.Close();
                if (n > 0)
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "Successfully Created User, Log in Here",
            "alert('Username is already exists,Try another');", true);

                    Response.Redirect("Frmlogin.aspx", false);
                }
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "UsernameExists",
        "alert('Username is already exists,Try another');", true);

            }



        }
        catch (Exception ex)
        {
        }

    }
    /// <summary>
    /// Redirecting to the Home
    /// </summary>
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        try
        {
            Response.Redirect("index.html");
        }
        catch (Exception ex)
        {
        }

    }


}
