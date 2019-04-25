<%@ include file="/WEB-INF/jsp/include.jsp" %>

<nav id="sspNav" class="portal-nav"><div id="ssp-sidebar" class="sidebar-offcanvas container-fluid">

<div id="portalNavigation" class="fl-widget" aria-selected="false">
    <div id="portalNavigationInner" class="fl-widget-inner header">
        <ul id="portalNavigationList" class="menu fl-tabs flc-reorderer-column list-group list-group-horizontal">
            <c:if test="${(isSSP_ADMINISTRATOR || isSSP_COACH || isSSP_DEVELOPER || isSSP_FACULTY || isSSP_MANAGER || isSSP_SUPPORT_STAFF || isSSP_MAP_TEMPLATE_ADMIN)}">
                <li id="portalNavigation_u16l1s4" class="portal-navigation first active fl-tabs-active locked   canAddChildren   list-group-item">
                    <a id="tabLink_u16l1s4" href="/uPortal/p/ssp" title="SSP" class="portal-navigation-link ">
                        <span title="" class="portal-navigation-label ">SSP</span>
                        <i class="fa fa-chevron-right visible-xs"></i>
                    </a>
                </li>
            </c:if>
            <c:if test="${(isSSP_ADMINISTRATOR || isSSP_DEVELOPER || isSSP_FACULTY)}">
                <li id="portalNavigation_u20l1s4" class="portal-navigation   locked   canAddChildren   list-group-item">
                    <a id="tabLink_u20l1s4" href="/uPortal/p/early-alert" title="Early Alert" class="portal-navigation-link ">
                        <span title="" class="portal-navigation-label ">Early Alert</span>
                        <i class="fa fa-chevron-right visible-xs"></i>
                    </a>
                </li>
            </c:if>
            <li id="portalNavigation_u15l1s4" class="portal-navigation   locked   canAddChildren   list-group-item">
                <a id="tabLink_u18l1s4" href="/uPortal/p/my-gps" title="My GPS" class="portal-navigation-link ">
                    <span title="" class="portal-navigation-label ">My GPS</span>
                    <i class="fa fa-chevron-right visible-xs"></i>
                </a>
            </li>
            <c:if test="${(isSSP_ADMINISTRATOR || isSSP_REPORTS)}">
                <li id="portalNavigation_u15l1s4" class="portal-navigation   locked   canAddChildren   list-group-item">
                    <a id="tabLink_u15l1s4" href="/uPortal/p/SSP_Reports" title="Reports" class="portal-navigation-link ">
                        <span title="" class="portal-navigation-label ">Reports</span>
                        <i class="fa fa-chevron-right visible-xs"></i>
                    </a>
                </li>
            </c:if>
            <c:if test="${(isSSP_ADMINISTRATOR || isSSP_DEVELOPER)}">
                <li id="portalNavigation_u15l1s4" class="portal-navigation   locked   canAddChildren   list-group-item">
                    <a id="tabLink_u17l1s6" href="/uPortal/p/user-administration" title="Manage Users" class="portal-navigation-link ">
                        <span title="" class="portal-navigation-label ">Manage Users</span>
                        <i class="fa fa-chevron-right visible-xs"></i>
                    </a>
                </li>
            </c:if>
        </ul>
    </div>
</div>

</div></nav>