package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.internousdev.ecsite.dto.BuyItemDTO;
import com.internousdev.ecsite.util.DBConnector;

public class BuyItemDAO {
	public BuyItemDTO getBuyItemInfo(){
		DBConnector db = new DBConnector();
		Connection con = db.getConnection();
		BuyItemDTO buyItemDTO = new BuyItemDTO();
		
		String sql = "SELECT id,item_name,item_price FROM item_info_transaction";
		
		try{
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			
			if(rs.next()){
				buyItemDTO.setId(rs.getInt("id"));
				buyItemDTO.setItemName(rs.getString("item_name"));
				buyItemDTO.setItemPrice(rs.getString("item_price"));
			}
		} catch(Exception e){
			e.printStackTrace();
		}
		return buyItemDTO;
	}

}

//データベースにつなぐための準備
//sql文でitem_info_transactionの中のid,item_name,item_priceをもってこいと命令
//psの箱の中にsqlを格納 ps.executeQueryの実行メソッドをrsに返す
//mysql内のdbに接続して"id" "item_name" "item_price"をそれぞれBuyItemDTOのsetに代入する。
//返す場所はHomeActionのbuyItemDAO.getBuyItemInfoに返す。