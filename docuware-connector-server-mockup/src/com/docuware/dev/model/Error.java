package com.docuware.dev.model;

import com.fasterxml.jackson.annotation.JsonProperty;

public class Error {

	@JsonProperty("Message")
	private String message;
	@JsonProperty("Exception")   
	private String exception;
	@JsonProperty("Uri")
	private String uri;
	@JsonProperty("Method")   
	private String method;
	@JsonProperty("StatusCode")
	private int statusCode;
	@JsonProperty("Status")
	private String status;
	@JsonProperty("InternalCode")
	private int internalCode;
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getException() {
		return exception;
	}
	public void setException(String exception) {
		this.exception = exception;
	}
	public String getUri() {
		return uri;
	}
	public void setUri(String uri) {
		this.uri = uri;
	}
	public String getMethod() {
		return method;
	}
	public void setMethod(String method) {
		this.method = method;
	}
	public int getStatusCode() {
		return statusCode;
	}
	public void setStatusCode(int statusCode) {
		this.statusCode = statusCode;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getInternalCode() {
		return internalCode;
	}
	public void setInternalCode(int internalCode) {
		this.internalCode = internalCode;
	}
}

