using System.Globalization;

namespace FindMyMoney.UI.Converters;

/// <summary>
/// Converter that inverts a boolean value.
/// Useful for toggling visibility based on inverted conditions.
/// </summary>
public class InvertedBoolConverter : IValueConverter
{
    /// <summary>
    /// Converts a boolean value to its inverse
    /// </summary>
    public object Convert(object? value, Type targetType, object? parameter, CultureInfo culture)
    {
        if (value is bool boolValue)
        {
            return !boolValue;
        }
        return false;
    }

    /// <summary>
    /// Converts back from an inverted boolean value
    /// </summary>
    public object ConvertBack(object? value, Type targetType, object? parameter, CultureInfo culture)
    {
        if (value is bool boolValue)
        {
            return !boolValue;
        }
        return false;
    }
}
