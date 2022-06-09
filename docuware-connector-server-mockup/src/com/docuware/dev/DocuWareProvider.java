package com.docuware.dev;

import java.io.InputStream;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import org.glassfish.jersey.media.multipart.FormDataContentDisposition;
import org.glassfish.jersey.media.multipart.FormDataParam;

import com.docuware.dev.model.Document;
import com.docuware.dev.model.container.DocumentIndexFieldContainer;
import com.docuware.dev.model.container.FileCabinetContainer;
import com.docuware.dev.model.container.OrganizationContainer;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

@Path("")
@Api(value = "DocuWare")
public class DocuWareProvider {
	@GET
	@Path("Organizations")
	@Produces(MediaType.APPLICATION_JSON)
	@ApiOperation(value="Get all organizations.")
	public OrganizationContainer getOrganizations() {
		return null;
	}

	@GET
	@Path("FileCabinets")
	@Produces(MediaType.APPLICATION_JSON)
	@ApiOperation(value="Get all file cabinets.")
	public FileCabinetContainer getFileCabinets() {
		return null;
	}

	@POST
	@Path("FileCabinets/{fileCabinetId}/Documents")
	@Consumes(MediaType.MULTIPART_FORM_DATA)
	@Produces(MediaType.APPLICATION_JSON)
	@ApiOperation(value="Upload a document to a file cabinet.")
	public Document postFileCabinetDocuments(
			@PathParam("fileCabinetId") String fileCabinetId,
			@FormDataParam("file") InputStream inputStream,
			@FormDataParam("file") FormDataContentDisposition contentDisposition
			) {

		return null;
	}

	@PUT
	@Path("FileCabinets/{fileCabinetId}/Documents/{documentId}/Fields")
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.APPLICATION_JSON)
	@ApiOperation(value="Put fields to a document.")
	public Response putDocumentFields(
			@PathParam("fileCabinetId") String fileCabinetId,
			@PathParam("documentId") String documentId,
			DocumentIndexFieldContainer fields
			) {
		return null;
	}

}
