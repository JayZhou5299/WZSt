package com.dao;

import java.util.List;

import com.model.Goods;

public interface GoodsDao {
	public List<Goods> ListGoods();
	//将一个商品信息保存到数据库中
		public void  saveGoods(Goods goods);
	//根据商品的id删除该商品
		public void  deleteGoodsById(int id);
	//根据输入信息名称查找商品（支持用户的模糊查询，会用到like关键字）
		public List<Goods> SearchGoods(String name);
	//根据输入的类别查找商品相关类的商品（支持分类查询商品）
		public List<Goods> SearchGoodsByclass(int smal_class);
	//根据商品的id来查找相应的商品（用于修改用户购物车的信息）
		public Goods getGoodsById(int id);
	//返回所有的商品
		public List<Goods> ListallGoods();
		
		public void updateGoods(Goods goods);
}
