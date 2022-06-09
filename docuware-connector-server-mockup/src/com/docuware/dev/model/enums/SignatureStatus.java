package com.docuware.dev.model.enums;

import com.fasterxml.jackson.annotation.JsonValue;

public enum SignatureStatus {
	ALLOW_ANNOTATIONS("Allow_Annotations"),
	ALLOW_STAMPS("Allow_Stamps"),
	ALLOW_SIGNATURE_STAMPS("Allow_Signature_Stamps");

	private final String value;

	private SignatureStatus(String value) {
		this.value = value;
	}

	@JsonValue
	public String getValue() {
		return value;
	}
}
