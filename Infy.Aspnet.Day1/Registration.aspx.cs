using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Infy.Aspnet.Day1
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CvBevarages_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = ChkBeverages.SelectedItem != null;
        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            if(Page.IsValid)
            {
                Response.Redirect("Sample1.aspx.cs");
            }
        }
    }
}