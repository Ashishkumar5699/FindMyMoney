using Microsoft.Extensions.Logging;

namespace FindMyMoney.Infrastructure;

public class HttpLoggingHandler(ILogger<HttpLoggingHandler> logger) : DelegatingHandler
{
    protected override async Task<HttpResponseMessage> SendAsync(HttpRequestMessage request, CancellationToken cancellationToken)
    {
        // Buffer the request body so reading it here doesn't consume the stream
        var requestBody = string.Empty;
        if (request.Content != null)
        {
            await request.Content.LoadIntoBufferAsync();
            requestBody = await request.Content.ReadAsStringAsync(cancellationToken);
        }

        Console.WriteLine($"[HTTP] REQUEST: {request.Method} {request.RequestUri}");
        Console.WriteLine($"[HTTP] HEADERS: {string.Join(", ", request.Headers.Select(h => $"{h.Key}={string.Join(",", h.Value)}"))}");
        if (!string.IsNullOrEmpty(requestBody))
            Console.WriteLine($"[HTTP] BODY: {requestBody}");

        var response = await base.SendAsync(request, cancellationToken);

        await response.Content.LoadIntoBufferAsync();
        var responseBody = await response.Content.ReadAsStringAsync(cancellationToken);

        Console.WriteLine($"[HTTP] RESPONSE: {(int)response.StatusCode} for {request.RequestUri}");
        Console.WriteLine($"[HTTP] RESP BODY: {responseBody}");

        logger.LogDebug("HTTP REQUEST: {Method} {Uri}", request.Method, request.RequestUri);
        logger.LogDebug("HTTP RESPONSE: {Status} Body={Body}", (int)response.StatusCode, responseBody);

        return response;
    }
}
