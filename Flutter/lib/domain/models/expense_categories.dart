class ExpenseCategories {
  static const Map<String, List<String>> map = {
    'Food & Dining': [
      'Restaurant',
      'Fast Food',
      'Coffee/Tea',
      'Groceries',
      'Home Cooking',
      'Sweets & Bakery',
    ],
    'Transportation': [
      'Fuel',
      'Auto/Rickshaw',
      'Cab/Uber/Ola',
      'Public Transport',
      'Parking',
      'Vehicle Maintenance',
    ],
    'Shopping': [
      'Clothes',
      'Electronics',
      'Books & Stationery',
      'Home Goods',
      'Online Shopping',
      'Accessories',
    ],
    'Entertainment': [
      'Movies/OTT',
      'Gaming',
      'Events/Concerts',
      'Sports',
      'Hobbies',
    ],
    'Bills & Utilities': [
      'Electricity',
      'Water',
      'Internet/DTH',
      'Phone/Mobile',
      'Gas',
      'Rent/EMI',
    ],
    'Healthcare': [
      'Doctor/Consultation',
      'Medicines',
      'Hospital',
      'Fitness/Gym',
      'Lab Tests',
    ],
    'Education': [
      'School/College Fees',
      'Online Courses',
      'Books',
      'Stationery',
      'Coaching',
    ],
    'Travel': [
      'Hotel/Stay',
      'Flight',
      'Train/Bus',
      'Local Travel',
      'Sightseeing',
    ],
    'Personal Care': [
      'Salon/Haircut',
      'Skincare',
      'Grooming',
      'Spa/Wellness',
    ],
    'Gifts & Donations': [
      'Gifts',
      'Charity/NGO',
      'Religious/Temple',
      'Wedding Gifts',
    ],
    'Other': [
      'Miscellaneous',
      'ATM/Cash',
      'Bank Charges',
      'Unknown',
    ],
  };

  static List<String> get allCategories => map.keys.toList();

  static List<String> getSubCategories(String category) =>
      map[category] ?? [];
}
