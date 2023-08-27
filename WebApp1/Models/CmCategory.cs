﻿using System;
using System.Collections.Generic;

namespace WebApp1.Models;

public partial class CmCategory
{
    public int Id { get; set; }

    public string Name { get; set; } = null!;

    public string? ImagePath { get; set; }
}
