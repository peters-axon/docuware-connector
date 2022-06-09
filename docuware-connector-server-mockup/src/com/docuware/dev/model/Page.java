package com.docuware.dev.model;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonProperty;

public class Page {
	@JsonProperty("Data")
	protected PageData data;
	@JsonProperty("Links")
	private List<Link> links;
	@JsonProperty("PageNum")
	protected int pageNum;
	@JsonProperty("HasAnnotation")
	protected Boolean hasAnnotation;
	public PageData getData() {
		return data;
	}
	public void setData(PageData data) {
		this.data = data;
	}
	public List<Link> getLinks() {
		return links;
	}
	public void setLinks(List<Link> links) {
		this.links = links;
	}
	public int getPageNum() {
		return pageNum;
	}
	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}
	public Boolean getHasAnnotation() {
		return hasAnnotation;
	}
	public void setHasAnnotation(Boolean hasAnnotation) {
		this.hasAnnotation = hasAnnotation;
	}
}
