package com.dao;

import java.util.List;
import com.model.BigClass;

public interface BigClassDao {
	
	//根据一级类别id进行查询
	public BigClass getbigclassByid(int BigClass_id);
	//将新的一级类别保存到数据库中
		public void  saveBigClass(BigClass bigclass);
	//根据一级类别的id进行删除
	public void  deleteBigClassById(int BigClass_id);
	//查询所有的一级类别
	public List<BigClass>  getAllBclass();

}
