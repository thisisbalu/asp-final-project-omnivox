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
    public partial class index : System.Web.UI.Page
    {
        static DBOmnivoxEntities omnivoxEntities;
        static string studNumber, pwd;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                omnivoxEntities = new DBOmnivoxEntities();
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {

            //==================Entity LINQ Version==========================
            studNumber = txtStudentNumber.Text.Trim();
            pwd = txtPassword.Text.Trim();
            Member myUser = omnivoxEntities.Members.FirstOrDefault(u => u.StudentNumber == studNumber && u.StudentPassword == pwd);

            if (myUser != null)    //User was found
            {
                Session["MemberID"] = myUser.RefMember;
                Response.Redirect("welcome.aspx?refMem=" + myUser.RefMember.ToString());
            }
            else
            {
                lblError.Text = "Username and/or Password do not match our records. Try again.";
            }


            // DATA READER
            /*string username, pwd, sql;

            string conStr = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DaTADirectory|\DB_Omnivox.mdb;Persist Security Info=True";
            OleDbConnection mycon = new OleDbConnection(conStr);
            mycon.Open();
            
            username = txtStudentNumber.Text.Trim();
            pwd = txtPassword.Text.Trim();

            sql = "SELECT RefMember, StudentNumber, StudentName, StudentPassword " +
                "FROM Members WHERE(StudentNumber = '" + username + "') AND " +
                "(StudentPassword = '" + pwd + "')";

            OleDbCommand mycmd = new OleDbCommand(sql, mycon);
            OleDbDataReader rdMember = mycmd.ExecuteReader();
            if (rdMember.HasRows) // user exists
            {
                rdMember.Read();
                Int32 refm = Convert.ToInt32(rdMember["RefMember"].ToString());
                mycon.Close();
                Session["MemberID"] = refm;
                //Server.Transfer("welcome.aspx?refMem=" + refm); // version 1

                Server.Transfer("welcome.aspx");



            }
            mycon.Close();
            lblError.Text = "Username and/or pasword invalid, Try again";*/
        }

        protected void btnLink_Click(object sender, EventArgs e)
        {
            Server.Transfer("register.aspx");
        }
    }
}