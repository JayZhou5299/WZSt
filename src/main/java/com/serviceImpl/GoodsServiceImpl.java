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

	public List<Goods> SearchGoodsByclass(int smal_class) {
		System.out.println(smal_class);
		List<Goods> list = goodsDao.SearchGoodsByclass(smal_class);
		System.out.println(list.get(0).getGoods_detail()+" 123123123");
		return list;
	}

}
