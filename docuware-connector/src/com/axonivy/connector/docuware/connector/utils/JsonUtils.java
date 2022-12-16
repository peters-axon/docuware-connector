package com.axonivy.connector.docuware.connector.utils;


import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.List;

import com.axonivy.connector.docuware.connector.DocuWareProperties;
import com.axonivy.connector.docuware.connector.DocuWarePropertiesUpdate;
import com.fasterxml.jackson.annotation.JsonInclude.Include;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.Module;
import com.fasterxml.jackson.databind.ObjectMapper;


import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.util.StringUtil;

/**
 * Provides utilities related to json serialization like building an ObjectMapper with all required options and features.
 *
 * @author jpl
 *
 */
public class JsonUtils {
	private static final ObjectMapper OM = new ObjectMapper();
	/**
	 * Builds and returns an {@link ObjectMapper} with all required features and options required in the NScale interface.
	 *
	 * @return
	 */
	public static ObjectMapper buildObjectMapper() {
		ObjectMapper mapper = new ObjectMapper();

		Module timeModule = timeModule();
		mapper.registerModule(timeModule);

		mapper.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
		mapper.configure(DeserializationFeature.READ_DATE_TIMESTAMPS_AS_NANOSECONDS, false);

		return mapper;
	}

	/**
	 * Serializes {@link DocuWareProperties} to {@link String}
	 *
	 * @param properties
	 * @return
	 * @throws JsonProcessingException
	 */
	public static String serializeProperties(DocuWareProperties properties) throws JsonProcessingException {
		String result;
		result = JsonUtils.buildObjectMapper().setSerializationInclusion(Include.NON_NULL).writeValueAsString(properties);

		return result;
	}
	
	/**
	 * Serializes {@link DocuWarePropertiesUpdate} to {@link String}
	 *
	 * @param properties
	 * @return
	 * @throws JsonProcessingException
	 */
	public static String serializeProperties(DocuWarePropertiesUpdate properties) throws JsonProcessingException {
		String result;
		result = JsonUtils.buildObjectMapper().setSerializationInclusion(Include.NON_NULL).writeValueAsString(properties);

		return result;
	}
	

	/**
	 * Deserializes a file containing the properties json to {@link DocuWareProperties}
	 *
	 * @param file
	 * @return
	 * @throws JsonParseException
	 * @throws JsonMappingException
	 * @throws IOException
	 */
	public static DocuWareProperties deserializeProperties(java.io.File file) throws JsonParseException, JsonMappingException, IOException {
		DocuWareProperties properties = JsonUtils.buildObjectMapper().readValue(file, DocuWareProperties.class);
		return properties;
	}

	/**
	 * Registers the timeModule within the class loader
	 *
	 * @return
	 */
	private static Module timeModule() {
		try {
			return (Module) StringUtil.class.getClassLoader().loadClass("com.fasterxml.jackson.datatype.jsr310.JavaTimeModule")
					.getDeclaredConstructor().newInstance();
		} catch (InstantiationException | IllegalAccessException | IllegalArgumentException
				| InvocationTargetException | NoSuchMethodException | SecurityException
				| ClassNotFoundException e) {
			throw new RuntimeException("JSR time module not available", e);
		}
	}
	
	public static <T> T jsonToObject(String json, Class<T> type) {
		T result = null;
		try {
			result = OM.readValue(json, type);
		} catch (JsonParseException e) {
			Ivy.log().error(e);
		} catch (JsonMappingException e) {
			Ivy.log().error(e);
		} catch (IOException e) {
			Ivy.log().error(e);
		}

		return result;

	}

	public static <T> List<T> jsonToObjects(String json, Class<T> type) {
		List<T> results = null;
		try {
			results = OM.readValue(json, new TypeReference<List<T>>() {
			});
		} catch (JsonParseException e) {
			Ivy.log().error(e);
		} catch (JsonMappingException e) {
			Ivy.log().error(e);
		} catch (IOException e) {
			Ivy.log().error(e);
		}
		return results;

	}
}
