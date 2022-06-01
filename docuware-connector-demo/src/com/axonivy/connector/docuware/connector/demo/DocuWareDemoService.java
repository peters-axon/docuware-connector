package com.axonivy.connector.docuware.connector.demo;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.List;
import java.util.Map.Entry;
import java.util.function.Consumer;

import javax.ws.rs.core.Response;

import ch.ivyteam.ivy.environment.Ivy;


public class DocuWareDemoService {
	private static DocuWareDemoService INSTANCE = new DocuWareDemoService();

	public static DocuWareDemoService get() {
		return INSTANCE;
	}

	public String getLog(Response response) {
		return getGenericLog(response, pw -> {
			String body = response.readEntity(String.class);

			pw.println();
			pw.format("Body:%n");
			pw.format(body);
		});
	}

	public String getLog(Response response, Object object) {
		return getGenericLog(response, pw -> {
			pw.print(object.toString());
		});
	}

	protected String getGenericLog(Response response, Consumer<PrintWriter> printWriterConsumer) {
		StringWriter sw = new StringWriter();
		PrintWriter pw = new PrintWriter(sw);

		pw.println("Response");
		pw.println("========");
		pw.println("Status: " + response.getStatusInfo());
		pw.println();
		pw.println("Headers");
		pw.println("=======");

		for (Entry<String, List<Object>> entry : response.getHeaders().entrySet()) {
			for (Object header : entry.getValue()) {
				pw.format("%s: %s%n", entry.getKey(), header);
			}
		}
		pw.println();
		
		pw.println("Result");
		pw.println("======");

		printWriterConsumer.accept(pw);

		pw.println();

		String result = sw.toString();
		Ivy.log().info("{0}", result);
		return result;
	}
}
