package org.serene.latte.dto;

import java.util.Date;

public class CafeBI {
	
	private String cafeAddress;
	private String cafeName;
	private int basicInfo1;
	private int basicInfo2;
	private int basicInfo3;
	private int basicInfo4;
	private int basicInfo5;
	private int basicInfo6;
	private Date businessHours;
	private String dayOff;
	private String cafeTel;
	private String cafeUrl;
	private Date erDate;
	private int accLike;
	private int amePrice;
	
	public CafeBI() {}
	public CafeBI(String cafeAddress, String cafeName, int basicInfo1,
			int basicInfo2, int basicInfo3, int basicInfo4, int basicInfo5,
			int basicInfo6, Date businessHours, String dayOff, String cafeTel,
			String cafeUrl, Date erDate, int accLike, int amePrice) {
		this.cafeAddress = cafeAddress;
		this.cafeName = cafeName;
		this.basicInfo1 = basicInfo1;
		this.basicInfo2 = basicInfo2;
		this.basicInfo3 = basicInfo3;
		this.basicInfo4 = basicInfo4;
		this.basicInfo5 = basicInfo5;
		this.basicInfo6 = basicInfo6;
		this.businessHours = businessHours;
		this.dayOff = dayOff;
		this.cafeTel = cafeTel;
		this.cafeUrl = cafeUrl;
		this.erDate = erDate;
		this.accLike = accLike;
		this.amePrice = amePrice;
	}
	
	public String getCafeAddress() {
		return cafeAddress;
	}
	public void setCafeAddress(String cafeAddress) {
		this.cafeAddress = cafeAddress;
	}
	public String getCafeName() {
		return cafeName;
	}
	public void setCafeName(String cafeName) {
		this.cafeName = cafeName;
	}
	public int getBasicInfo1() {
		return basicInfo1;
	}
	public void setBasicInfo1(int basicInfo1) {
		this.basicInfo1 = basicInfo1;
	}
	public int getBasicInfo2() {
		return basicInfo2;
	}
	public void setBasicInfo2(int basicInfo2) {
		this.basicInfo2 = basicInfo2;
	}
	public int getBasicInfo3() {
		return basicInfo3;
	}
	public void setBasicInfo3(int basicInfo3) {
		this.basicInfo3 = basicInfo3;
	}
	public int getBasicInfo4() {
		return basicInfo4;
	}
	public void setBasicInfo4(int basicInfo4) {
		this.basicInfo4 = basicInfo4;
	}
	public int getBasicInfo5() {
		return basicInfo5;
	}
	public void setBasicInfo5(int basicInfo5) {
		this.basicInfo5 = basicInfo5;
	}
	public int getBasicInfo6() {
		return basicInfo6;
	}
	public void setBasicInfo6(int basicInfo6) {
		this.basicInfo6 = basicInfo6;
	}
	public Date getBusinessHours() {
		return businessHours;
	}
	public void setBusinessHours(Date businessHours) {
		this.businessHours = businessHours;
	}
	public String getDayOff() {
		return dayOff;
	}
	public void setDayOff(String dayOff) {
		this.dayOff = dayOff;
	}
	public String getCafeTel() {
		return cafeTel;
	}
	public void setCafeTel(String cafeTel) {
		this.cafeTel = cafeTel;
	}
	public String getCafeUrl() {
		return cafeUrl;
	}
	public void setCafeUrl(String cafeUrl) {
		this.cafeUrl = cafeUrl;
	}
	public Date getErDate() {
		return erDate;
	}
	public void setErDate(Date erDate) {
		this.erDate = erDate;
	}
	public int getAccLike() {
		return accLike;
	}
	public void setAccLike(int accLike) {
		this.accLike = accLike;
	}
	public int getamePrice() {
		return amePrice;
	}
	public void setamePrice(int amePrice) {
		this.amePrice = amePrice;
	}
	
	@Override
	public String toString() {
		return "CafeBI [cafeAddress=" + cafeAddress + ", cafeName=" + cafeName
				+ ", basicInfo1=" + basicInfo1 + ", basicInfo2=" + basicInfo2
				+ ", basicInfo3=" + basicInfo3 + ", basicInfo4=" + basicInfo4
				+ ", basicInfo5=" + basicInfo5 + ", basicInfo6=" + basicInfo6
				+ ", businessHours=" + businessHours + ", dayOff=" + dayOff
				+ ", cafeTel=" + cafeTel + ", cafeUrl=" + cafeUrl + ", erDate="
				+ erDate + ", accLike=" + accLike + ", amePrice="
				+ amePrice + "]";
	}
	
}
