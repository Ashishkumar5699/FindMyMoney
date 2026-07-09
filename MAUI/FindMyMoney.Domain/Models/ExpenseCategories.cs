namespace FindMyMoney.Domain.Models;

public static class ExpenseCategories
{
    public static readonly Dictionary<string, List<string>> Map = new()
    {
        ["Food & Dining"]     = ["Restaurant", "Fast Food", "Coffee/Tea", "Groceries", "Home Cooking", "Sweets & Bakery"],
        ["Transportation"]    = ["Fuel", "Auto/Rickshaw", "Cab/Uber/Ola", "Public Transport", "Parking", "Vehicle Maintenance"],
        ["Shopping"]          = ["Clothes", "Electronics", "Books & Stationery", "Home Goods", "Online Shopping", "Accessories"],
        ["Entertainment"]     = ["Movies/OTT", "Gaming", "Events/Concerts", "Sports", "Hobbies"],
        ["Bills & Utilities"] = ["Electricity", "Water", "Internet/DTH", "Phone/Mobile", "Gas", "Rent/EMI"],
        ["Healthcare"]        = ["Doctor/Consultation", "Medicines", "Hospital", "Fitness/Gym", "Lab Tests"],
        ["Education"]         = ["School/College Fees", "Online Courses", "Books", "Stationery", "Coaching"],
        ["Travel"]            = ["Hotel/Stay", "Flight", "Train/Bus", "Local Travel", "Sightseeing"],
        ["Personal Care"]     = ["Salon/Haircut", "Skincare", "Grooming", "Spa/Wellness"],
        ["Gifts & Donations"] = ["Gifts", "Charity/NGO", "Religious/Temple", "Wedding Gifts"],
        ["Other"]             = ["Miscellaneous", "ATM/Cash", "Bank Charges", "Unknown"],
    };

    public static List<string> GetSubCategories(string category) =>
        Map.TryGetValue(category, out var list) ? list : [];

    public static IEnumerable<string> AllCategories => Map.Keys;
}
