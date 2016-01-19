using System;
using System.Collections.Generic;
using System.Linq;

using Microsoft.AspNet.Membership.OpenAuth;

namespace WebApplication5.Account
{
    public partial class Manage : System.Web.UI.Page
    {
        protected string SuccessMessage
        {
            get;
            private set;
        }

        protected bool CanRemoveExternalLogins
        {
            get;
            private set;
        }

        protected void Page_Load()
        {
            if (!IsPostBack)
            {
                // 렌더링할 섹션 확인
                var hasLocalPassword = OpenAuth.HasLocalPassword(User.Identity.Name);
                setPassword.Visible = !hasLocalPassword;
                changePassword.Visible = hasLocalPassword;

                CanRemoveExternalLogins = hasLocalPassword;

                // 렌더 성공 메시지
                var message = Request.QueryString["m"];
                if (message != null)
                {
                    // 작업에서 쿼리 문자열 제거
                    Form.Action = ResolveUrl("~/Account/Manage.aspx");

                    SuccessMessage =
                        message == "ChangePwdSuccess" ? "암호가 변경되었습니다."
                        : message == "SetPwdSuccess" ? "암호가 설정되었습니다."
                        : message == "RemoveLoginSuccess" ? "외부 로그인이 제거되었습니다."
                        : String.Empty;
                    successMessage.Visible = !String.IsNullOrEmpty(SuccessMessage);
                }
            }

        }

        protected void setPassword_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                var result = OpenAuth.AddLocalPassword(User.Identity.Name, password.Text);
                if (result.IsSuccessful)
                {
                    Response.Redirect("~/Account/Manage.aspx?m=SetPwdSuccess");
                }
                else
                {

                    ModelState.AddModelError("NewPassword", result.ErrorMessage);

                }
            }
        }


        public IEnumerable<OpenAuthAccountData> GetExternalLogins()
        {
            var accounts = OpenAuth.GetAccountsForUser(User.Identity.Name);
            CanRemoveExternalLogins = CanRemoveExternalLogins || accounts.Count() > 1;
            return accounts;
        }

        public void RemoveExternalLogin(string providerName, string providerUserId)
        {
            var m = OpenAuth.DeleteAccount(User.Identity.Name, providerName, providerUserId)
                ? "?m=RemoveLoginSuccess"
                : String.Empty;
            Response.Redirect("~/Account/Manage.aspx" + m);
        }


        protected static string ConvertToDisplayDateTime(DateTime? utcDateTime)
        {
            // 이 메서드를 변경하여 UTC 날짜 시간을 원하는 표시 오프셋 및 형식으로 변환할 수
            // 있습니다. 여기서는 현재 스레드 culture를 사용하여 UTC 날짜 시간을 서버 표준 시간대로
            // 변환하고 간단한 날짜 및 자세한 시간 문자열로 형식을 지정합니다.
            return utcDateTime.HasValue ? utcDateTime.Value.ToLocalTime().ToString("G") : "[안 함]";
        }
    }
}