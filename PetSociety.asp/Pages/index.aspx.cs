using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using System.Timers;
namespace PetSociety.asp.Pages
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
   
        }
        protected void Page_LoadComplete(object sender, EventArgs e)
        {
            startPlotting(null, null);
        }

        void startPlotting(object source, EventArgs e)
        {
            GetLocations();
            GetEvents();
            GetStrays();
            GetLost();
        }

        protected void GetEvents()
        {
            
        }
        
        protected void GetStrays()
        {
            
        }

        protected void GetLost()
        {
            
        }

        protected void GetLocations()
        {
            List<LOCATION> locations;
            using(PetSocietyDBEntities db = new PetSocietyDBEntities())
            {
                var query=from c in db.LOCATIONs
                              select c;

                 locations = query.ToList(); 
            }
            for (int i = 0; i < locations.Count; i++)
            {
                var x = locations.ElementAt(i).X;
                var y=locations.ElementAt(i).Y;
                var imageURl = locations.ElementAt(i).PIN.IMAGE.ImageURL;
                ClientScript.RegisterStartupScript(GetType(), "hwad" + i, "plot_locations(" + x+ "," + y+ ","+imageURl +");", true);
                LocationNO.Text = locations.Count.ToString();
            }
        }
        
    }
}