﻿using Domain.Entities.Other;
using Domain.Enums;

namespace Domain.Entities;

public class Saller : BaseEntity
{
    public string Name { get; set; } = null!;
    public string Phone { get; set; } = null!;
    public string Email { get; set; } = null!;
    //public string Password { get; set; } = null!;
    //public UserRole Role => UserRole.Saller;
    public long NId { get; set; }

    public string UserId { get; set; } = null!;

    public ICollection<Product> Products { get; set; } = null!;

}