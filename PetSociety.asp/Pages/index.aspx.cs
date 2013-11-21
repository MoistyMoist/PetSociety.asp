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
            // ClientScript.RegisterStartupScript(GetType(), "hwa", "WelcomeUser('http://petsociety.azurewebsites.net/api/Login?token=token&INemail=super@mail.com&INpassword=password');", true);
            
           
                //ClientScript.RegisterStartupScript(GetType(), "hwafd", "plot_locations();", true);

           
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
                // ClientScript.RegisterStartupScript(GetType(), "hwafd", "plot_locations("+locations.ElementAt(i).X+");", true);
                ClientScript.RegisterStartupScript(GetType(), "hwad"+i, "plot_events(" + -25.363882 + "," + 132.044922 + ");", true);
            }
        }
        
    }
}