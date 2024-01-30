using Newtonsoft.Json;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Testing
{
    public partial class active2 : Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }


        [Serializable]
        public class ApproveGames
        {
            public int Id { get; set; }
            public string GameCode { get; set; }
            public string PrintDescription { get; set; }
            public int TextFieldCount { get; set; }
            public int MaxCombi { get; set; }
            public int CombiLength { get; set; }
            public bool IsActive{ get; set; }
            public bool IsLocal { get; set; }
            public DateTime? DateTimeCreadted { get; set; }
            public decimal WinningValueHigh { get; set; }
            public decimal WinningValueLow { get; set; }
            public decimal CommissionA { get; set; }
            public decimal CommissionB { get; set; }
            public int LowEndingLimit { get; set; }
            public int HighEndingLimit { get; set; }
            public decimal BackPayTypeA { get; set; }
            public decimal BackPayTypeB { get; set; }
        }

        protected void viewBtn_click(object sender, EventArgs e)
        {
            string jsonString = "";
            //SqlConnection conn = new SqlConnection(connectionString);
            //SqlCommand cmd = new SqlCommand("Select * From fnApprovedGames()", conn);
            //conn.Open();

            //SqlDataReader reader = cmd.ExecuteReader();
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand("select * from fnApprovedGames()", conn);

                try
                {
                    conn.Open(); 
                    
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        List<ApproveGames> _appGames = new List<ApproveGames>();

                        while (reader.Read())
                        {
                            ApproveGames chart = new ApproveGames();
                            chart.Id = int.Parse(reader[0].ToString());
                            chart.GameCode = reader[1].ToString();
                            chart.PrintDescription = reader[2].ToString();
                            chart.TextFieldCount = int.Parse(reader[3].ToString());
                            chart.MaxCombi = int.Parse(reader[4].ToString());
                            chart.CombiLength = int.Parse(reader[5].ToString());
                            chart.IsActive = bool.Parse(reader[6].ToString());
                            chart.IsLocal = bool.Parse(reader[7].ToString());
                           // chart.DateTimeCreadted = DateTime.Parse(reader[8].ToString());
                            if (reader.IsDBNull(8))
                            {
                                chart.DateTimeCreadted = null;
                            }
                            else
                            {
                                chart.DateTimeCreadted = DateTime.Parse(reader[8].ToString());
                            }

                            chart.WinningValueHigh = decimal.Parse(reader[9].ToString());
                            chart.WinningValueLow = decimal.Parse(reader[10].ToString());
                            chart.CommissionA = decimal.Parse(reader[11].ToString());
                            chart.CommissionB = decimal.Parse(reader[12].ToString());
                            chart.LowEndingLimit = int.Parse(reader[13].ToString());
                            chart.HighEndingLimit = int.Parse(reader[14].ToString());
                            chart.BackPayTypeA = decimal.Parse(reader[15].ToString());
                            chart.BackPayTypeB = decimal.Parse(reader[16].ToString());

                            _appGames.Add(chart);
                        }
                        // new row creation
                        foreach (var game in _appGames)
                        {
                            TableRow row = new TableRow();

                            TableCell cell1 = new TableCell();
                            cell1.Text = game.GameCode;
                            row.Cells.Add(cell1);

                            TableCell cell2 = new TableCell();
                            cell2.Text = game.PrintDescription;
                            row.Cells.Add(cell2);

                            // Add row
                            activegame.Rows.Add(row);
                        }

                    }
                } catch (Exception ex)
                {

                } 
            }
        }
    
    }
}