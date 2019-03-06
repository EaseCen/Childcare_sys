package com.aaa.entity;

import java.util.Date;

public class Posts {
	private Integer id;
	private String name;// 帖子标题
	private String text;// 帖子正文
	private Date time;// 发帖时间
	private String author;// 帖子作者id
	private String repost_user;
	private Integer repost_id;// 回复帖子的id


	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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

	public String getRepost_user() {
		return repost_user;
	}

	public void setRepost_user(String repost_user) {
		this.repost_user = repost_user;
	}
	
	

	public Integer getRepost_id() {
		return repost_id;
	}

	public void setRepost_id(Integer repost_id) {
		this.repost_id = repost_id;
	}

	public Posts(int id, String name, String text,Date time, String author, String repost_user,int repost_id) {
		super();
		this.id = id;
		this.name = name;
		this.text = text;
		this.time = time;
		this.author = author;
		this.repost_user = repost_user;
		this.repost_id = repost_id;
	}

	public Posts() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "Posts [id=" + id + ", name=" + name + ", text=" + text + ", time=" + time + ", author=" + author
				+ ", repost_user=" + repost_user + ", repost_id=" + repost_id + "]";
	}

	


}
