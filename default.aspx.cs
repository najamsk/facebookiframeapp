using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Facebook;
using Facebook.Web;
using System.Configuration;
namespace fbnajam
{
    public partial class _default : Facebook.Web.CanvasIFrameBasePage
    {
        protected void Page_PreInit(object sender, EventArgs e)
        {
            base.RequireLogin = true;
        }
        protected void Page_Load(object sender, EventArgs e)
        {

            Literal1.Text = Api.Users.GetInfo().name;
           
            
        }
    }
}