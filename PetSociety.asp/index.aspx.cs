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
            GetLost();
            GetLocations();
            GetEvents();
            GetPets();
            GetUser();
        }

        protected void GetEvents()
        {
            List<EVENT> events;
            using (PetSocietyDBEntities db = new PetSocietyDBEntities())
            {
                var query = from c in db.EVENTs
                            select c;

                events = query.ToList();
            }
            for (int i = 0; i < events.Count; i++)
            {
                var x = events.ElementAt(i).X;
                var y = events.ElementAt(i).Y;
                ClientScript.RegisterStartupScript(GetType(), "fds" + i, "plot_events(" + x + "," + y + ");", true);
                EventNO.Text = events.Count.ToString();
            }
        }
        
        protected void GetPets()
        {
            List<PET> pets;
            using (PetSocietyDBEntities db = new PetSocietyDBEntities())
            {
                var query = from c in db.PETs
                            select c;

                pets = query.ToList();
            }
            PetNO.Text = pets.Count.ToString();
        }

        protected void GetUser()
        {
            List<USER> users;
            using (PetSocietyDBEntities db = new PetSocietyDBEntities())
            {
                var query = from c in db.USERs
                            select c;

                users = query.ToList();
            }
            UserNO.Text = users.Count.ToString();
            for (int i = 0; i < users.Count; i++)
            {
                var x = users.ElementAt(i).X;
                var y = users.ElementAt(i).Y;
                var imageURl = "dsa";
             ClientScript.RegisterStartupScript(GetType(), "hwad" + i, "plot_user(" + x + "," + y + ");", true);

            }
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
                var y= locations.ElementAt(i).Y;
                var imageURl = "dsa";
               ClientScript.RegisterStartupScript(GetType(), "ggfdj" + i, "plot_locations(" + x+ "," + y+");", true);
                LocationNO.Text = locations.Count.ToString();
            }
        }
        
        protected void GetLost()
        {
            List<LOST> losts;
            using (PetSocietyDBEntities db = new PetSocietyDBEntities())
            {
                var query = from c in db.LOSTs
                            select c;

                losts = query.ToList();
            }
            for (int i = 0; i < losts.Count; i++)
            {
                var x = losts.ElementAt(i).X;
                var y = losts.ElementAt(i).Y;
                ClientScript.RegisterStartupScript(GetType(), "lostt" + i, "plot_losts(" + x + "," + y + ");", true);
            }
        }
    }
}