package com.docuware.dev.model;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonProperty;

public class ObjectWithLinksId {

	@JsonProperty("Id")
	private String id;
	@JsonProperty("Links")
	private List<Link> links;

	public ObjectWithLinksId() {
		super();
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public List<Link> getLinks() {
		return links;
	}

	public void setLinks(List<Link> links) {
		this.links = links;
	}

}