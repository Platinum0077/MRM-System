using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_Final
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        SqlCommand cmd;
        SqlDataAdapter da;
        DataTable dt;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                filldrop();
            }
        }


        public void filldrop()
        {
            string sqlquery = "SELECT * from SystemData";
            SqlDataAdapter da = new SqlDataAdapter(sqlquery, con);
            dt = new DataTable();
            da.Fill(dt);
            DropDownList1.DataSource = dt;
            DropDownList1.DataValueField = "PO_No";
            DropDownList1.DataTextField = "PO_No";
            DropDownList1.DataBind();
            
            ListItem SelectItem = new ListItem("--Select PO_No--", "-1");
            SelectItem.Selected = true;
            DropDownList1.Items.Insert(0, SelectItem);
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            Response.Write("Connection is OK!!");
            SqlCommand cmd = new SqlCommand("insert into UserData values('" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + DropDownList1.SelectedValue + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();


            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ScriptKey", "alert('Form Submitted');window.location='home.aspx'; ", true);

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue == "-1")
            {
                Response.Write("Select a PO Number");
            }
            else
            {
                //Response.Write("Selected item Text is: " + DropDownList1.SelectedItem.Text + "<br>");
                //Response.Write("Selected item Value is: " + DropDownList1.SelectedItem.Value + "<br>");
                //Response.Write("Selected item Index is: " + DropDownList1.SelectedIndex + "<br>");
                con.Open();
                SqlCommand comm = new SqlCommand("select * from SystemData where PO_No = '" + DropDownList1.SelectedItem.Text + "'", con);
                dr = comm.ExecuteReader();
                while (dr.Read())
                {
                    TextBox11.Text = (String.Format("{0}", dr[1]));
                    TextBox1.Text = (Convert.ToDateTime(dr[2]).ToString("yyyy-MM-dd"));
                    TextBox12.Text = (String.Format("{0}", dr[3]));
                    TextBox10.Text = (Convert.ToDateTime(dr[2]).ToString("yyyy-MM-dd"));
                }

            }
        }

    }
}