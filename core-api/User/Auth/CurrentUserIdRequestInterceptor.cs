using System.Security.Claims;
using HotChocolate.AspNetCore;
using HotChocolate.Execution;

namespace SalatyAPI.User.Auth;

public class CurrentUserIdRequestInterceptor : DefaultHttpRequestInterceptor
{
    public override ValueTask OnCreateAsync(
        HttpContext context,
        IRequestExecutor requestExecutor,
        IQueryRequestBuilder requestBuilder,
        CancellationToken cancellationToken
    )
    {
        if (context.User.Identity is not { IsAuthenticated: true })
        {
            return base.OnCreateAsync(context, requestExecutor, requestBuilder, cancellationToken);
        }

        var userId = int.Parse(context.User.FindFirstValue(ClaimTypes.NameIdentifier));
        requestBuilder.SetProperty("currentUserId", userId);

        return base.OnCreateAsync(context, requestExecutor, requestBuilder, cancellationToken);
    }
}
