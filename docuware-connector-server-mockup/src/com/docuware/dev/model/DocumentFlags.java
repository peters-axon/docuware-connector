package com.docuware.dev.model;

import com.fasterxml.jackson.annotation.JsonProperty;

public class DocumentFlags {
	@JsonProperty("IsCold")
	private Boolean isCold;
	@JsonProperty("IsDBRecord")
	private Boolean isDBRecord;
	@JsonProperty("IsCheckedOut")
	private Boolean isCheckedOut;
	@JsonProperty("IsCopyRightprivate")
	private Boolean isCopyRightprivate;
	@JsonProperty("IsVoiceAvailable")
	private Boolean isVoiceAvailable;
	@JsonProperty("HasAppendedDocuments")
	private Boolean hasAppendedDocuments;
	@JsonProperty("Isprivate")
	private Boolean isprivate;
	@JsonProperty("IsDeleted")
	private Boolean isDeleted;
	@JsonProperty("IsEmail")
	private Boolean isEmail;

	public Boolean getIsCold() {
		return isCold;
	}
	public void setIsCold(Boolean isCold) {
		this.isCold = isCold;
	}
	public Boolean getIsDBRecord() {
		return isDBRecord;
	}
	public void setIsDBRecord(Boolean isDBRecord) {
		this.isDBRecord = isDBRecord;
	}
	public Boolean getIsCheckedOut() {
		return isCheckedOut;
	}
	public void setIsCheckedOut(Boolean isCheckedOut) {
		this.isCheckedOut = isCheckedOut;
	}
	public Boolean getIsCopyRightprivate() {
		return isCopyRightprivate;
	}
	public void setIsCopyRightprivate(Boolean isCopyRightprivate) {
		this.isCopyRightprivate = isCopyRightprivate;
	}
	public Boolean getIsVoiceAvailable() {
		return isVoiceAvailable;
	}
	public void setIsVoiceAvailable(Boolean isVoiceAvailable) {
		this.isVoiceAvailable = isVoiceAvailable;
	}
	public Boolean getHasAppendedDocuments() {
		return hasAppendedDocuments;
	}
	public void setHasAppendedDocuments(Boolean hasAppendedDocuments) {
		this.hasAppendedDocuments = hasAppendedDocuments;
	}
	public Boolean getIsprivate() {
		return isprivate;
	}
	public void setIsprivate(Boolean isprivate) {
		this.isprivate = isprivate;
	}
	public Boolean getIsDeleted() {
		return isDeleted;
	}
	public void setIsDeleted(Boolean isDeleted) {
		this.isDeleted = isDeleted;
	}
	public Boolean getIsEmail() {
		return isEmail;
	}
	public void setIsEmail(Boolean isEmail) {
		this.isEmail = isEmail;
	}
}
