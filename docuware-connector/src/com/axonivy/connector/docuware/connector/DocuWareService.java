package com.axonivy.connector.docuware.connector;

import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import com.docuware.dev.schema._public.services.platform.DocumentIndexField;


public class DocuWareService {
	/*
	 * This is the format: /Date(1652285631000)/
	 */
	private static final Pattern DATE_PATTERN = Pattern.compile("/Date\\(([0-9]+)\\)/");
	private static final DocuWareService INSTANCE = new DocuWareService();

	public static DocuWareService get() {
		return INSTANCE;
	}

	public DocumentIndexField createDocumentIndexStringField(String fieldName, String item) {
		DocumentIndexField field = new DocumentIndexField();
		field.setFieldName(fieldName);
		field.setString(item);
		return field;
	}

	public DocumentIndexField createDocumentIndexDateField(String fieldName, Date date) {
		DocumentIndexField field = new DocumentIndexField();
		field.setFieldName(fieldName);
		Calendar calendar = GregorianCalendar.getInstance();
		calendar.setTime(date);
		// set
		return field;
	}

	public String dateToString(Date date) {
		String string = null;
		if(date != null) {
			string = String.format("/Date(%d)/", date.getTime());
		}
		return string;
	}

	public Date stringToDate(String dateString) {
		Date date = null;
		if(dateString != null) {
			Matcher matcher = DATE_PATTERN.matcher(dateString);
			if(matcher.matches()) {
				long timestamp = Long.parseLong(matcher.group(1));
				date = new Date(timestamp);
			}
		}
		return date;
	}
}
