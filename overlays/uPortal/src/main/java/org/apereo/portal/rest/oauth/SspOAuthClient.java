package org.apereo.portal.rest.oauth;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;

@Component
public class SspOAuthClient implements OAuthClient {

    private static final String DEFAULT_CLIENT_SECRET = "CHANGEME";

    @Value("${SspOAuthClient.clientId:ssp}")
    private String clientId;

    @Value("${SspOAuthClient.clientSecret:" + DEFAULT_CLIENT_SECRET + "}")
    private String clientSecret;

    @Value("${SspOAuthClient.portalUserAccount:admin}")
    private String portalUserAccount;

    private final Logger logger = LoggerFactory.getLogger(getClass());

    @PostConstruct
    public void init() {
        // Server-based deployments really need to set a custom SspOAuthClient.clientSecret property...
        if (DEFAULT_CLIENT_SECRET.equals(clientSecret)) {
            final StringBuilder message = new StringBuilder();
            message
                    .append("\n****************************************************************")
                    .append("\n**                     SECURITY WARNING!                      **")
                    .append("\n**                                                            **")
                    .append("\n** The SspOAuthClient.clientSecret property currently has the **")
                    .append("\n** default value.  This configuration is insecure.  Please    **")
                    .append("\n** define a value for SspOAuthClient.clientSecret in either   **")
                    .append("\n** uPortal.properties or global.properties.                   **")
                    .append("\n****************************************************************");
            logger.warn(message.toString());
        }
    }

    @Override
    public String getClientId() {
        return clientId;
    }

    @Override
    public String getClientSecret() {
        return clientSecret;
    }

    @Override
    public String getPortalUserAccount() {
        return portalUserAccount;
    }

}
