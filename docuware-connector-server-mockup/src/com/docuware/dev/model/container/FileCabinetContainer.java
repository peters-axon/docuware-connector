package com.docuware.dev.model.container;

import java.util.List;

import com.docuware.dev.model.FileCabinet;
import com.fasterxml.jackson.annotation.JsonProperty;

public class FileCabinetContainer {
	@JsonProperty("FileCabinet")
	private List<FileCabinet> fileCabinets;

	public List<FileCabinet> getFileCabinets() {
		return fileCabinets;
	}

	public void setFileCabinets(List<FileCabinet> fileCabinets) {
		this.fileCabinets = fileCabinets;
	}
}
