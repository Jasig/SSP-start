<%@ include file="/WEB-INF/jsp/include.jsp" %>

<div class="ssp-quicklinks">
  <button class="btn btn-default dropdown-toggle" type="button" id="sspQuicklinksMenu" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
    ${userInfo['displayName']}
    <i class="fa fa-user" aria-hidden="true"></i>
    <span class="caret"></span>
  </button>
  <ul class="dropdown-menu" aria-labelledby="sspQuicklinksMenu">
    <li class="dropdown-header">Quicklinks</li>
    <li class="link-home"><a href="<c:url value="/" />" title="Home"><span>Home</span></a></li>
    <li role="separator" class="divider"></li>
    <li class="link-sitemap"><a href="<c:url value="/p/sitemap" />" title="Go to Site Map"><span>Site Map</span></a></li>
    <li class="link-help"><a href="https://wiki.jasig.org/display/SSP/SSP+User+Guides" title="View help for the portal" target="_blank" rel="noopener noreferrer"><span>Help</span></a></li>
    <c:if test="${isPortal_Administrators}">
      <li class="link-admin"><a href="<c:url value="/p/portal-administration" />" title="Platform Administration"><span>Platform Administration</span></a></li>
    </c:if>
    <li role="separator" class="divider"></li>
    <li class="link-logout"><a href="<c:url value="/Logout" />" title="Log off and exit the portal"><span>Sign Out</span></a></li>
  </ul>
</div>
