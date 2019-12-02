package com.internousdev.ecsite.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.BuyItemDAO;
import com.internousdev.ecsite.dto.BuyItemDTO;
import com.opensymphony.xwork2.ActionSupport;

public class HomeAction extends ActionSupport implements SessionAware {
	private Map<String,Object> session;
	public String execute(){
		String result = "login";
		if(session.containsKey("login_user_id")){
			BuyItemDAO buyItemDAO = new BuyItemDAO();
			BuyItemDTO buyItemDTO = buyItemDAO.getBuyItemInfo();
			session.put("id", buyItemDTO.getId());
			session.put("buyItem_name", buyItemDTO.getItemName());
			session.put("buyItem_price", buyItemDTO.getItemPrice());
			result = SUCCESS;
		}
		return result;
	}
	public Map<String,Object> getSession(){
		return this.session;
	}
	public void setSession(Map<String,Object> session){
		this.session = session;
	}

}


//executeメソッドの中に戻り値loginが入る
//BuyItemDAO をインスタンス化して buyItemDAO を作成
//buyItemDTO の中にbuyItemDAOのBuyItemInfoを入れる
//sessionに"id" buyItemDTOのID "buyItem_name" buyItemDTOのItemName "buyItem_price" buyItemDTOのItemPriceをそれぞれ入れる。
//戻り値はSUCCESS struts.xmlのresult にわたる
//戻り値はresult
//session のゲッターセッターを実装 sessionを取得するためのもの