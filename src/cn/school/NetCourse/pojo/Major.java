package cn.school.NetCourse.pojo;

public class Major {

	private Integer majorId;
	private String majorName;
	private Institute institute;

	public Major() {
		super();
	}

	public Major(Integer majorId, String majorName, Institute institute) {
		super();
		this.majorId = majorId;
		this.majorName = majorName;
		this.institute = institute;

	}

	public Integer getMajorId() {
		return majorId;
	}

	public void setMajorId(Integer majorId) {
		this.majorId = majorId;
	}

	public String getMajorName() {
		return majorName;
	}

	public void setMajorName(String majorName) {
		this.majorName = majorName;
	}

	public Institute getInstitute() {
		return institute;
	}

	public void setInstitute(Institute institute) {
		this.institute = institute;
	}

	@Override
	public String toString() {
		return "Major [majorId=" + majorId + ", majorName=" + majorName + ", institute=" + institute+" ]";
	}

}
