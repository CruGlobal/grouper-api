package org.ccci.idm.grouper.obj;

public class GrouperMembership {
	private String member;
	private String group;
	private String attester;

	public GrouperMembership() {
	}

	public GrouperMembership(String member, String group, String attester) {
		super();
		this.member = member;
		this.group = group;
		this.attester = attester;
	}

	public void setMember(String member) {
		this.member = member;
	}

	public String getMember() {
		return member;
	}

	public void setGroup(String group) {
		this.group = group;
	}

	public String getGroup() {
		return group;
	}

	public void setAttester(String attester) {
		this.attester = attester;
	}

	public String getAttester() {
		return attester;
	}
}
