package com.axonivy.connector.docuware.connector.auth.oauth;

import com.axonivy.connector.docuware.connector.DocuWareService;

import ch.ivyteam.ivy.environment.Ivy;

public class VarTokenStore {
	private final String varName;

	public static VarTokenStore get(String varName) {
		return new VarTokenStore(varName);
	}

	VarTokenStore(String varName) {
		this.varName = varName;
	}

	/**
	 * Loads Variable and tries to create the token object {@link Token}
	 * 
	 * @return
	 */
	public Token getToken() {
		String tokenVar = Ivy.var().get(varName);
		return DocuWareService.get().convertJsonToObject(tokenVar, Token.class);
	}

	/**
	 * Stores token object {@link Token} as a json to Variable
	 * 
	 * @param token
	 */
	public void setToken(Token token) {
		String tokenString = DocuWareService.get().writeObjectAsJson(token);
		Ivy.var().set(varName, tokenString);
	}
}
