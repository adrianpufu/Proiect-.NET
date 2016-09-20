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
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void categoryDDL_SelectedIndexChanged(object sender, EventArgs e)
        {

            try
                {
                int ID = Int32.Parse(categoryDDL.SelectedItem.Value);

                string query = "SELECT *"
                        + " FROM Dentist"
                        + " WHERE ID = @ID";

                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn2"].ConnectionString);

                    con.Open();

                    try
                    {
                        SqlCommand com = new SqlCommand(query, con);
                        com.Parameters.AddWithValue("ID", ID);

                        SqlDataReader reader = com.ExecuteReader();

                        while (reader.Read())
                        {
                            TBNume.Text = reader["StartDate"].ToString();
                            TBAdresa.Text = reader["EndDate"].ToString();
                            TextBox1.Text = reader["FirstName"].ToString();
                            TextBox2.Text = reader["LastName"].ToString();
                            TextBox3.Text = reader["Age"].ToString();
                    }
                    }
                    catch (Exception ex)
                    {
                        LAnswer.Text = "Database select error : " + ex.Message;
                    }
                    finally
                    {
                        con.Close();
                    }
                }
                catch (Exception se)
                {
                    LAnswer.Text = "Database connexion error : " + se.Message;
                }
            
        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                try
                {
                    int ID = Int32.Parse(categoryDDL.SelectedItem.Value);
                    
                    string StartDate = TBNume.Text;
                    string EndDate = TBAdresa.Text;
                    string FirstName = TextBox1.Text;
                    string LastName = TextBox2.Text;
                    int Age = Int32.Parse(TextBox3.Text);

                    string query = "UPDATE Dentist SET StartDate = @StartDate, EndDate = @EndDate, FirstName = @FirstName, LastName = @LastName, Age = @Age WHERE ID = @ID";
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn2"].ConnectionString);

                    con.Open();

                    try
                    {
                        SqlCommand com = new SqlCommand(query, con);
                        com.Parameters.AddWithValue("StartDate", StartDate);
                        com.Parameters.AddWithValue("EndDate", EndDate);
                        com.Parameters.AddWithValue("FirstName", FirstName);
                        com.Parameters.AddWithValue("LastName", LastName);
                        com.Parameters.AddWithValue("Age", Age);
                        com.Parameters.AddWithValue("ID", ID);
                        com.ExecuteNonQuery();
                       
                        // Do this only if update works:
                        LAnswer.Text = "Edit saved successfully!";
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