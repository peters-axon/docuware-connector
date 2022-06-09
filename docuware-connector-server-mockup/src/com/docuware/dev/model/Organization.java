package com.docuware.dev.model;

import com.fasterxml.jackson.annotation.JsonProperty;

public class Organization extends ObjectWithLinksIdName {
	@JsonProperty("Guid")
	private String guid;

	public String getGuid() {
		return guid;
	}

	public void setGuid(String guid) {
		this.guid = guid;
	}
}
