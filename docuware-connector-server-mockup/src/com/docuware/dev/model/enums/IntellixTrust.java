package com.docuware.dev.model.enums;

import com.fasterxml.jackson.annotation.JsonValue;

public enum IntellixTrust {
	NONE("None"),
	FAILED("Failed"),
	IN_PROGRESS("InProgress"),
	RED("Red"),
	YELLOW("Yellow"),
	GREEN("Green");

	private final String value;

	private IntellixTrust(String value) {
		this.value = value;
	}

	@JsonValue
	public String getValue() {
		return value;
	}
}
