package com.aaa.entity;

import java.util.Date;

public class Parenting {
	private Integer id;
	private String text;// ��������
	private Date time;// ����ʱ��
	private String author;// ��������id

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public Parenting(int id, String text,Date time, String author) {
		super();
		this.id = id;
		this.text = text;
		this.time = time;
		this.author = author;
	}

	public Parenting() {
		super();
	}
	
	@Override
	public String toString() {
		return "Parenting [id=" + id + ", text=" + text + ", time=" + time + ", author=" + author + "]";
	}


}
