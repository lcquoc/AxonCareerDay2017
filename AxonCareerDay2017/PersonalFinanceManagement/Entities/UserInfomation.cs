using System;

namespace PersonalFinanceManagement.Entities
{
    public class UserInfomation
    {
        public int UserId { get; set; }

        public string Name { get; set; }

        public DateTime Birthday { get; set; }

        public bool Gender { get; set; }

        public string PhoneNumber { get; set; }

        public decimal DailyLevel { get; set; }

        public decimal WeeklyLevel { get; set; }
        
        public decimal MonthlyLevel { get; set; }
    }
}