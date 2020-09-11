package com.agile.dashboard.model;


import org.springframework.format.annotation.DateTimeFormat;
import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Table(name="issue_list")

@Entity
public class Issue {
	@Id
	private int id;
	private String type;
	private String subject;
	private String description;
	private String priority;
	private String status;
	private String assignee;
	@DateTimeFormat(pattern = "dd.mm.yyyy")
	private Date duedate;
	@DateTimeFormat(pattern="dd/MM/yyyy HH:mm:ss")
	private Date current;
	public Date getCurrent() {
		return current;
	}
	public void setCurrent(Date current) {
		this.current = current;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getPriority() {
		return priority;
	}
	public void setPriority(String priority) {
		this.priority = priority;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getAssignee() {
		return assignee;
	}
	public void setAssignee(String assignee) {
		this.assignee = assignee;
	}
	public Date getDuedate() {
		return duedate;
	}
	public void setDuedate(Date duedate) {
		this.duedate = duedate;
	}
	public Issue()
	
	{
		
	}
	public Issue(String type, String subject, String description, String status, String priority, String assignee,
			Date duedate,Date current) {
		super();
		this.type = type;
		this.subject = subject;
		this.description = description;
		this.status = status;
		
		this.priority = priority;
		this.assignee = assignee;
		this.duedate = duedate;
		this.current = current;
	}
	@Override
	public String toString() {
		return "Issue [id=" + id + ", type=" + type + ", subject=" + subject + ", description=" + description
				+ ", status=" + status + ", priority=" + priority + ", assignee=" + assignee + ", duedate=" + duedate
				+", current=" + current
				+ "]";
	}






}
	