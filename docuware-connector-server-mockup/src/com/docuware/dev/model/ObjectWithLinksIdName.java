package com.docuware.dev.model;

import com.fasterxml.jackson.annotation.JsonProperty;

public class ObjectWithLinksIdName extends ObjectWithLinksId {

	@JsonProperty("Name")
	private String name;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
}
