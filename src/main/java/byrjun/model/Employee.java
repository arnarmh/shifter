package byrjun.model;

import java.text.ParseException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Locale;

/**
 * The class holds information about an employee in the system.
 * @author Hópur 2: Arnar Már, Jón Ágúst, Markús Freyr og Sigrún Dís
 * @date September 2017
 * HBV 501G Hugbúnaðarverkefni
 * Háskóli Íslands
 */

public class Employee {
	private String name;
	private String email;
	private String type;
	private String size;
	private LocalDate date;
	
	/**
	 * The constructor
	 * @param name name of the employee.
	 * @param date birthdate of the employee.
	 * @param email the employee's email.
	 * @param type the role of the employee on the event.
	 * @param the employee's t-shirt size.
	 * @throws ParseException
	 */
	public Employee(String name,String date, String email, String type, String size) throws ParseException {
		this.name = name;
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd", Locale.ENGLISH);
		this.date = LocalDate.parse(date, formatter);
		this.email = email;
		this.type = type;
		this.size = size;
	}
	
	//Getters og setters for Employee.

	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getType() {
		return type;
	}
	
	public void setType(String type) {
		this.type = type;
	}
	
	public String getSize() {
		return size;
	}
	
	public void setSize(String size) {
		this.size = size;
	}

	public LocalDate getDate() {
		return date;
	}

	public void setDate(LocalDate date) {
		this.date = date;
	}

	


}
