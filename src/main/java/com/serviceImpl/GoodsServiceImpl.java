package com.serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dao.GoodsDao;
import com.model.Goods;
import com.service.GoodsService;
@Service
public class GoodsServiceImpl implements  GoodsService{

	@Resource
	GoodsDao goodsDao;
	
	public void saveGoods(Goods goods) {
		// TODO Auto-generated method stub
		
	}

	public void deleteGoods(int id) {
		// TODO Auto-generated method stub
		
	}

	public List<Goods> ListHotGoods() {
		System.out.println("goods");
		return goodsDao.ListGoods();
	}

	public List<Goods> SearchGoods(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Goods> SearchGoodsByclass(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Goods> interestedGoodsByUser(int userid) {
		// TODO Auto-generated method stub
		return null;
	}

	public void updateGoods(Goods goods) {
		// TODO Auto-generated method stub
		
	}

	public List<Goods> ListallGoods() {
		return goodsDao.ListallGoods();
	}

}
