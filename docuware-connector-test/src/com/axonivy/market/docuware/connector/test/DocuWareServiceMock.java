package com.axonivy.market.docuware.connector.test;

import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;

import javax.annotation.security.PermitAll;
import javax.ws.rs.Consumes;
import javax.ws.rs.FormParam;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import org.apache.commons.io.IOUtils;

import io.swagger.v3.oas.annotations.Hidden;

@Path("docuWareMock")
@PermitAll
@Hidden
public class DocuWareServiceMock {

	@POST
	@Consumes(MediaType.APPLICATION_FORM_URLENCODED)
	@Produces(MediaType.APPLICATION_JSON)
	@Path("Account/Logon")
	public String accountLogon(
			@FormParam("UserName") String userName,
			@FormParam("Password") String password,
			@FormParam("HostID") String hostId,
			@FormParam("RedirectToMyselfInCaseOfError") String redirectToMyselfInCaseOfError
			) {
		return load("json/account/logon.json");
	}

	@GET
	@Produces(MediaType.APPLICATION_JSON)
	@Path("Organizations")
	public String organizations() {
		return load("json/organizations.json");
	}

	private static String load(String path) {
		try (InputStream is = DocuWareServiceMock.class.getResourceAsStream(path)) {
			return IOUtils.toString(is, StandardCharsets.UTF_8);
		} catch (IOException ex) {
			throw new RuntimeException("Failed to read resource: " + path);
		}
	}
}
