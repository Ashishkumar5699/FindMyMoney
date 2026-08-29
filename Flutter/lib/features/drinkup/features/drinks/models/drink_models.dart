enum DrinkCategory { beer, whisky, gin, vodka, rum, wine, cocktail, nonAlcoholic }

class DrinkRecipe {
  final String id;
  final String name;
  final String emoji;
  final DrinkCategory category;
  final String tagline;
  final String occasion;       // Party / Chill / Date Night / Game Night
  final String difficulty;     // Easy / Medium / Hard
  final int prepMinutes;
  final List<String> ingredients;
  final List<String> steps;
  final List<String> tags;

  const DrinkRecipe({
    required this.id,
    required this.name,
    required this.emoji,
    required this.category,
    required this.tagline,
    required this.occasion,
    required this.difficulty,
    required this.prepMinutes,
    required this.ingredients,
    required this.steps,
    required this.tags,
  });

  String get categoryLabel => switch (category) {
    DrinkCategory.beer         => 'Beer',
    DrinkCategory.whisky       => 'Whisky',
    DrinkCategory.gin          => 'Gin',
    DrinkCategory.vodka        => 'Vodka',
    DrinkCategory.rum          => 'Rum',
    DrinkCategory.wine         => 'Wine',
    DrinkCategory.cocktail     => 'Cocktail',
    DrinkCategory.nonAlcoholic => 'Mocktail',
  };
}
