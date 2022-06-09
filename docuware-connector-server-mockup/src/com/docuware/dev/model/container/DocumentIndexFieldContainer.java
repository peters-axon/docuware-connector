package com.docuware.dev.model.container;

import java.util.List;

import com.docuware.dev.model.DocumentIndexField;
import com.fasterxml.jackson.annotation.JsonProperty;

public class DocumentIndexFieldContainer {
	@JsonProperty("Fields")
	private List<DocumentIndexField> fields;

	public List<DocumentIndexField> getFields() {
		return fields;
	}

	public void setFields(List<DocumentIndexField> fields) {
		this.fields = fields;
	}
}
