package com.main.model;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class t_iteminfoDTO {
	// 중고물품정보

	// 물품 순번
	private int item_idx;

	// 물품 명
	private String item_name;

	// 물품 가격
	private int item_price;

	public t_iteminfoDTO(int item_idx) {
		super();
		this.item_idx = item_idx;
	}

	// 물품 정보
	private String item_info;

	// 물품 카테고리
	private String item_category;

	// 물품 등록일자
	private Date uploaded_at;

	// 물품 사진
	private String item_photo;

	// 등록자 아이디
	private String user_id;

	// 거래 상태
	private int item_status;
	
	// 거래 주소(수정값)
	private String user_addr_at;

	// 거래 주소(기본값)
	private String user_addr;

	// 흥정 여부
	private String item_bargain_YN;
	
	// 조회수
	
	private int item_view;
	
	public t_iteminfoDTO(int item_idx, int item_view) {
		super();
		this.item_idx = item_idx;
		this.item_view = item_view;
	}

}
