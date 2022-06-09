package com.docuware.dev.model;

import java.util.List;

import com.docuware.dev.model.enums.IntellixTrust;
import com.docuware.dev.model.enums.VersionManagementStatus;
import com.fasterxml.jackson.annotation.JsonProperty;

public class Document extends ObjectWithLinksId {
	@JsonProperty("FileCabinetId")
	private String fileCabinetId;
	@JsonProperty("Fields")
	private List<DocumentIndexField> fields;
	@JsonProperty("Flags")
	private DocumentFlags flags;
	@JsonProperty("ContentType")
	private String contentType;
	@JsonProperty("HaveMoreTotalPages")
	private Boolean haveMoreTotalPages;
	@JsonProperty("HasTextAnnotation")
	private Boolean hasTextAnnotation;
	@JsonProperty("HasXmlDigitalSignatures")
	private Boolean hasXmlDigitalSignatures;
	@JsonProperty("TotalPages")
	private Integer totalPages;
	@JsonProperty("Title")
	private String title;
	@JsonProperty("LastModified")
	private String lastModified;
	@JsonProperty("CreatedAt")
	private String createdAt;
	@JsonProperty("FileSize")
	private Long fileSize;
	@JsonProperty("SectionCount")
	private Integer sectionCount;
	@JsonProperty("IntellixTrust")
	private IntellixTrust intellixTrust;
	@JsonProperty("VersionStatus")
	private VersionManagementStatus versionStatus;

	public String getFileCabinetId() {
		return fileCabinetId;
	}
	public void setFileCabinetId(String fileCabinetId) {
		this.fileCabinetId = fileCabinetId;
	}
	public List<DocumentIndexField> getFields() {
		return fields;
	}
	public void setFields(List<DocumentIndexField> fields) {
		this.fields = fields;
	}
	public DocumentFlags getFlags() {
		return flags;
	}
	public void setFlags(DocumentFlags flags) {
		this.flags = flags;
	}
	public String getContentType() {
		return contentType;
	}
	public void setContentType(String contentType) {
		this.contentType = contentType;
	}
	public Boolean getHaveMoreTotalPages() {
		return haveMoreTotalPages;
	}
	public void setHaveMoreTotalPages(Boolean haveMoreTotalPages) {
		this.haveMoreTotalPages = haveMoreTotalPages;
	}
	public Boolean getHasTextAnnotation() {
		return hasTextAnnotation;
	}
	public void setHasTextAnnotation(Boolean hasTextAnnotation) {
		this.hasTextAnnotation = hasTextAnnotation;
	}
	public Boolean getHasXmlDigitalSignatures() {
		return hasXmlDigitalSignatures;
	}
	public void setHasXmlDigitalSignatures(Boolean hasXmlDigitalSignatures) {
		this.hasXmlDigitalSignatures = hasXmlDigitalSignatures;
	}
	public Integer getTotalPages() {
		return totalPages;
	}
	public void setTotalPages(Integer totalPages) {
		this.totalPages = totalPages;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getLastModified() {
		return lastModified;
	}
	public void setLastModified(String lastModified) {
		this.lastModified = lastModified;
	}
	public String getCreatedAt() {
		return createdAt;
	}
	public void setCreatedAt(String createdAt) {
		this.createdAt = createdAt;
	}
	public Long getFileSize() {
		return fileSize;
	}
	public void setFileSize(Long fileSize) {
		this.fileSize = fileSize;
	}
	public Integer getSectionCount() {
		return sectionCount;
	}
	public void setSectionCount(Integer sectionCount) {
		this.sectionCount = sectionCount;
	}
	public IntellixTrust getIntellixTrust() {
		return intellixTrust;
	}
	public void setIntellixTrust(IntellixTrust intellixTrust) {
		this.intellixTrust = intellixTrust;
	}
	public VersionManagementStatus getVersionStatus() {
		return versionStatus;
	}
	public void setVersionStatus(VersionManagementStatus versionStatus) {
		this.versionStatus = versionStatus;
	}


}
