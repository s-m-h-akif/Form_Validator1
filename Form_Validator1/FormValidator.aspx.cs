using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Form_Validator1
{
    public partial class FormValidator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            int value = Convert.ToInt32(args.Value);
           if(value % 2 == 0)
            {
                args.IsValid = true;
            }
           else
            {
                args.IsValid = false;
            }
       }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}