package com.aaa.entity;

public class Member {
	private Integer id;
	private String username;// ÉêÇëÈË
	private String reason;// ÉêÇëÔ­Òò
	private int state;
	private String state_name;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	public String getState_name() {
		return state_name;
	}

	public void setState_name(String state_name) {
		this.state_name = state_name;
	}

	public Member(int id, String username, String reason, int state, String state_name) {
		super();
		this.id = id;
		this.username = username;
		this.reason = reason;
		this.state = state;
		this.state_name = state_name;
	}

	public Member() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "Member [id=" + id + ", username=" + username + ", reason=" + reason + ", state=" + state
				+ ", state_name=" + state_name + "]";
	}

}
