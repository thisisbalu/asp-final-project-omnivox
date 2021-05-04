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
    public partial class welcome : System.Web.UI.Page
    {
        int count = 0;
        static DBOmnivoxEntities omnivoxEntities;

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                omnivoxEntities = new DBOmnivoxEntities();
                Int32 refMemb = Convert.ToInt32(Session["MemberID"]);

                Member myUser = omnivoxEntities.Members.FirstOrDefault(u => u.RefMember == refMemb);


                var msge = (from Message message in omnivoxEntities.Messages
                            join Member member in omnivoxEntities.Members
                            on message.Sender equals member.RefMember
                            where message.Receiver == refMemb
                            select new { message.RefMessage, message.Title, message.Sender, message.New, message.Receiver, member.StudentName }).ToList();

                for (int i = 0; i < msge.Count; i++)
                {
                    TableRow aRow = new TableRow();

                    TableCell aCell = new TableCell();
                    aCell.Controls.Add(new LiteralControl(msge[i].StudentName.ToString()));
                    aCell.DataBind();

                    TableCell bCell = new TableCell();
                    bCell.Controls.Add(new LiteralControl(msge[i].Title.ToString()));
                    bCell.DataBind();

                    TableCell cCell = new TableCell();
                    LinkButton btnRdMsg = new LinkButton();
                    btnRdMsg.ID = "btnRdMsg" + msge[i].RefMessage.ToString();
                    btnRdMsg.Text = "Read ";
                    btnRdMsg.PostBackUrl = "readMessage.aspx?refmsg=" + msge[i].RefMessage.ToString() + "&sndr=" + msge[i].StudentName;
                    cCell.Controls.Add(btnRdMsg);

                    LinkButton btnDlMsg = new LinkButton();
                    btnDlMsg.ID = "btnDlMsg" + msge[i].RefMessage.ToString();
                    btnDlMsg.Text = "  Delete";
                    btnDlMsg.PostBackUrl = "deletemessage.aspx?refmsg=" + msge[i].RefMessage.ToString();
                    cCell.Controls.Add(btnDlMsg);

                    aRow.Cells.Add(aCell);
                    aRow.Cells.Add(bCell);
                    aRow.Cells.Add(cCell);
                    if (Convert.ToBoolean(msge[i].New) == true)
                    {
                        aRow.BackColor = System.Drawing.Color.DarkSalmon;
                        count++;
                    }


                    tabMessages.Rows.Add(aRow);
                }
                litInfo.Text = "Welcome, you have " + count + " new message(s)";
            }
        }

        protected void btnCompose_Click(object sender, EventArgs e)
        {
            Server.Transfer("compose.aspx");
        }
    }
}