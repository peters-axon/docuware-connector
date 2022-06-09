package com.docuware.dev.model.container;

import java.util.List;

import com.docuware.dev.model.Page;
import com.fasterxml.jackson.annotation.JsonProperty;

public class PageContainer {
	@JsonProperty("Page")
	private List<Page> pages;
}
