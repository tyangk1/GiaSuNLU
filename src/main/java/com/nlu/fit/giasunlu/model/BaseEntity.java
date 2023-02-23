/**
 * 
 */
package com.nlu.fit.giasunlu.model;

import java.io.Serializable;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

//import org.hibernate.annotations.CreationTimestamp;
//import org.hibernate.annotations.UpdateTimestamp;

public class BaseEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	protected Date createAt;

	protected Date updateAt;
	
	public String amountToCurrencyString(float amountTotal, String currency) {
		DecimalFormat formatter = new DecimalFormat("###,###,###");
		return formatter.format(amountTotal) + currency;
	}
	
	public String amountToCurrencyString(float amountTotal) {
		DecimalFormat formatter = new DecimalFormat("###,###,###");
		return formatter.format(amountTotal) + "đ";
	}
	
	public String getDateFormatVN(Date date) {
		if(date == null) {
			date = new Date();
			return (new SimpleDateFormat("dd/MM/yyyy").format(date));
		} else {
			return (new SimpleDateFormat("dd/MM/yyyy").format(date));
		}
	}
	
	public String getDatetimeFormatVN(Date date) {
		if(date == null) {
			date = new Date();
			return (new SimpleDateFormat("dd/MM/yyyy HH:mm").format(date));
		} else {
			return (new SimpleDateFormat("dd/MM/yyyy HH:mm").format(date));
		}
	}
	
	public String getDateFormatVNEmptyIfNull(Date date) {
		if(date == null) {
			return "";
		} else {
			return (new SimpleDateFormat("dd/MM/yyyy").format(date));
		}
	}
	
	public String getDatetimeFormatVNEmptyIfNull(Date date) {
		if(date == null) {
			return "";
		} else {
			return (new SimpleDateFormat("dd/MM/yyyy HH:mm").format(date));
		}
	}
	
	public String getMonthYearFormatVN(Date date) {
		if (date == null) {
			return "";
		} else {
			return (new SimpleDateFormat("MM/yyyy").format(date));
		}
	}
	
	public Date getUpdateAt() {
		return this.updateAt;
	}

	public void setUpdateAt(Date updateAt) {
		this.updateAt = updateAt;
	}
	
	public Date getCreateAt() {
		return this.createAt;
	}

	public void setCreateAt(Date createAt) {
		this.createAt = createAt;
	}
	
	public String getCreatedAtFormatVN() {
		return this.getDatetimeFormatVN(createAt);
	}
	
	public String getUpdatedAtFormatVN() {
		return this.getDatetimeFormatVN(updateAt);
	}
}
