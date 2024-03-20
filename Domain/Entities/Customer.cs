﻿namespace Domain.Entities;

public class Customer
{
    public int Id { get; set; }
    public string Name { get; set; } = null!;
    public string? Image { get; set; }
    public string Phone { get; set; } = null!;
    public string Email { get; set; } = null!;
    public string Password { get; set; } = null!;
}