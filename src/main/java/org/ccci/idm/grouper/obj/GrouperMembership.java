package org.ccci.idm.grouper.obj;

import java.util.Date;

public class GrouperMembership {
	private String member;
	private String group;
	private String attester;
	private Date expiration;

	public GrouperMembership() {
	}

	public GrouperMembership(String member, String group, String attester) {
        super();
        this.member = member;
        this.group = group;
        this.attester = attester;
        this.expiration = null;
    }
	
	public GrouperMembership(String member, String group, String attester, Date expiration) {
		super();
		this.member = member;
		this.group = group;
		this.attester = attester;
		this.expiration = expiration;
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

    public Date getExpiration()
    {
        return expiration;
    }

    public void setExpiration(Date expiration)
    {
        this.expiration = expiration;
    }
}
