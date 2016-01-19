<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="OpenAuthProviders.ascx.cs" Inherits="WebApplication5.Account.OpenAuthProviders" %>

<fieldset class="open-auth-providers">
    <legend>다른 서비스를 사용하여 로그인</legend>
    
    <asp:ListView runat="server" ID="providerDetails" ItemType="Microsoft.AspNet.Membership.OpenAuth.ProviderDetails"
        SelectMethod="GetProviderNames" ViewStateMode="Disabled">
        <ItemTemplate>
            <button type="submit" name="provider" value="<%#: Item.ProviderName %>"
                title="사용자의 계정을 사용하여 <%#: Item.ProviderDisplayName %> 로그인합니다.">
                <%#: Item.ProviderDisplayName %>
            </button>
        </ItemTemplate>
    
        <EmptyDataTemplate>
            <div class="message-info">
                <p>구성된 외부 인증 서비스가 없습니다. 외부 서비스를 통한 로그인을 지원하도록 이 ASP.NET 응용 프로그램을 설정하는 방법에 대한 자세한 내용은 <a href="http://go.microsoft.com/fwlink/?LinkId=252803">이 문서</a>를 참조하십시오.</p>
            </div>
        </EmptyDataTemplate>
    </asp:ListView>
</fieldset>