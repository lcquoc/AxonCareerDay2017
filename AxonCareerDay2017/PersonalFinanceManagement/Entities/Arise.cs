using System;

namespace PersonalFinanceManagement.Entities
{
    public class Arise
    {
        public int Id { get; set; }

        public int UserId { get; set; }

        public bool Type { get; set; }

        public DateTime Date { get; set; }

        public decimal Money { get; set; }

        public string Description { get; set; }
    }
}