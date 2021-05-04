using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

namespace WebCsAdoOmnivox
{
    public partial class readmessage : System.Web.UI.Page
    {
        static DBOmnivoxEntities omnivoxEntities = new DBOmnivoxEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            Int64 refMsg = Convert.ToInt64(Request.QueryString["refmsg"]);
            string senderName = Request.QueryString["sndr"].ToString();

            /* string conStr = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DaTADirectory|\DB_Omnivox.mdb;Persist Security Info=True";
             OleDbConnection mycon = new OleDbConnection(conStr);
             mycon.Open();
             string sql = "SELECT * FROM Messages WHERE RefMessage = " + refMsg;
             OleDbCommand mycmd = new OleDbCommand(sql, mycon);
             OleDbDataReader rdMsg = mycmd.ExecuteReader();*/

            Message msg = omnivoxEntities.Messages.Find(refMsg);
            if (msg != null)
            {
                celTitle.Text = msg.Title;
                celDate.Text = msg.CreatedDate.ToString();
                celSender.Text = senderName;
                celMessage.Text = msg.Message1;
                msg.New = false;
                omnivoxEntities.SaveChanges();
            }
        }

        protected void btnBack2Msg_Click(object sender, EventArgs e)
        {
            Response.Redirect("welcome.aspx");
        }
    }
}