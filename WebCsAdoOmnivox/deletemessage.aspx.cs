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
    public partial class deletemessage : System.Web.UI.Page
    {
        static DBOmnivoxEntities omnivoxEntities = new DBOmnivoxEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            Int64 refMsg = Convert.ToInt64(Request.QueryString["refmsg"]);
            omnivoxEntities.Messages.Remove(omnivoxEntities.Messages.Find(refMsg));
            omnivoxEntities.SaveChanges();
            Response.Redirect("welcome.aspx");
        }
    }
}