using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using quan_ly_do_boi.Models;

namespace Light_Garden.Data
{
    public class Light_GardenContext : DbContext
    {
        public Light_GardenContext (DbContextOptions<Light_GardenContext> options)
            : base(options)
        {
        }

        public DbSet<Account> Accounts { get; set; } = default!;
    }
}
