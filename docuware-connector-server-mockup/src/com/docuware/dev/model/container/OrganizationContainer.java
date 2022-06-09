package com.docuware.dev.model.container;

import java.util.List;

import com.docuware.dev.model.Organization;
import com.fasterxml.jackson.annotation.JsonProperty;

public class OrganizationContainer {
	@JsonProperty("Organization")
	private List<Organization> organizations;

	public List<Organization> getOrganizations() {
		return organizations;
	}

	public void setOrganizations(List<Organization> organizations) {
		this.organizations = organizations;
	}
}
