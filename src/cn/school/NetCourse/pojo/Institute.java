package cn.school.NetCourse.pojo;
//ѧԺ

import java.util.HashSet;
import java.util.Set;

public class Institute {
	private Integer instituteId;
	private String instituteName;
	private Set<Major> majors = new HashSet<>();

	public Institute() {
		super();
	}

	public Institute(Integer instituteId, String instituteName) {
		super();
		this.instituteId = instituteId;
		this.instituteName = instituteName;
	}

	public Integer getInstituteId() {
		return instituteId;
	}

	public void setInstituteId(Integer instituteId) {
		this.instituteId = instituteId;
	}

	public String getInstituteName() {
		return instituteName;
	}

	public void setInstituteName(String instituteName) {
		this.instituteName = instituteName;
	}

	public Set<Major> getMajors() {
		return majors;
	}

	public void setMajors(Set<Major> majors) {
		this.majors = majors;
	}

	@Override
	public String toString() {
		return "Institute [instituteId=" + instituteId + ", instituteName=" + instituteName +"]";
	}

}
