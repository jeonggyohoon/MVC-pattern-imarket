package com.smhrd.model.chat;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class t_chatroominfoDTO {

	// 채팅방 순번 
    private int croom_idx;

    // 채팅방 제목 
    private String croom_title;

    // 채팅방 내용 
    private String croom_content;

    // 채팅방 인원수 
    private int croom_limit;

    // 채팅방 개설일 
    private Date croom_at;

    // 보내는 사람 
    private String user_id;

    // 받는 사람 
    private String to_id;

	public t_chatroominfoDTO(String user_id) {
		super();
		this.user_id = user_id;
	}

	public t_chatroominfoDTO(String croom_title, String croom_content, String user_id, String to_id) {
		super();
		this.croom_title = croom_title;
		this.croom_content = croom_content;
		this.user_id = user_id;
		this.to_id = to_id;
	}

	public t_chatroominfoDTO(String croom_title, String user_id, String to_id) {
		super();
		this.croom_title = croom_title;
		this.user_id = user_id;
		this.to_id = to_id;
	}

    
}
