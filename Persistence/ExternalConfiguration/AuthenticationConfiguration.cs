﻿namespace Persistence.ExternalConfiguration
{
    public class AuthenticationConfiguration
    {
        public string Key { get; set; } = null!;
        public string Issuer { get; set; }   = null!;
        public string Audience { get; set; } = null!;
        public int AvailavleDays { get; set; }

    }
}