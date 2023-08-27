package com.smhrd.model.user;

import java.sql.Date;

import lombok.Data;


@Data
public class t_userinfoDTO {

	// 유저 아이디 
    private String user_id;


	// 유저 비밀번호 
    private String user_pw;

    // 유저 닉네임 
    private String user_nick;

    // 유저 전화번호 
    private String user_phone;

    // 유저 주소 
    private String user_addr;

    // 프로필 사진 
    private String user_profile;

    // 유저 등록일자 
    private Date user_joindate;

    // 관리자 여부 
    private String admin_yn;

    public t_userinfoDTO(String user_id, String user_pw) {
    	super();
    	this.user_id = user_id;
    	this.user_pw = user_pw;
    }

	public t_userinfoDTO(String user_id, String user_pw, String user_nick, String user_phone, String user_addr) {
		super();
		this.user_id = user_id;
		this.user_pw = user_pw;
		this.user_nick = user_nick;
		this.user_phone = user_phone;
		this.user_addr = user_addr;
	}

	public t_userinfoDTO() {
		super();
	}

}
