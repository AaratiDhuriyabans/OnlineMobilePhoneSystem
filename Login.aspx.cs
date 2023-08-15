using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
          try
        {
            string strcmd = "select userid,pass,roleid,active,fullname from registration_mst where username='" + txtusername.Text + "'";
            DataTable dt = new DataTable();
            dt = SQLHelper.FillData(strcmd);
            if (dt.Rows.Count > 0)
            {
                bool isActive = Convert.ToBoolean(dt.Rows[0]["active"]);
                if (isActive)
                {
                    string strpass = dt.Rows[0]["pass"].ToString();
                    if (txtpassword.Text == strpass)
                    {
                        Session["roleid"] = dt.Rows[0]["roleid"].ToString();
                        Session["username"] = txtusername.Text;
                        Session["userid"] = dt.Rows[0]["userid"].ToString();
                        Session["fullname"] = dt.Rows[0]["fullname"].ToString();
                        if (Session["roleid"].ToString() == "1")
                        {
                            Response.Redirect("~//Admin//Default.aspx");
                        }
                        else
                        {
                            Response.Redirect("~//User//Product.aspx");
                        }
                    }

                    else
                    {
                        lblmsg.Text = "InValid Password";
                    }
                }
                else
                {
                    lblmsg.Text = "Account is disabled by Administrator";
                }
            }
            else
            {
                lblmsg.Text = "InValid Username";
            }
        }
        catch (Exception ex)
        {

            throw ex;
        }
    }
    }
