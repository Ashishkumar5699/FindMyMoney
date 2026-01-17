using System.Globalization;

namespace FindMyMoney.UI.Converters;

/// <summary>
/// Converter that checks if a string is not null or empty.
/// Useful for conditional visibility based on string content.
/// </summary>
public class StringIsNotNullOrEmptyConverter : IValueConverter
{
    /// <summary>
    /// Converts a string to a boolean indicating if it's not null or empty
    /// </summary>
    public object Convert(object? value, Type targetType, object? parameter, CultureInfo culture)
    {
        if (value is string stringValue)
        {
            return !string.IsNullOrEmpty(stringValue);
        }
        return false;
    }

    /// <summary>
    /// Converts back - not implemented as it's one-way binding
    /// </summary>
    public object ConvertBack(object? value, Type targetType, object? parameter, CultureInfo culture)
    {
        throw new NotImplementedException();
    }
}
