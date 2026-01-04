namespace FindMyMoney.Domain.Common;

/// <summary>
/// Represents the result of an operation that returns data.
/// Provides a structured way to handle success and failure cases without throwing exceptions.
/// </summary>
/// <typeparam name="T">The type of data returned on success</typeparam>
/// <example>
/// <code>
/// var result = await repository.GetUserAsync(userId);
/// if (result.IsSuccess)
/// {
///     var user = result.Data;
///     // Handle success
/// }
/// else
/// {
///     var error = result.Error;
///     // Handle failure
/// }
/// </code>
/// </example>
public class Result<T>
{
    /// <summary>
    /// Gets a value indicating whether the operation was successful
    /// </summary>
    public bool IsSuccess { get; private set; }

    /// <summary>
    /// Gets the data returned by the operation if successful; otherwise null
    /// </summary>
    public T? Data { get; private set; }

    /// <summary>
    /// Gets the primary error message if the operation failed; otherwise empty string
    /// </summary>
    public string Error { get; private set; } = string.Empty;

    /// <summary>
    /// Gets the collection of all error messages if the operation failed; otherwise empty list
    /// </summary>
    public List<string> Errors { get; private set; } = new();

    /// <summary>
    /// Private constructor to prevent direct instantiation.
    /// Use Success() or Failure() factory methods instead.
    /// </summary>
    private Result() { }

    /// <summary>
    /// Creates a successful result with the specified data
    /// </summary>
    /// <param name="data">The data to return</param>
    /// <returns>A successful Result containing the data</returns>
    public static Result<T> Success(T data)
    {
        return new Result<T>
        {
            IsSuccess = true,
            Data = data
        };
    }

    /// <summary>
    /// Creates a failed result with a single error message
    /// </summary>
    /// <param name="error">The error message describing the failure</param>
    /// <returns>A failed Result containing the error message</returns>
    public static Result<T> Failure(string error)
    {
        return new Result<T>
        {
            IsSuccess = false,
            Error = error,
            Errors = new List<string> { error }
        };
    }

    /// <summary>
    /// Creates a failed result with multiple error messages
    /// </summary>
    /// <param name="errors">The collection of error messages</param>
    /// <returns>A failed Result containing all error messages</returns>
    public static Result<T> Failure(List<string> errors)
    {
        return new Result<T>
        {
            IsSuccess = false,
            Error = errors.FirstOrDefault() ?? "An error occurred",
            Errors = errors
        };
    }
}

/// <summary>
/// Represents the result of an operation that doesn't return data.
/// Used for operations like Create, Update, Delete where only success/failure status is needed.
/// </summary>
/// <example>
/// <code>
/// var result = await repository.DeleteUserAsync(userId);
/// if (result.IsSuccess)
/// {
///     // Handle success
/// }
/// else
/// {
///     var error = result.Error;
///     // Handle failure
/// }
/// </code>
/// </example>
public class Result
{
    /// <summary>
    /// Gets a value indicating whether the operation was successful
    /// </summary>
    public bool IsSuccess { get; private set; }

    /// <summary>
    /// Gets the primary error message if the operation failed; otherwise empty string
    /// </summary>
    public string Error { get; private set; } = string.Empty;

    /// <summary>
    /// Gets the collection of all error messages if the operation failed; otherwise empty list
    /// </summary>
    public List<string> Errors { get; private set; } = new();

    /// <summary>
    /// Private constructor to prevent direct instantiation.
    /// Use Success() or Failure() factory methods instead.
    /// </summary>
    private Result() { }

    /// <summary>
    /// Creates a successful result
    /// </summary>
    /// <returns>A successful Result</returns>
    public static Result Success()
    {
        return new Result
        {
            IsSuccess = true
        };
    }

    /// <summary>
    /// Creates a failed result with a single error message
    /// </summary>
    /// <param name="error">The error message describing the failure</param>
    /// <returns>A failed Result containing the error message</returns>
    public static Result Failure(string error)
    {
        return new Result
        {
            IsSuccess = false,
            Error = error,
            Errors = new List<string> { error }
        };
    }

    /// <summary>
    /// Creates a failed result with multiple error messages
    /// </summary>
    /// <param name="errors">The collection of error messages</param>
    /// <returns>A failed Result containing all error messages</returns>
    public static Result Failure(List<string> errors)
    {
        return new Result
        {
            IsSuccess = false,
            Error = errors.FirstOrDefault() ?? "An error occurred",
            Errors = errors
        };
    }
}
