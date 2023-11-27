using Microsoft.AspNetCore.Mvc;
using quan_ly_do_boi.Models;

namespace quan_ly_do_boi.Controllers
{
    public class UserController : Controller
    {
        public IActionResult IsAdmin()
        {
            if (IsAdmin==true)
                return View(Admin);
            return View(User);
        }

        public IActionResult Index()
        {

            return View( );
        }
    }
}
