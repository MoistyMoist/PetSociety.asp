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
           //GetEvents();
            //GetPets();
            GetUser();
        }

        protected void GetEvents()
        {
            List<EVENT> events;
            using (PetSocietyDBEntities db = new PetSocietyDBEntities())
            {
                var query = from c in db.EVENTs.Include("PIN.IMAGE")
                            select c;

                events = query.ToList();
            }
            for (int i = 0; i < events.Count; i++)
            {
                var x = events.ElementAt(i).X;
                var y = events.ElementAt(i).Y;
                var imageURl = "dsa";
                ClientScript.RegisterStartupScript(GetType(), "hwad" + i, "plot_locations(" + x + "," + y + ");", true);
                EventNO.Text = events.Count.ToString();
            }
        }
        
        protected void GetPets()
        {
            List<PET> pets;
            using (PetSocietyDBEntities db = new PetSocietyDBEntities())
            {
                var query = from c in db.PETs.Include("PIN.IMAGE")
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
                var query = from c in db.USERs.Include("PIN.IMAGE")
                            select c;

                users = query.ToList();
            }
            UserNO.Text = users.Count.ToString();
            for (int i = 0; i < users.Count; i++)
            {
                var x = users.ElementAt(i).X;
                var y = users.ElementAt(i).Y;
                var imageURl = "dsa";
                ClientScript.RegisterStartupScript(GetType(), "hwad" + i, "plot_locations(" + x + "," + y + ");", true);

            }
        }

        protected void GetLocations()
        {
            List<LOCATION> locations;
            using(PetSocietyDBEntities db = new PetSocietyDBEntities())
            {
                var query=from c in db.LOCATIONs.Include("PIN.IMAGE")
                              select c;

                 locations = query.ToList(); 
            }
            for (int i = 0; i < locations.Count; i++)
            {
                var x = locations.ElementAt(i).X;
                var y=locations.ElementAt(i).Y;
                var imageURl = "dsa";
                ClientScript.RegisterStartupScript(GetType(), "hwad" + i, "plot_locations(" + x+ "," + y+");", true);
                LocationNO.Text = locations.Count.ToString();
            }
        }
        
    }
}