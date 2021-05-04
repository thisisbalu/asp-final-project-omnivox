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
    public partial class compose : System.Web.UI.Page
    {
        static DBOmnivoxEntities omnivoxEntities = new DBOmnivoxEntities();
           /* string conStr = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\DB_Omnivox.mdb;Persist Security Info=True";
            OleDbConnection mycon = new OleDbConnection() ;*/
        protected void Page_Load(object sender, EventArgs e)
        {
            /*mycon.ConnectionString = conStr;
            mycon.Open();*/
           /* string sql = "SELECT RefMember, StudentName From Members";
            OleDbCommand mycmd = new OleDbCommand(sql, mycon);
            OleDbDataReader rdReceivers = mycmd.ExecuteReader();*/

            foreach (Member m in omnivoxEntities.Members)
            {
                string tmp = m.StudentName + " (" + m.RefMember.ToString() + ")";
                ListItem itm = new ListItem(tmp, m.RefMember.ToString());
                cboReceivers.Items.Add(itm);
                
            }

        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            /*mycon.ConnectionString = conStr;
            mycon.Open();
            string sql = "INSERT INTO Messages(Title, Message, Sender, Receiver) " + 
                " VALUES(@tit, @msg, @snd, @rcv)";
            OleDbCommand mycmd = new OleDbCommand(sql, mycon);*/

            Message msg = new Message();
            msg.Message1 = txtMessage.Text;
            msg.Title = txtMessage.Text;
            msg.Sender = Convert.ToInt32(Session["MemberID"]);
            msg.Receiver = Convert.ToInt32(cboReceivers.SelectedItem.Value);
            msg.New = true;
            omnivoxEntities.Messages.Add(msg);
            omnivoxEntities.SaveChanges();
            Response.Redirect("welcome.aspx");

        }
    }
}