using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;

public partial class frmAdvertisements : System.Web.UI.Page
{
    public static string _connectionstring = ConfigurationManager.ConnectionStrings["SqlConnectionString"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSumit_Click(object sender, EventArgs e)
    {
        try
        {
            bindMag();
        }
        catch (Exception EX)
        {
        }
    }
    protected void txtFreq_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(_connectionstring);
        try
        {

            string ext = Path.GetExtension(MY_FileUpload.FileName);
            if (ext == ".jpg" || ext == ".png")
            {
                if (MY_FileUpload.HasFile)
                {
                    //string temp = "";
                    MY_FileUpload.PostedFile.SaveAs(Server.MapPath("~/Data/") + MY_FileUpload.FileName);
                    string path = "";
                    path = "~/Data/" + MY_FileUpload.FileName;
                    //temp = Server.MapPath("~/Data/") + MY_FileUpload.FileName;
                    string strquery = "insert into [Frequency] ([AdvertiseType_ID] ,[Poster] ,[File] ,[Description] ,[Status],[Image_url])values(" + ddlMagazineType.SelectedValue + ",'" + path + "','" + txtOptional.Text + "','" + txtDescription.Text.Trim() + "','Active','" + txtUrl.Text.Trim() + "'    )";
                    con.Open();
                    SqlCommand cmd = new SqlCommand(strquery, con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    ScriptManager.RegisterStartupScript(this, GetType(), "Imgsavedsucss", "alert('Successfully Added your Advertisement.');", true);
                    txtDescription.Text = " ";
                    txtFreq.Text = "";
                
                }
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "InvalidImage", "alert('Please select Images');", true);
            }
        }
        catch (Exception ex)
        {
            con.Close();
        }
    }
    private void bindMag()
    {
        try
        {

            SqlCommand cmd;
            SqlConnection connection = new SqlConnection(_connectionstring);
            connection.Open();
            String strquery = "Insert into Advertisements ([AdvertisementTitle],[Description],[PaymentDone],[Money],[UserID],[Createdon]) ";
            strquery = strquery + " values('" + txtMTitle.Text.Trim() + "','" + txtMDescripiton.Text.Trim() + "', 'True' ,"+txtPrice.Text.Trim()+", " + Session["ID"].ToString() + ",getdate())";
            cmd = new SqlCommand(strquery, connection);
            int n = cmd.ExecuteNonQuery();
            connection.Close();
            if (n > 0)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "success",
        "alert('Successfully Created New Advertisement');", true);
              
            }
        }
        catch (Exception ex)
        {

        }
    }
}
