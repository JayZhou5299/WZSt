package com.dao;

import java.util.List;
import com.model.SmallClass;
import com.model.User;

public interface SmallClassDao {

	// 根据一级类别id进行查询
	public List<SmallClass> getsmallclassByid(int bigclassid);

	// 将新的二级类别保存到数据库中
	public void saveBigClass(SmallClass smallclass);

	// 根据二级类别的id进行删除
	public void deleteSmallClassById(int smallclassid);

}
