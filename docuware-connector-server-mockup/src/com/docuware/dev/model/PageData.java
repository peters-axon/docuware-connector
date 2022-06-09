package com.docuware.dev.model;

import com.docuware.dev.model.enums.PlatformImageFormat;
import com.fasterxml.jackson.annotation.JsonProperty;

public class PageData {
	@JsonProperty("LowQualitySize")
	protected int lowQualitySize;
	@JsonProperty("TileSize")
	protected int tileSize;
	@JsonProperty("RenderedImageFormat")
	protected PlatformImageFormat renderedImageFormat;
	@JsonProperty("ContentArea")
	protected DWRectangle contentArea;
	@JsonProperty("DpiX")
	protected int dpiX;
	@JsonProperty("DpiY")
	protected int dpiY;
	@JsonProperty("Width")
	protected int width;
	@JsonProperty("Height")
	protected int height;
	public int getLowQualitySize() {
		return lowQualitySize;
	}
	public void setLowQualitySize(int lowQualitySize) {
		this.lowQualitySize = lowQualitySize;
	}
	public int getTileSize() {
		return tileSize;
	}
	public void setTileSize(int tileSize) {
		this.tileSize = tileSize;
	}
	public PlatformImageFormat getRenderedImageFormat() {
		return renderedImageFormat;
	}
	public void setRenderedImageFormat(PlatformImageFormat renderedImageFormat) {
		this.renderedImageFormat = renderedImageFormat;
	}
	public DWRectangle getContentArea() {
		return contentArea;
	}
	public void setContentArea(DWRectangle contentArea) {
		this.contentArea = contentArea;
	}
	public int getDpiX() {
		return dpiX;
	}
	public void setDpiX(int dpiX) {
		this.dpiX = dpiX;
	}
	public int getDpiY() {
		return dpiY;
	}
	public void setDpiY(int dpiY) {
		this.dpiY = dpiY;
	}
	public int getWidth() {
		return width;
	}
	public void setWidth(int width) {
		this.width = width;
	}
	public int getHeight() {
		return height;
	}
	public void setHeight(int height) {
		this.height = height;
	}
}
