package org.serene.latte.dto;

public class ImageFile {

	public static final String IMAGE_DIR = "F:\\serenatteImage\\";
	
	private String id;
	private String contentType;
	private int contentLength;
	private String fileName;

	public ImageFile() {}
	public ImageFile(String id, String contentType, int contentLength,
			String fileName) {
		this.id = id;
		this.contentType = contentType;
		this.contentLength = contentLength;
		this.fileName = fileName;
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getContentType() {
		return contentType;
	}
	public void setContentType(String contentType) {
		this.contentType = contentType;
	}
	public int getContentLength() {
		return contentLength;
	}
	public void setContentLength(int contentLength) {
		this.contentLength = contentLength;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	
	@Override
	public String toString() {
		return "ImageFile [id=" + id + ", contentType=" + contentType
				+ ", contentLength=" + contentLength + ", fileName=" + fileName
				+ "]";
	}
	
}
