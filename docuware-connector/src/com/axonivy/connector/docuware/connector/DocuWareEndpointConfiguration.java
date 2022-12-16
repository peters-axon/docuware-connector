package com.axonivy.connector.docuware.connector;

public class DocuWareEndpointConfiguration {

	
	private String username;
	
	private String password;
	
	private String fileCabinetId;
	
	private String credentials;

	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

		
	public String getCredentials() {
		return credentials;
	}
	
	public void setCredentials(String credentials) {
		this.credentials = credentials;
	}
		
	public String getFileCabinetId() {
		return fileCabinetId;
	}

	public void setFileCabinetId(String fileCabinetId) {
		this.fileCabinetId = fileCabinetId;
	}

	@Override
	public String toString() {
		return String.format("filecabinet: %s / username: %s / password: %s / credentials: %s", 
				fileCabinetId, username, password, credentials);
	}

}
