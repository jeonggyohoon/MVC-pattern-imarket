package com.smhrd.model.board;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@RequiredArgsConstructor
public class CommentInfoDTO {
	 // 댓글 순번 
	private int cmt_idx;

    // 원글 순번 
    private int b_idx;

    // 댓글 내용 
    private String cmt_content;

    // 댓글 작성일자 
    private Date uploaded_at;

    // 댓글 작성자 
    @NonNull private String user_id;

    // 댓글 공감수 
    private int cmt_shares;
    
    private String user_nick;

	public CommentInfoDTO(int b_idx, String cmt_content, String user_id, String user_nick) {
		super();
		this.b_idx = b_idx;
		this.cmt_content = cmt_content;
		this.user_id = user_id;
		this.user_nick = user_nick;
	}

	public CommentInfoDTO(int cmt_idx ,int b_idx) {
		super();
		this.cmt_idx = cmt_idx;
		this.b_idx = b_idx;
	}

	public CommentInfoDTO(int cmt_idx, String cmt_content) {
		super();
		this.cmt_idx = cmt_idx;
		this.cmt_content = cmt_content;
	}
    
    
    
}
