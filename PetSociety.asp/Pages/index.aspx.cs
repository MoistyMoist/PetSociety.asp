using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PetSociety.asp.Pages
{
    public partial class index : System.Web.UI.Page
    {
/*
        protected void init(object o, EventArgs e)
        {
            CountPets();
            CountUsers();
            CountLocations();
            CountEvents();

            //load the points in map function
            GetLocations();
            //ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "tmp", "<script type='text/javascript'>plot_locations(1,2,3);</script>", false);
            GetLosts();
            //ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "tmp", "<script type='text/javascript'>plot_strays();</script>", false);
            GetStrays();
            //ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "tmp", "<script type='text/javascript'>plot_losts();</script>", false);
            GetEvents();
            //ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "tmp", "<script type='text/javascript'>plot_events();</script>", false);
        }
  */
        protected void Page_Load(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "tmp", "<script type='text/javascript'>disp_confirm();</script>", false);
            //ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "plot", "<script type='text/javascript'>plot_locations();</script>", false);
        }
        protected void GetEvents()
        {
            
        }
        protected void GetLocations()
        {
            
        }
        protected void GetLosts()
        {
            
        }
        protected void GetStrays()
        {
            
        }

        protected String CountUsers()
        {
            return null;
        }
        protected String CountPets()
        {
            return null;
        }
        protected String CountLocations()
        {
            return null;
        }
        protected String CountEvents()
        {
            return null;
        }
    }
}