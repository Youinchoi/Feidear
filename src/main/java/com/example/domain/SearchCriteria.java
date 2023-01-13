package com.example.domain;

public class SearchCriteria extends Criteria{

	private String searchType = "";
	private String keyword = "";
	private String	fetv_area;
	private String	fetv_startdate;
	private String	fetv_enddate;
	
	public String getSearchType() {
		return searchType;
	}

	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public String getFetv_area() {
		return fetv_area;
	}

	public void setFetv_area(String fetv_area) {
		this.fetv_area = fetv_area;
	}

	public String getFetv_startdate() {
		return fetv_startdate;
	}

	public void setFetv_startdate(String fetv_startdate) {
		this.fetv_startdate = fetv_startdate;
	}

	public String getFetv_enddate() {
		return fetv_enddate;
	}

	public void setFetv_enddate(String fetv_enddate) {
		this.fetv_enddate = fetv_enddate;
	}

	@Override
	public String toString() {
		return "SearchCriteria [searchType=" + searchType + ", keyword=" + keyword + "]";
	}
	
}