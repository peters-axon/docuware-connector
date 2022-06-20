package com.axonivy.market.docuware.connector.test;

import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.Map;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import javax.annotation.security.PermitAll;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.ws.rs.Consumes;
import javax.ws.rs.FormParam;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import org.apache.commons.io.IOUtils;

import com.axonivy.connector.docuware.connector.DocuWareAuthFeature;

import io.swagger.v3.oas.annotations.Hidden;

@Path("docuWareMock")
@PermitAll
@Hidden
public class DocuWareServiceMock {

	/**
	 * Logon Call.
	 *
	 * Note, that this call is currently not used for the tests because calling
	 * a REST service from a feature in the Ivy Test environment is currently
	 * not fully supported.
	 *
	 * @param userName
	 * @param password
	 * @param hostId
	 * @param redirectToMyselfInCaseOfError
	 * @return
	 */
	@POST
	@Consumes(MediaType.APPLICATION_FORM_URLENCODED)
	@Produces(MediaType.APPLICATION_JSON)
	@Path("Account/Logon")
	public Response accountLogon(
			@FormParam("UserName") String userName,
			@FormParam("Password") String password,
			@FormParam("HostID") String hostId,
			@FormParam("RedirectToMyselfInCaseOfError") String redirectToMyselfInCaseOfError
			) {
		return Response.ok(load("json/account/logon.json")).type(MediaType.APPLICATION_JSON).build();
	}

	@GET
	@Produces(MediaType.APPLICATION_XML)
	@Path("Organizations")
	public Response organizations(@Context HttpServletRequest req) {
		if(!isAuthenticated(req)) {
			// note: the real service would send details
			return Response.status(401).build();
		}
		else {
			return Response.ok(load("xml/organizations.xml"))
			        .type(MediaType.APPLICATION_XML).build();
		}
	}

	private boolean isAuthenticated(HttpServletRequest req) {
		Map<String, Cookie> cookies = Stream.of(req.getCookies()).collect(Collectors.toMap(c -> c.getName(), c -> c));

		return cookies.containsKey(DocuWareAuthFeature.DocuWareCookies.DW_PLATFORM_AUTH_COOKIE) &&
				cookies.containsKey(DocuWareAuthFeature.DocuWareCookies.DW_PLATFORM_BROWSER_ID);
	}

	private String load(String path) {
		try (InputStream is = DocuWareServiceMock.class.getResourceAsStream(path)) {
			return IOUtils.toString(is, StandardCharsets.UTF_8);
		} catch (IOException ex) {
			throw new RuntimeException("Failed to read resource: " + path);
		}
	}
}
