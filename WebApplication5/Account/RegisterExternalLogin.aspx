<%@ Page Language="C#" Title="외부 로그인 등록" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegisterExternalLogin.aspx.cs" Inherits="WebApplication5.Account.RegisterExternalLogin" %>
<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <hgroup class="title">
        <h1><%: ProviderDisplayName %> 계정으로 등록</h1>
        <h2><%: ProviderUserName %>.</h2>
    </hgroup>

    
    <asp:ModelErrorMessage runat="server" ModelStateKey="Provider" CssClass="field-validation-error" />
    

    <asp:PlaceHolder runat="server" ID="userNameForm">
        <fieldset>
            <legend>연결 양식</legend>
            <p>
                <strong><%: ProviderUserName %></strong>(으)로서
                <strong><%: ProviderDisplayName %></strong>(으)로 인증되었습니다. 현재 사이트에 대한 사용자 이름을 아래에 입력하고
                로그인 단추를 클릭하십시오.
            </p>
            <ol>
                <li class="email">
                    <asp:Label runat="server" AssociatedControlID="userName">사용자 이름</asp:Label>
                    <asp:TextBox runat="server" ID="userName" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="userName"
                        Display="Dynamic" ErrorMessage="사용자 이름은 필수입니다." ValidationGroup="NewUser" />
                    
                    <asp:ModelErrorMessage runat="server" ModelStateKey="UserName" CssClass="field-validation-error" />
                    
                </li>
            </ol>
            <asp:Button runat="server" Text="로그인" ValidationGroup="NewUser" OnClick="logIn_Click" />
            <asp:Button runat="server" Text="취소" CausesValidation="false" OnClick="cancel_Click" />
        </fieldset>
    </asp:PlaceHolder>
</asp:Content>
