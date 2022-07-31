using Microsoft.AspNetCore.Identity;
using System.Collections.Generic;

namespace ProvaEsame.DB.Entities
{
    public class Role
    {
        public IdentityRole IdentityRole { get; set; }
        public List<IdentityRoleClaim<string>> RoleClaims { get; set; }

    }
}
