package com.main.model;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class itemBargainDTO {

	// 흥정 순번
	private int bar_idx;

	// 물품 순번
	private int item_idx;

	// 흥정 아이디
	private String user_id;
	
	// 흥정 가격
	private int bar_price;

}
