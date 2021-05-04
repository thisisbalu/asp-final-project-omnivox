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
    public partial class register : System.Web.UI.Page
    {
        static DBOmnivoxEntities omnivoxEntities;
        static string studNumber, email;
        static Int32 yearB;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                omnivoxEntities = new DBOmnivoxEntities();
            }
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            studNumber = txtStudentNumber.Text.Trim();
            Member myUser = omnivoxEntities.Members.FirstOrDefault(u => u.StudentNumber == studNumber);
            if (myUser != null)    //User already registered
            {
                lblError.Text = "You are already registered. Check your email for password.";
            }
            else
            {
                yearB = Convert.ToInt32(txtBirthYear.Text.Trim());
                email = txtEmail.Text.Trim();
                Student myStudent = omnivoxEntities.Students.FirstOrDefault(u => u.StudentNumber == studNumber && u.Email == email && u.Birthdate.Value.Year == yearB);
                if (myStudent == null)   
                {
                    lblError.Text = "To register you need to be a student of the College LaSalle";
                }
                else
                {
                    Member newMb = new Member();
                    newMb.StudentNumber = myStudent.StudentNumber;
                    newMb.Email = myStudent.Email;
                    newMb.StudentName = myStudent.StudentName;
                    newMb.StudentPassword = txtPassword.Text.Trim();
                    newMb.Status = "active";
                    omnivoxEntities.Members.Add(newMb);
                    omnivoxEntities.SaveChanges();
                    Response.Redirect("default.aspx");
                }
            }


            /*string conStr = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DaTADirectory|\DB_Omnivox.mdb;Persist Security Info=True";
            OleDbConnection mycon = new OleDbConnection(conStr);
            mycon.Open();

            // First: Verify if the memeber already exist
            string studNumber = txtStudentNumber.Text.Trim();
            string sql = "SELECT * FROM Members WHERE StudentNumber = @nb";
            OleDbCommand mycmd = new OleDbCommand(sql, mycon);
            mycmd.Parameters.AddWithValue("nb", studNumber);
            OleDbDataReader myRder = mycmd.ExecuteReader();
            if (myRder.HasRows)
            {
                mycon.Close();
                lblError.Text = "Member already exist, Check your email for password.";
                return;
            }

            // Second: Verify if the candidate is student of the college
            string email = txtEmail.Text.Trim();
            Int32 yearB = Convert.ToInt32(txtBirthYear.Text);
            sql = "SELECT [Number], StudentName, Birthdate, Email FROM Students WHERE [Number] = @num AND Email = @eml AND Year(Birthdate) = @yrb";
            mycmd = new OleDbCommand(sql, mycon);
            mycmd.Parameters.AddWithValue("num", studNumber);
            mycmd.Parameters.AddWithValue("eml", email);
            mycmd.Parameters.AddWithValue("yrb", yearB);
            OleDbDataReader myRder2 = mycmd.ExecuteReader();
            if (myRder2.HasRows == false)
            {
                mycon.Close();
                lblError.Text = "To be Member, You need to be Student of the College.";
                return;
            }
            string name="";
            if (myRder2.Read())
            {
                name = myRder2["StudentName"].ToString();
            }
            string passw = txtPassword.Text.Trim();
            // add this student as member
            sql = "INSERT INTO Members(StudentNumber, StudentName, StudentPassword, Email, Status) " +
                "VALUES(@num, @nam, @pwd, @eml, @stat)";
            OleDbCommand cmdInsert = new OleDbCommand(sql, mycon);
            cmdInsert.Parameters.AddWithValue("num", studNumber);
            cmdInsert.Parameters.AddWithValue("nam", name);
            cmdInsert.Parameters.AddWithValue("pwd", passw);
            cmdInsert.Parameters.AddWithValue("eml", email);
            cmdInsert.Parameters.AddWithValue("stat", "active");

            Int32 result = cmdInsert.ExecuteNonQuery();
            mycon.Close();
            Server.Transfer("index.aspx");*/
        }
    }
}