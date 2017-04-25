package com.noc.questionservice.response;

import java.io.Serializable;

public class BaseResponse implements Serializable {
	
	private ErrorCode errorCode;
	private String errorDescription;
	private Status status;
	public ErrorCode getErrorCode() {
		return errorCode;
	}
	public void setErrorCode(ErrorCode errorCode) {
		this.errorCode = errorCode;
	}
	public String getErrorDescription() {
		return errorDescription;
	}
	public void setErrorDescription(String errorDescription) {
		this.errorDescription = errorDescription;
	}
	public Status getStatus() {
		return status;
	}
	public void setStatus(Status status) {
		this.status = status;
	}
	
	public BaseResponse() {
		super();
	}
	public static enum Status {
		SUCCESS, FAILURE;
	}
	public static enum ErrorCode {
		TECHNICAL_ERROR, SYSTEM_ERROR, INVALID_REQUEST
	}
	public BaseResponse (Status status, ErrorCode errorCode, String errorDescription ) {
		
		super();
		this.status = status;
		this.errorCode= errorCode;
		this.errorDescription = errorDescription;
		
	}
	
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("BaseResponse [status = ").append(status).append("errorCode =").append(errorCode).append(" errorDescription").append(errorDescription).append("]");
		
		return super.toString();
	}
	

}
