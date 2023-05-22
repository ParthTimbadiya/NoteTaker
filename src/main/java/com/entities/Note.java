package com.entities;

import java.util.Date;
import java.util.Random;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "Notes")
public class Note {
	
	@Id
	@Column(name = "ID")
	private int id;
	
	@Column(name = "TITLE")
	private String titleString;
	
	@Column(name = "CONTENT", length = 2000)
	private String contentString;
	
	@Column(name = "DATE_TIME")
	private Date addeDate;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitleString() {
		return titleString;
	}
	public void setTitleString(String titleString) {
		this.titleString = titleString;
	}
	public String getContentString() {
		return contentString;
	}
	public void setContentString(String contentString) {
		this.contentString = contentString;
	}
	public Date getAddeDate() {
		return addeDate;
	}
	public void setAddeDate(Date addeDate) {
		this.addeDate = addeDate;
	}
	public Note() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Note( String titleString, String contentString, Date addeDate) {
		super();
		this.id = new Random().nextInt(100000);
		this.titleString = titleString;
		this.contentString = contentString;
		this.addeDate = addeDate;
	}
	@Override
	public String toString() {
		return "Note [id=" + id + ", titleString=" + titleString + ", contentString=" + contentString + ", addeDate="
				+ addeDate + "]";
	}
	
	
	
}
