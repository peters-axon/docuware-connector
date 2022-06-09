package com.docuware.dev.model;

import com.docuware.dev.model.enums.ItemChoiceType;
import com.fasterxml.jackson.annotation.JsonProperty;

public class DocumentIndexFieldValueBase {

	@JsonProperty("Item")
	protected Object item;
	@JsonProperty("ItemElementName")
	protected ItemChoiceType itemElementName;

	public DocumentIndexFieldValueBase() {
		super();
	}

	public Object getItem() {
		return item;
	}

	public void setItem(Object item) {
		this.item = item;
	}

	public ItemChoiceType getItemElementName() {
		return itemElementName;
	}

	public void setItemElementName(ItemChoiceType itemElementName) {
		this.itemElementName = itemElementName;
	}

}