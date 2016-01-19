using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.AspNet.Membership.OpenAuth;

namespace WebApplication5
{
    internal static class AuthConfig
    {
        public static void RegisterOpenAuth()
        {
            // 외부 서비스를 통한 로그인을 지원하도록 이 ASP.NET 응용 프로그램을 설정하는 방법에 대한 자세한 내용은 http://go.microsoft.com/fwlink/?LinkId=252803을
            // 참조하십시오.

            //OpenAuth.AuthenticationClients.AddTwitter(
            //    consumerKey: "Twitter 사용자 키",
            //    consumerSecret: "Twitter 사용자 암호");

            //OpenAuth.AuthenticationClients.AddFacebook(
            //    appId: "Facebook 응용 프로그램 ID",
            //    appSecret: "Facebook 응용 프로그램 암호");

            //OpenAuth.AuthenticationClients.AddMicrosoft(
            //    clientId: "Microsoft 계정 클라이언트 ID",
            //    clientSecret: "Microsoft 계정 클라이언트 암호");

            //OpenAuth.AuthenticationClients.AddGoogle();
        }
    }
}