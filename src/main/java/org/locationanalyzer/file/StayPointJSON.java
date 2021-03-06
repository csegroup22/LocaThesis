package org.locationanalyzer.file;

import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.util.TreeSet;

import org.locationanalyzer.entities.json.out.StayPoint;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.ObjectWriter;

public class StayPointJSON
{
	public void generateJsonFile(TreeSet<StayPoint> stayPoints, String jsonDestFile) throws JsonProcessingException, FileNotFoundException
	{
		ObjectMapper mapper=new ObjectMapper();
		ObjectWriter ow = mapper.writer().withDefaultPrettyPrinter();
		String stayPointFile = ow.writeValueAsString(stayPoints);
		PrintWriter out = new PrintWriter(jsonDestFile);
		out.print(stayPointFile);
		out.close();
	}
}
