package com.docuware.dev.model;

import com.fasterxml.jackson.annotation.JsonProperty;

public class FileCabinet extends ObjectWithLinksIdName {
	@JsonProperty("Color")
	private String color;

	@JsonProperty("IsBasket")
	private Boolean basket;

	@JsonProperty("Usable")
	private Boolean usable;

	@JsonProperty("Default")
	private Boolean defaultValue;

	@JsonProperty("VersionManagement")
	private String versionManagement;

	@JsonProperty("WindowsExplorerClientAccess")
	private Boolean windowsExplorerClientAccess;

	@JsonProperty("AddIndexEntriesInUpperCase")
	private Boolean addIndexEntriesInUpperCase;

	@JsonProperty("DocumentAuditingEnabled")
	private Boolean documentAuditingEnabled;

	@JsonProperty("HasFullTextSupport")
	private Boolean hasFullTextSupport;

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public Boolean getBasket() {
		return basket;
	}

	public void setBasket(Boolean basket) {
		this.basket = basket;
	}

	public Boolean getUsable() {
		return usable;
	}

	public void setUsable(Boolean usable) {
		this.usable = usable;
	}

	public Boolean getDefaultValue() {
		return defaultValue;
	}

	public void setDefaultValue(Boolean defaultValue) {
		this.defaultValue = defaultValue;
	}

	public String getVersionManagement() {
		return versionManagement;
	}

	public void setVersionManagement(String versionManagement) {
		this.versionManagement = versionManagement;
	}

	public Boolean getWindowsExplorerClientAccess() {
		return windowsExplorerClientAccess;
	}

	public void setWindowsExplorerClientAccess(Boolean windowsExplorerClientAccess) {
		this.windowsExplorerClientAccess = windowsExplorerClientAccess;
	}

	public Boolean getAddIndexEntriesInUpperCase() {
		return addIndexEntriesInUpperCase;
	}

	public void setAddIndexEntriesInUpperCase(Boolean addIndexEntriesInUpperCase) {
		this.addIndexEntriesInUpperCase = addIndexEntriesInUpperCase;
	}

	public Boolean getDocumentAuditingEnabled() {
		return documentAuditingEnabled;
	}

	public void setDocumentAuditingEnabled(Boolean documentAuditingEnabled) {
		this.documentAuditingEnabled = documentAuditingEnabled;
	}

	public Boolean getHasFullTextSupport() {
		return hasFullTextSupport;
	}

	public void setHasFullTextSupport(Boolean hasFullTextSupport) {
		this.hasFullTextSupport = hasFullTextSupport;
	}
}
