package com.bdqn.mapper;

import java.util.List;

import com.bdqn.entity.Product;
import org.apache.ibatis.annotations.Param;

public interface ProductMapper {
	/**
	 * 查询用户列表(参数：对象入参)
	 * @return
	 */
	public List<Product> selectAll();

	public List<Product> selectProductByPage(@Param("firstResult") int firstResult
            , @Param("pageSize") int pageSize);

	public int selectCount();

}
