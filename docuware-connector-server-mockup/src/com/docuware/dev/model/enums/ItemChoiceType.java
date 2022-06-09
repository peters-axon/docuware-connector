package com.docuware.dev.model.enums;

import com.fasterxml.jackson.annotation.JsonValue;

public enum ItemChoiceType {
	DATE("Date"), 
	DATETIME("DateTime"),
	DECIMAL("Decimal"),
	STRING("String"), 
	MONO("Mono"),
	INT("Int"), 
	KEYWORDS("Keywords");

	private final String value;

	private ItemChoiceType(String value) {
		this.value = value;
	}

	@JsonValue
	public String getValue() {
		return value;
	}
}
