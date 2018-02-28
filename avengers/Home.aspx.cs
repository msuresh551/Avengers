using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Home : System.Web.UI.Page
{
    public static string _connectionstring = ConfigurationManager.ConnectionStrings["SqlConnectionString"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            filldata();
        }
    }

    private void filldata()
    {
      //  string strQuery = "SELECT [Poster], [File], [Description], [AddID], [AdvertiseType_ID],Image_url FROM [Frequency]";
        string strQuery = "select a.AdvertisementTitle,a.[Description] as Title,f.AdvertiseType_ID,f.Poster,f.[File],f.Description,f.Image_url from Advertisements a  left join Frequency f on a.Id=f.AdvertiseType_ID where f.AdvertiseType_ID is not null";
        SqlDataAdapter da = new SqlDataAdapter(strQuery, _connectionstring);
        DataSet ds = new DataSet();
        da.Fill(ds, "Posters");
        gvImages.DataSource = ds;
        gvImages.DataBind();

        strQuery = "select UserId,AdvertiseType_ID from dbo.Users_subscription where UserId="+Convert.ToInt32(Session["ID"].ToString())+"";
        da = new SqlDataAdapter(strQuery, _connectionstring);
        DataTable dt = new DataTable();
        da.Fill(dt);

        foreach (DataListItem dl in gvImages.Items)
        {
            Label lblId = (Label)dl.FindControl("AdvertiseType_ID");
            int AddId = Convert.ToInt32(lblId.Text.ToString());

            foreach (DataRow dr in dt.Rows)
            {
                if (Convert.ToInt32(dr["AdvertiseType_ID"]) == AddId)
                {
                    Button btn = (Button)dl.FindControl("btnsubcribe");
                    btn.Visible = false;
                    Button btnunsubscribe = (Button)dl.FindControl("btnUnsubscribe");
                    btnunsubscribe.Visible = true;
                }
            }
        }
    }


    protected void gvImages_ItemCommand(object source, DataListCommandEventArgs e)
    {
        try
        {
            if (e.CommandName == "subscribe")
            {
                int index = Convert.ToInt32(e.Item.ItemIndex);
                /*To get and Link Button Form selected row*/
                Label lnkId = (Label)e.Item.FindControl("AdvertiseType_ID");
                int AddID = Convert.ToInt32(lnkId.Text.ToString());
                int i = Convert.ToInt32(Session["ID"].ToString());
                string strQuery = "insert into Users_subscription (UserId,AdvertiseType_ID,Status) values(" + i + "," + AddID + ",'Active')";
                SqlConnection con = new SqlConnection(_connectionstring);
                con.Open();
                SqlCommand cmd = new SqlCommand(strQuery, con);
                cmd.ExecuteNonQuery();
                con.Close();
                ScriptManager.RegisterStartupScript(this, GetType(), "sccess", "alert('Details has been updated Successfully.');", true);

            }
            else if (e.CommandName == "Unsubscribe")
            {
                int index = Convert.ToInt32(e.Item.ItemIndex);
                /*To get and Link Button Form selected row*/
                Label lnkId = (Label)e.Item.FindControl("AdvertiseType_ID");
                string strQuery = "delete from Users_subscription where AdvertiseType_ID=" + Convert.ToInt32(lnkId.Text.ToString()) + " and UserID=" + Convert.ToInt32(Session["ID"].ToString()) + "";
                SqlConnection con = new SqlConnection(_connectionstring);
                con.Open();
                SqlCommand cmd = new SqlCommand(strQuery, con);
                cmd.ExecuteNonQuery();
                con.Close();
                ScriptManager.RegisterStartupScript(this, GetType(), "sccess", "alert('Details has been updated Successfully.');", true);




            }

            Response.Redirect("Home.aspx", false);

        }
        catch (Exception ex)
        {
        }

    }
}