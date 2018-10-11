
package com.css.corp.empo.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/*
 * This is our model class and it corresponds to Customer table in database
 */
@Entity
@Table(name = "PROJECT")
public class Customer {

	@Id
	@Column(name = "s_no")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int s_no;

	public int getS_no() {
		return s_no;
	}

	public void setS_no(int s_no) {
		this.s_no = s_no;
	}

	@Column(name = "projectid")
	String projectid;
	public String getProjectid() {
		return projectid;
	}

	public void setProjectid(String projectid) {
		this.projectid = projectid;
	}

	@Column(name = "projectname")
	String projectname;
	@Column(name = "projectmanager")
	String projectmanager;

	@Column(name = "deliverydirector")
	String deliverydirector;

	@Column(name = "location")
	String location;

	@Column(name = "projecttype")
	String projecttype;

	@Column(name = "unit")
	String unit;

	public Customer() {
		super();
	}

	public String getProjectname() {
		return projectname;
	}

	public void setProjectname(String projectname) {
		this.projectname = projectname;
	}

	public String getProjectmanager() {
		return projectmanager;
	}

	public void setProjectmanager(String projectmanager) {
		this.projectmanager = projectmanager;
	}

	public String getDeliverydirector() {
		return deliverydirector;
	}

	public void setDeliverydirector(String deliverydirector) {
		this.deliverydirector = deliverydirector;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getProjecttype() {
		return projecttype;
	}

	public void setProjecttype(String projecttype) {
		this.projecttype = projecttype;
	}

	public String getUnit() {
		return unit;
	}

	public void setUnit(String unit) {
		this.unit = unit;
	}

	public Customer(int s_no, String project_id, String projectname, String projectmanager, String deliverydirector, String location,
			String projecttype, String unit) {
		super();
		this.s_no = s_no;
		this.projectid  =projectid;
		this.projectname = projectname;
		this.projectmanager = projectmanager;
		this.deliverydirector = deliverydirector;
		this.location = location;
		this.projecttype = projecttype;
		this.unit = unit;
	}
}
