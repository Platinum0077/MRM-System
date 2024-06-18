using ClosedXML.Excel;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_Final
{
    public partial class Tables : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        DataTable dt;
        SqlDataAdapter da;

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack) { 

                string query = "SELECT * from SystemData INNER JOIN UserData ON SystemData.PO_NO = UserData.PO_NO ";
                dt = new DataTable();
                con.Open();
                da = new SqlDataAdapter( query, this.con);
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    ViewState["EICIODATA"] = dt;
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }

            }


        }
        /*
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Clear();
            Response.Buffer = true;
            Response.ContentType = "application/";
            Response.AddHeader("content-disposition","attachment; filename=UserInfo.xls");
            Response.Charset = "";
            StringWriter sw = new StringWriter();
            HtmlTextWriter writer = new HtmlTextWriter(sw);
            GridView1.RenderControl(writer);
            Response.Output.Write(sw.ToString());
            Response.Close();
            Response.End();
        }
        
        public override void VerifyRenderingInServerForm(Control control)
        {

        }
        */
        /*
        protected void Button1_Click(object sender, EventArgs e)
        {
            
            DataTable dt = (DataTable)ViewState["EICIODATA"];

           
                using (XLWorkbook wb = new XLWorkbook())
                {
                    wb.Worksheets.Add(dt, "Testing");
                    Response.Clear();
                    Response.Buffer = true;
                    Response.Charset = "";
                    Response.ContentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
                    Response.AddHeader("content-disposition", "attachment;filename=Testing.xlsx");
                    using (MemoryStream ms = new MemoryStream())
                    {
                        wb.SaveAs(ms);
                        ms.WriteTo(Response.OutputStream);
                        Response.Flush();
                        Response.End();

                    }

            
                }
        

            
           
        }*/
    }
}