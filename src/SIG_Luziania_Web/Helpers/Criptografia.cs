using System.Web.Helpers;

namespace SIG_Luziania_Web.Helpers
{
    public class Criptografia
    {
        public static string HashPassword(string senha)
        {
            string hash = Crypto.HashPassword(senha);

            return hash;
        }

        public static bool VerifyHashedPassword(string hash, string senha)
        {
            bool isHash = Crypto.VerifyHashedPassword(hash, senha);

            return isHash;
        }
    }
}
