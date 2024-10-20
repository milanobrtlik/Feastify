using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using System.Text;
using Microsoft.IdentityModel.Tokens;

namespace SalatyAPI.User.Auth;

public class JwtFactory
{
    private readonly IConfiguration _configuration;

    public JwtFactory(IConfiguration configuration)
    {
        _configuration = configuration ?? throw new ArgumentNullException(nameof(configuration));
    }

    public string Create(int currentUserId, long expirationTimeSeconds = 3600 * 24 * 60)
    {
        var identity = new ClaimsIdentity(new Claim[]
        {
            new(ClaimTypes.NameIdentifier, currentUserId.ToString())
        });

        var secret = _configuration.GetSection("JwtSecret").Value;
        var bytes = Encoding.UTF8.GetBytes(secret);
        var tokenDescriptor = new SecurityTokenDescriptor
        {
            Subject = identity,
            Expires = DateTime.UtcNow.AddSeconds(expirationTimeSeconds),
            SigningCredentials = new SigningCredentials(
                new SymmetricSecurityKey(bytes),
                SecurityAlgorithms.HmacSha256Signature
            )
        };
        var tokenHandler = new JwtSecurityTokenHandler();
        var token = tokenHandler.CreateToken(tokenDescriptor);

        return tokenHandler.WriteToken(token);
    }
}
