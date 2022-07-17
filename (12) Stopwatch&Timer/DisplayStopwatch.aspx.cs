using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StopwatchDemo
{
    public partial class DisplayStopwatch : System.Web.UI.Page
    {
        static int mins, secs;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            secs++;
            lblsecs.Text = secs.ToString();
            if(secs > 59)
            {
                mins++;
                lblmins.Text = mins.ToString();
                secs = 0;
            }
        }

        protected void btnstop_Click(object sender, EventArgs e)
        {
            Timer1.Enabled = false;
            Button temp = (Button)sender;
            if (temp.Text.Equals("Stop"))
            {
                btnstop.Text = "Resume";
                Timer1.Enabled = false;
            }
            else if (temp.Text.Equals("Resume"))
            {
                btnstop.Text = "Stop";
                Timer1.Enabled = true;
            }
        }

        protected void btnrestart_Click(object sender, EventArgs e)
        {
            lblmins.Text = "0";
            lblsecs.Text = "0";
        }

        protected void btnstart_Click(object sender, EventArgs e)
        {
            Timer1.Enabled = true;
            lblmins.Text = mins.ToString();
            lblsecs.Text = secs.ToString();
        }
    }
}