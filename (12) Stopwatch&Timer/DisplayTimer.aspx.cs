using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StopwatchDemo
{
    public partial class DisplayTimer : System.Web.UI.Page
    {
        static int mins, secs = 60;

        protected void btnstart_Click(object sender, EventArgs e)
        {
            btnstart.Enabled = false;
            mins = int.Parse(txttime.Text);
            lbltimer.Text = mins + "m : " + "0s";
            //decrement mins
            mins--;
            secs = 60;
            Timer1.Enabled = true;
            btnstop.Enabled = true;
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            if(mins >= 0)
            {
                if(secs > 0)
                {
                    secs--;
                    lbltimer.Text = mins + "m : " + secs + "s";
                }
                else
                {
                    mins--;
                    secs = 60;
                }
            }
            else
            {
                Timer1.Enabled = false;
            }
        }

        protected void btnstop_Click(object sender, EventArgs e)
        {
            Button temp = (Button)sender;
            if (temp.Text.Equals("Stop"))
            {
                btnstop.Text = "Resume";
                Timer1.Enabled = false;
            }
            else if(temp.Text.Equals("Resume"))
            {
                btnstop.Text = "Stop";
                Timer1.Enabled = true;
            }
        }

        protected void btnreset_Click(object sender, EventArgs e)
        {
            btnstart.Enabled = true;
            txttime.Text = "";
            btnstop.Enabled = false;
            Timer1.Enabled = false;
            //mins = 0;
            lbltimer.Text = "";
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}