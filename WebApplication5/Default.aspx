<%@ Page Title="홈 페이지" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication5._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Title %>.</h1>
                <h2>ASP.NET 응용 프로그램을 바로 시작하려면 이 템플릿을 수정하십시오.</h2>
            </hgroup>
            <p>
                ASP.NET에 대한 자세한 내용은 <a href="http://asp.net" title="ASP.NET 웹 사이트">http://asp.net</a>을 참조하십시오.
                이 페이지에는 <mark>비디오, 자습서 및 샘플 등</mark> ASP.NET을 최대한 활용할 수 있는 방법이 나와 있습니다.
                ASP.NET과 관련하여 궁금한 사항이 있으면
                <a href="http://forums.asp.net/18.aspx" title="ASP.NET Forum">ASP.NET 포럼</a>을 참조하십시오.
            </p>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>권장 사항:</h3>
    <ol class="round">
        <li class="one">
            <h5>시작</h5>
            ASP.NET Web Forms를 통해 익숙한 끌어서 놓기, 이벤트 구동 모델을 사용하여 동적 웹 사이트를 빌드할 수 있습니다.
            디자인 화면 및 수백 개의 컨트롤과 구성 요소를 사용하여 데이터 액세스 기능이 있는 정교하고 강력한 UI 구동 사이트를 신속하게 빌드할 수 있습니다.
            <a href="http://go.microsoft.com/fwlink/?LinkId=245146">자세한 정보…</a>
        </li>
        <li class="two">
            <h5>NuGet 패키지를 추가하고 코드 바로 시작</h5>
            NuGet을 사용하면 무료 라이브러리 및 도구를 쉽게 설치하고 업데이트할 수 있습니다.
            <a href="http://go.microsoft.com/fwlink/?LinkId=245147">자세한 정보…</a>
        </li>
        <li class="three">
            <h5>웹 호스팅 찾기</h5>
            사용자 응용 프로그램에 적합한 기능을 제공하면서 가격이 합리적인 웹 호스팅 회사를 쉽게 찾을 수 있습니다.
            <a href="http://go.microsoft.com/fwlink/?LinkId=245143">자세한 정보…</a>
        </li>
    </ol>
</asp:Content>
