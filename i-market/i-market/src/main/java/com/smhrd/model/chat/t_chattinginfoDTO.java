package com.smhrd.model.chat;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class t_chattinginfoDTO {
	
	// 대화 순번 
    private int chat_idx;

    // 채팅방 순번 
    private int croom_idx;

    // 발화 자 
    private String talker;

    // 발화 내용 
    private String talking;

    // 발화 시간 
    private Date talking_at;

    // 이모티콘 
    private String emoticon;

	public t_chattinginfoDTO(int croom_idx) {
		super();
		this.croom_idx = croom_idx;
	}

	public t_chattinginfoDTO(int croom_idx, String talker, String talking) {
		super();
		this.croom_idx = croom_idx;
		this.talker = talker;
		this.talking = talking;
	}
    
    
}
