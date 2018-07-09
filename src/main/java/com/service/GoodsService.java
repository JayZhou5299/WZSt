package com.service;

import java.util.List;

import com.model.Goods;

public interface GoodsService {
	
	// 展示所有商品：
	public List<Goods> ListallGoods();

	public void saveGoods(Goods goods);
	
	public void updateGoods(Goods goods);
	
	// 根据商品的id删除该商品
	public void deleteGoods(int id);

	// 展示部分热门商品：
	public List<Goods> ListHotGoods();

	// 根据输入信息名称查找商品（支持用户的模糊查询，会用到like关键字）
	public List<Goods> SearchGoods(String name);

	// 根据用户选择的类别查找商品相关类的商品（支持分类查询商品）
	public List<Goods> SearchGoodsByclass(int smal_class);

	// 根据用户的购买记录推荐相关感兴趣的商品
	public List<Goods> interestedGoodsByUser(int userid);
	
	public Goods getGoodsById(int goodsid);
	

}
