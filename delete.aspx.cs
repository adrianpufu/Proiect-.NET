using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace pentruex1
{
    public partial class delete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void categoryDDL_SelectedIndexChanged(object sender, EventArgs e)
        {
        }
        protected void SaveButton_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                try
                {
                    int ID = Int32.Parse(categoryDDL.SelectedItem.Value);

                    string query = "DELETE FROM [Dentist] WHERE [ID] = @ID";
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn2"].ConnectionString);

                    con.Open();

                    try
                    {
                        SqlCommand com = new SqlCommand(query, con);
                        com.Parameters.AddWithValue("ID", ID);
                        com.ExecuteNonQuery();

                        // Do this only if update works:
                        LAnswer.Text = "Delete saved successfully!";
                    }
                    catch (Exception ex)
                    {
                        LAnswer.Text = "Database update error : " + ex.Message;
                    }
                    finally
                    {
                        con.Close();

                    }
                }

                catch (SqlException se)
                {
                    LAnswer.Text = "Database connexion error : " + se.Message;
                }
                catch (Exception ex)
                {
                    LAnswer.Text = "Data conversion error : " + ex.Message;
                }
            }
        }

    }
}