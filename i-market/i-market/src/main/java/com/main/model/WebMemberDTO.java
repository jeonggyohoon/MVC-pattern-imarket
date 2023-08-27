package com.main.model;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.Setter;

@Data
@AllArgsConstructor
@NoArgsConstructor
@RequiredArgsConstructor
@Getter
@Setter
public class WebMemberDTO {
	// 유저정보

	// 유저 아이디
	@NonNull
	private String user_id;

	// 유저 비밀번호
	@NonNull
	private String user_pw;

	// 유저 닉네임
	@NonNull
	private String user_nick;

	// 유저 전화번호
	@NonNull
	private String user_phone;

	// 유저 주소
	@NonNull
	private String user_addr;

	// 프로필 사진
	private String user_profile;

	// 유저 등록일자
	private Date user_joindate;

	public WebMemberDTO(String user_id, String user_pw) {
		super();
		this.user_id = user_id;
		this.user_pw = user_pw;
	}

	public WebMemberDTO(String user_id) {
		super();
		this.user_id = user_id;
	}
}
