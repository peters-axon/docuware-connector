package com.docuware.dev.model.enums;

import com.fasterxml.jackson.annotation.JsonValue;

public enum VersionManagementStatus {
	DISABLE("Disable"),
	INITIAL("Initial"),
	IN_PROGRESS("InProgress"),
	MANUAL("Manual"),
	AUTOMATIC("Automatic");

	private final String value;

	private VersionManagementStatus(String value) {
		this.value = value;
	}

	@JsonValue
	public String getValue() {
		return value;
	}
}
