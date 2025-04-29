package com.axonivy.connector.docuware.connector.demo.ui;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.text.MessageFormat;

import javax.ws.rs.core.Response;

import org.apache.commons.lang.exception.ExceptionUtils;
import org.apache.commons.lang3.StringUtils;
import org.primefaces.model.DefaultStreamedContent;
import org.primefaces.model.StreamedContent;

import com.axonivy.connector.docuware.connector.DocuWareService;
import com.axonivy.connector.docuware.connector.enums.DocuWareVariable;
import com.docuware.dev.schema._public.services.platform.Document;
import com.docuware.dev.schema._public.services.platform.DocumentsQueryResult;
import com.docuware.dev.schema._public.services.platform.FileCabinets;
import com.docuware.dev.schema._public.services.platform.Organizations;

import ch.ivyteam.ivy.environment.Ivy;

public class DocuWareDemoCtrl {
	private StringWriter stringWriter = new StringWriter();
	private PrintWriter printWriter = new PrintWriter(stringWriter);
	private String loginToken;
	private String organizationId;
	private String fileCabinetId;
	private String documentId;
	private Organizations organizations;
	private FileCabinets fileCabinets;
	private DocumentsQueryResult documents;
	private Document document;
	private StreamedContent downloadedFile;
	private String viewerUrl;

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
					Global variables:
					Host: '%s'
					Platform: '%s'
					GrantType: '%s'
					Username: '%s'
					Password: '%s'
					TrustedUserName: '%s'
					TrustedUserPassword: '%s'
					LoginToken: '%s' (note: the login token is usually not stored here and is only needed for special use-cases) 
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

	public DocumentsQueryResult getDocuments() {
		return documents;
	}

	public void setDocuments(DocumentsQueryResult documents) {
		this.documents = documents;
		if(documents != null && documents.getItems() != null) {
			var docs = documents.getItems().getItem();
			if(docs != null && !docs.isEmpty()) {
				documentId = ""+docs.get(0).getId();
			}
		}
	}

	public Document getDocument() {
		return document;
	}

	public void setDocument(Document document) {
		this.document = document;
		if(document != null) {
			documentId = "" + document.getId();
		}
	}

	public boolean hasAccessToken() {
		return DocuWareService.get().getCachedToken() != null;
	}

	public String getLoginToken() {
		return loginToken;
	}

	public void setLoginToken(String loginToken) {
		this.loginToken = loginToken;
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

	public String getDocumentId() {
		return documentId;
	}

	public void setDocumentId(String documentId) {
		this.documentId = documentId;
	}

	public StreamedContent getDownloadedFile() {
		return downloadedFile;
	}

	public String getViewerUrl() {
		return viewerUrl;
	}

	public void prepareDownloadedFile(Response response, InputStream result) {
		if(response != null && response.getStatusInfo().getFamily().equals(Response.Status.Family.SUCCESSFUL)) {
			downloadedFile = DefaultStreamedContent.builder()
					.stream(() -> result)
					.name(DocuWareService.get().getFilenameFromResponseHeader(response)).build();
		}
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

	public void buildViewerUrl() {
		var dwService = DocuWareService.get();
		var loginToken = dwService.getLoginTokenString();
		viewerUrl = dwService.getViewerUrl(null, loginToken, fileCabinetId, documentId);
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

	public void log(DocumentsQueryResult documents) {
		log("Documents:");
		if(documents == null || documents.getItems() == null) {
			log("null");
		}
		else {
			var docs = documents.getItems().getItem();
			log("Size: {0}", docs != null ? docs.size() : docs);
			if(docs != null) {
				for (var doc : docs) {
					log("''{0}'', Id: {1}", doc.getTitle(), doc.getId());
				}
			}
		}
	}

	public void log(Document document) {
		log("Document:");
		if(document == null) {
			log("null");
		}
		else {
			log("''{0}'', Id: {1}", document.getTitle(), document.getId());
		}
	}

	public void clearLog() {
		stringWriter = new StringWriter();
		printWriter = new PrintWriter(stringWriter);
	}
}
