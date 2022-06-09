package com.docuware.dev.model;

import com.fasterxml.jackson.annotation.JsonProperty;

public class DWRectangle {
	@JsonProperty("Left")
	protected double left;
	@JsonProperty("Top")
	protected double top;
	@JsonProperty("Width")
	protected double width;
	@JsonProperty("Height")
	protected double height;

	public double getLeft() {
		return left;
	}
	public void setLeft(double left) {
		this.left = left;
	}
	public double getTop() {
		return top;
	}
	public void setTop(double top) {
		this.top = top;
	}
	public double getWidth() {
		return width;
	}
	public void setWidth(double width) {
		this.width = width;
	}
	public double getHeight() {
		return height;
	}
	public void setHeight(double height) {
		this.height = height;
	}
}
