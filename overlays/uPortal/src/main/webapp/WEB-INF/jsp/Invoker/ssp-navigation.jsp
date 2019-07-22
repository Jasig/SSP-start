<!--

    Licensed to Apereo under one or more contributor license
    agreements. See the NOTICE file distributed with this work
    for additional information regarding copyright ownership.
    Apereo licenses this file to you under the Apache License,
    Version 2.0 (the "License"); you may not use this file
    except in compliance with the License.  You may obtain a
    copy of the License at the following location:

      http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing,
    software distributed under the License is distributed on an
    "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
    KIND, either express or implied.  See the License for the
    specific language governing permissions and limitations
    under the License.

-->
<%@ include file="/WEB-INF/jsp/include.jsp" %>

<nav id="sspNav" class="portal-nav"><div id="ssp-sidebar" class="sidebar-offcanvas container-fluid">

<div id="portalNavigation" class="fl-widget" aria-selected="false">
    <div id="portalNavigationInner" class="fl-widget-inner header">
        <ul id="portalNavigationList" class="menu fl-tabs flc-reorderer-column list-group list-group-horizontal">
            <c:if test="${(isSSP_ADMINISTRATOR || isSSP_COACH || isSSP_DEVELOPER || isSSP_FACULTY || isSSP_MANAGER || isSSP_SUPPORT_STAFF || isSSP_MAP_TEMPLATE_ADMIN)}">
              <c:choose>
                <c:when test="@activeTab='true'">
                  <li id="portalNavigation_u16l1s4" class="portal-navigation first active fl-tabs-active locked   canAddChildren   list-group-item">
                </c:when>
                <c:otherwise>
                  <li id="portalNavigation_u16l1s4" class="portal-navigation first locked   canAddChildren   list-group-item">
                </c:otherwise>
              </c:choose>
                    <a id="tabLink_u16l1s4" href="/uPortal/p/ssp" title="SSP" class="portal-navigation-link ">
                        <span title="" class="portal-navigation-label ">SSP</span>
                        <i class="fa fa-chevron-right visible-xs"></i>
                    </a>
                </li>
            </c:if>
            <c:if test="${(isSSP_ADMINISTRATOR || isSSP_DEVELOPER || isSSP_FACULTY)}">
              <c:choose>
                <c:when test="@activeTab='true'">
                  <li id="portalNavigation_u20l1s4" class="portal-navigation  active fl-tabs-active locked   canAddChildren   list-group-item">
                </c:when>
                <c:otherwise>
                  <li id="portalNavigation_u20l1s4" class="portal-navigation   locked   canAddChildren   list-group-item">
                </c:otherwise>
              </c:choose>
                    <a id="tabLink_u20l1s4" href="/uPortal/p/early-alert" title="Early Alert" class="portal-navigation-link ">
                        <span title="" class="portal-navigation-label ">Early Alert</span>
                        <i class="fa fa-chevron-right visible-xs"></i>
                    </a>
                </li>
            </c:if>
            <li id="portalNavigation_u18l1s4" class="portal-navigation   locked   canAddChildren   list-group-item">
                <a id="tabLink_u18l1s4" href="/uPortal/p/my-gps" title="My GPS" class="portal-navigation-link ">
                    <span title="" class="portal-navigation-label ">My GPS</span>
                    <i class="fa fa-chevron-right visible-xs"></i>
                </a>
            </li>
            <c:if test="${(isSSP_ADMINISTRATOR || isSSP_REPORTS)}">
              <c:choose>
                <c:when test="@activeTab='true'">
                  <li id="portalNavigation_u15l1s4" class="portal-navigation  active fl-tabs-active locked   canAddChildren   list-group-item">
                </c:when>
                <c:otherwise>
                  <li id="portalNavigation_u15l1s4" class="portal-navigation   locked   canAddChildren   list-group-item">
                </c:otherwise>
              </c:choose>
                    <a id="tabLink_u15l1s4" href="/uPortal/p/SSP_Reports" title="Reports" class="portal-navigation-link ">
                        <span title="" class="portal-navigation-label ">Reports</span>
                        <i class="fa fa-chevron-right visible-xs"></i>
                    </a>
                </li>
            </c:if>
            <c:if test="${(isSSP_ADMINISTRATOR || isSSP_DEVELOPER)}">
              <c:choose>
                <c:when test="@activeTab='true'">
                  <li id="portalNavigation_u17l1s6" class="portal-navigation  active fl-tabs-active locked   canAddChildren   list-group-item">
                </c:when>
                <c:otherwise>
                  <li id="portalNavigation_u17l1s6" class="portal-navigation   locked   canAddChildren   list-group-item">
                </c:otherwise>
              </c:choose>
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