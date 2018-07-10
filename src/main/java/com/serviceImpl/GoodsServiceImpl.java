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
		goodsDao.saveGoods(goods);
	}

	public void deleteGoods(int id) {
		goodsDao.deleteGoodsById(id);
		
	}

	public List<Goods> ListHotGoods() {
		System.out.println("goods");
		return goodsDao.ListGoods();
	}

	public List<Goods> SearchGoods(String name) {
		return goodsDao.SearchGoods(name);
	}

	public List<Goods> interestedGoodsByUser(int userid) {
		// TODO Auto-generated method stub
		return null;
	}

	public void updateGoods(Goods goods) {
		goodsDao.updateGoods(goods);
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

	public Goods getGoodsById(int goodsid) {
		return goodsDao.getGoodsById(goodsid);
	}
	

}
