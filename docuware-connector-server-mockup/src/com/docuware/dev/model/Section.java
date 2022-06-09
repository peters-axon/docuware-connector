package com.docuware.dev.model;

import java.util.GregorianCalendar;
import java.util.List;

import com.docuware.dev.model.container.PageContainer;
import com.docuware.dev.model.enums.SignatureStatus;
import com.fasterxml.jackson.annotation.JsonProperty;

public class Section {
	@JsonProperty("SignatureStatus")
	private List<SignatureStatus> signatureStatus;
	@JsonProperty("Pages")
	protected PageContainer pages;
	@JsonProperty("Thumbnails")
	protected PageContainer thumbnails;
	@JsonProperty("Links")
	private List<Link> links;
	@JsonProperty("Id")
	protected String id;
	@JsonProperty("ContentType")
	protected String contentType;
	@JsonProperty("HaveMorePages")
	protected Boolean haveMorePages;
	@JsonProperty("PageCount")
	protected Integer pageCount;
	@JsonProperty("FileSize")
	protected Long fileSize;
	@JsonProperty("OriginalFileName")
	protected String originalFileName;
	@JsonProperty("ContentModified")
	protected GregorianCalendar contentModified;
	@JsonProperty("HasTextAnnotation")
	protected Boolean hasTextAnnotation;
	public List<SignatureStatus> getSignatureStatus() {
		return signatureStatus;
	}
	public void setSignatureStatus(List<SignatureStatus> signatureStatus) {
		this.signatureStatus = signatureStatus;
	}
	public PageContainer getPages() {
		return pages;
	}
	public void setPages(PageContainer pages) {
		this.pages = pages;
	}
	public PageContainer getThumbnails() {
		return thumbnails;
	}
	public void setThumbnails(PageContainer thumbnails) {
		this.thumbnails = thumbnails;
	}
	public List<Link> getLinks() {
		return links;
	}
	public void setLinks(List<Link> links) {
		this.links = links;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getContentType() {
		return contentType;
	}
	public void setContentType(String contentType) {
		this.contentType = contentType;
	}
	public Boolean getHaveMorePages() {
		return haveMorePages;
	}
	public void setHaveMorePages(Boolean haveMorePages) {
		this.haveMorePages = haveMorePages;
	}
	public Integer getPageCount() {
		return pageCount;
	}
	public void setPageCount(Integer pageCount) {
		this.pageCount = pageCount;
	}
	public Long getFileSize() {
		return fileSize;
	}
	public void setFileSize(Long fileSize) {
		this.fileSize = fileSize;
	}
	public String getOriginalFileName() {
		return originalFileName;
	}
	public void setOriginalFileName(String originalFileName) {
		this.originalFileName = originalFileName;
	}
	public GregorianCalendar getContentModified() {
		return contentModified;
	}
	public void setContentModified(GregorianCalendar contentModified) {
		this.contentModified = contentModified;
	}
	public Boolean getHasTextAnnotation() {
		return hasTextAnnotation;
	}
	public void setHasTextAnnotation(Boolean hasTextAnnotation) {
		this.hasTextAnnotation = hasTextAnnotation;
	}
}
