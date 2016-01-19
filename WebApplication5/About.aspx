<%@ Page Title="정보" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebApplication5.About" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
        <h2>응용 프로그램 설명 페이지입니다.</h2>
    </hgroup>

    <article>
        <p>        
            이 곳에 추가 정보를 입력하십시오.
        </p>

        <p>        
            이 곳에 추가 정보를 입력하십시오.
        </p>

        <p>        
            이 곳에 추가 정보를 입력하십시오.
        </p>
    </article>

    <aside>
        <h3>배제 제목</h3>
        <p>        
            이 곳에 추가 정보를 입력하십시오.
        </p>
        <ul>
            <li><a runat="server" href="~/">홈</a></li>
            <li><a runat="server" href="~/About.aspx">정보</a></li>
            <li><a runat="server" href="~/Contact.aspx">연락처</a></li>
        </ul>
    </aside>
</asp:Content>