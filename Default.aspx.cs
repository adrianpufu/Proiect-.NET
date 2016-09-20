using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace pregatiretest
{
    public partial class AddLocation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
          
                try
                {


                    string StartDate = TBNume.Text;
                    string EndDate = TBAdresa.Text;
                    string FirstName = TextBox1.Text;
                    string LastName = TextBox2.Text;
                    int Age = Int32.Parse(TextBox3.Text);


                string query = "INSERT INTO Dentist (StartDate, EndDate, FirstName, LastName, Age) Values (@StartDate, @EndDate, @FirstName, @LastName, @Age)";

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

                    com.ExecuteNonQuery();

                        // Do this only if update works:
                        LAnswer.Text = "Add saved successfully!";
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