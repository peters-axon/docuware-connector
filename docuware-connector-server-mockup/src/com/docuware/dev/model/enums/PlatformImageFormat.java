package com.docuware.dev.model.enums;

import com.fasterxml.jackson.annotation.JsonValue;

public enum PlatformImageFormat {
	PNG("Png"),
	JPEG("Jpeg");

	private final String value;

	private PlatformImageFormat(String value) {
		this.value = value;
	}

	@JsonValue
	public String getValue() {
		return value;
	}
}
