package com.service;

import java.util.List;
import com.model.SmallClass;

public interface SmallClassService {
	// 列出已经选择的一级类别对应的二级类别
	public List<SmallClass> listsmallclassByBclass(int bigclass_id);

	// 将新的二级类别保存到数据库中
	public void saveSmallclass(SmallClass smallclass);

	// 删除smallclassid对应的二级类别
	public void deleteSmallclass(int smallclassid);

	// 修改smallclassid对应的二级类别
	public SmallClass UpdateSmallclass(int smallclassid);

	// 添加新的二级类别
	public void addSmallclass();

}
