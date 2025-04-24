package com.axonivy.connector.docuware.connector.demo.ui;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.text.MessageFormat;

import org.apache.commons.lang.exception.ExceptionUtils;
import org.apache.commons.lang3.StringUtils;

import com.axonivy.connector.docuware.connector.enums.DocuWareVariable;
import com.docuware.dev.schema._public.services.platform.FileCabinets;
import com.docuware.dev.schema._public.services.platform.Organizations;

import ch.ivyteam.ivy.environment.Ivy;

public class DocuWareDemoCtrl {
	private StringWriter stringWriter = new StringWriter();
	private PrintWriter printWriter = new PrintWriter(stringWriter);
	private String organizationId;
	private String fileCabinetId;
	private Organizations organizations;
	private FileCabinets fileCabinets;


	public DocuWareDemoCtrl() {
		organizationId = Ivy.var().get("docuwareConnector.organization");
		fileCabinetId = Ivy.var().get("docuwareConnector.filecabinetid");
	}

	public String getMessage() {
		return stringWriter != null ? stringWriter.toString() : "";
	}

	public String getConfigurationDescription() {
		try (var sw = new StringWriter();
				var pw = new PrintWriter(sw)) {
			pw.format(
					"""
					Host: '%s'
					Platform: '%s'
					GrantType: '%s'
					Username: '%s'
					Password: '%s'
					TrustedUserName: '%s'
					TrustedUserPassword: '%s'
					LoginToken: '%s'
					AccessToken: '%s' (note: the access token is usually not stored here but in an application or session attribute)
					""",
					DocuWareVariable.HOST.getValue(),
					DocuWareVariable.PLATFORM.getValue(),
					DocuWareVariable.GRANT_TYPE.getValue(),
					DocuWareVariable.USERNAME.getValue(),
					safeShow(DocuWareVariable.PASSWORD.getValue()),
					DocuWareVariable.TRUSTED_USERNAME.getValue(),
					safeShow(DocuWareVariable.TRUSTED_USER_PASSWORD.getValue()),
					safeToken(DocuWareVariable.LOGIN_TOKEN.getValue()),
					StringUtils.abbreviateMiddle(safeToken(DocuWareVariable.ACCESS_TOKEN.getValue()), "...", 100)
					);
			return sw.toString();
		} catch (IOException e) {
			log("Error reading configuration.", e);
		}
		return "Could not read configuration.";
	}

	public Organizations getOrganizations() {
		return organizations;
	}

	public void setOrganizations(Organizations organizations) {
		this.organizations = organizations;
		if(organizations != null) {
			var orgs = organizations.getOrganization();
			if(orgs != null && !orgs.isEmpty()) {
				organizationId = orgs.get(0).getId();
			}
		}
	}

	public FileCabinets getFileCabinets() {
		return fileCabinets;
	}

	public void setFileCabinets(FileCabinets fileCabinets) {
		this.fileCabinets = fileCabinets;
		if(fileCabinets != null) {
			var fcs = fileCabinets.getFileCabinet();
			if(fcs != null && !fcs.isEmpty()) {
				fileCabinetId = fcs.get(0).getId();
			}
		}
	}

	public String getOrganizationId() {
		return organizationId;
	}

	public void setOrganizationId(String organizationId) {
		this.organizationId = organizationId;
	}

	public String getFileCabinetId() {
		return fileCabinetId;
	}

	public void setFileCabinetId(String fileCabinetId) {
		this.fileCabinetId = fileCabinetId;
	}

	private String safeShow(String sensitive) {
		return sensitive == null ? null : sensitive.replaceAll(".", "*");
	}

	private String safeToken(String token) {
		var result = token;
		if(token != null) {
			int len = 4;
			if(token.length() > len) {
				result =
						StringUtils.substring(token, 0, -len).replaceAll(".",  "*") +
						StringUtils.substring(token, -len);
			}
		}
		return result;
	}

	public void log(String format, Object...params) {
		if(params.length > 0) {
			Ivy.log().info(format, params);
			printWriter.println(MessageFormat.format(format, params));
		}
		else {
			Ivy.log().info(format);
			printWriter.println(format);
		}
	}

	public void log(String format, Throwable t, Object...params) {
		log(format, params);
		log(ExceptionUtils.getStackTrace(t));
	}


	public void log(Organizations organizations) {
		log("Organizations:");
		if(organizations == null) {
			log("null");
		}
		else {
			var orgs = organizations.getOrganization();
			log("Size: {0}", orgs != null ? orgs.size() : orgs);
			if(orgs != null) {
				for (var org : orgs) {
					log("''{0}'', Id: {1}, Guid: {2}", org.getName(), org.getId(), org.getGuid());
				}
			}
		}
	}

	public void log(FileCabinets fileCabinets) {
		log("File Cabinets:");
		if(fileCabinets == null) {
			log("null");
		}
		else {
			var fcs = fileCabinets.getFileCabinet();
			log("Size: {0}", fcs != null ? fcs.size() : fcs);
			if(fcs != null) {
				for (var fc : fcs) {
					log("''{0}'', Id: {1}", fc.getName(), fc.getId());
				}
			}
		}
	}

	public void clearLog() {
		stringWriter = new StringWriter();
		printWriter = new PrintWriter(stringWriter);
	}
}
