using Microsoft.AspNetCore.Mvc;
using quan_ly_do_boi.Models;
namespace quan_ly_do_boi.Controllers
{
    public class AdminController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
        public IActionResult Privacy()
        {
            return View();
        }
    }
}
