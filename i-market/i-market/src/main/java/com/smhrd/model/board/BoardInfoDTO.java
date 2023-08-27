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

public class BoardInfoDTO {
	
	// 글 번호 
    private int b_idx;

    // 글 제목 
    private String b_title;

    // 글 내용 
    @NonNull private String b_content;

    // 글 첨부파일 
    private String b_file;

    // 글 작성일자 
    private Date uploaded_at;

    // 글 작성자 
    private String user_id;

    // 글 조회수 
    private int b_views;

    // 글 좋아요수 
    private int b_likes;
    
    // 글 작성자 닉네임
    private String user_nick;
    
    // 댓글 수 
    private int comment_count;
    
    
    

	public BoardInfoDTO(int b_idx) {
		super();
		this.b_idx = b_idx;
	}

	public BoardInfoDTO(int b_idx, String b_title, String b_content, String b_file) {
		super();
		this.b_idx = b_idx;
		this.b_title = b_title;
		this.b_content = b_content;
		this.b_file = b_file;
	}

	public BoardInfoDTO(String b_title, String b_content, String b_file, String user_id, String user_nick) {
		super();
		this.b_title = b_title;
		this.b_content = b_content;
		this.b_file = b_file;
		this.user_id = user_id;
		this.user_nick = user_nick;
	}

	public BoardInfoDTO(int b_idx, int b_views, int b_likes) {
		super();
		this.b_idx = b_idx;
		this.b_views = b_views;
		this.b_likes = b_likes;

	}

	public BoardInfoDTO(String b_title, String user_id) {
		super();
		this.b_title = b_title;
		this.user_id = user_id;
	}

	public BoardInfoDTO(int b_idx, int comment_count) {
		super();
		this.b_idx = b_idx;
		this.comment_count = comment_count;
	}

	
	
	
	
	

	


	
	
	
	}
    
   

