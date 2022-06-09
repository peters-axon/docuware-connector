package com.docuware.dev.model;

import com.fasterxml.jackson.annotation.JsonProperty;

public class DocumentIndexField extends DocumentIndexFieldValueBase {
	@JsonProperty("SystemField")
	private Boolean systemField;
	@JsonProperty("FieldName")
	private String fieldName;
	@JsonProperty("FieldLabel")
	private String fieldLabel;
	@JsonProperty("IsNull")
	private Boolean isNull;
	@JsonProperty("ReadOnly")
	private Boolean readOnly;
	public Boolean getSystemField() {
		return systemField;
	}
	public void setSystemField(Boolean systemField) {
		this.systemField = systemField;
	}
	public String getFieldName() {
		return fieldName;
	}
	public void setFieldName(String fieldName) {
		this.fieldName = fieldName;
	}
	public String getFieldLabel() {
		return fieldLabel;
	}
	public void setFieldLabel(String fieldLabel) {
		this.fieldLabel = fieldLabel;
	}
	public Boolean getIsNull() {
		return isNull;
	}
	public void setIsNull(Boolean isNull) {
		this.isNull = isNull;
	}
	public Boolean getReadOnly() {
		return readOnly;
	}
	public void setReadOnly(Boolean readOnly) {
		this.readOnly = readOnly;
	}
}
