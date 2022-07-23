using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using RealEstate.Models;
using Microsoft.AspNetCore.Http;

namespace RealEstate.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class RegisterHouseController : ControllerBase
    {

        RealEstateDbContext db = new RealEstateDbContext();
        [HttpGet]
        public List<TblVenderProperty> Get()
        {
            return db.TblVenderProperties.ToList();
        }


        [HttpPost]
        public IActionResult Post([FromBody] TblVenderProperty property)
        {

            db.TblVenderProperties.Add(property);
            db.SaveChanges();
            return Ok();
        }

        [HttpDelete]
        public string Delete([FromBody] string userName)
        {

            var tblsampleObj = db.TblVenderProperties.Where(x => x.UserName == userName).FirstOrDefault();
            if (tblsampleObj != null)
            {
                db.TblVenderProperties.Remove(tblsampleObj);
                db.SaveChanges();
                return "Success";
            }

            return "Fail";
        }

    }
}
