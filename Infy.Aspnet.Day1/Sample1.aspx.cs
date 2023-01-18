using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Infy.Aspnet.Day1
{
    public partial class Sample1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write("Page Load Event");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Write("Button1 Event");
        }


        protected void Button2_Click2(object sender, EventArgs e)
        {
            Response.Write("Button2 event");

        }
    }
}