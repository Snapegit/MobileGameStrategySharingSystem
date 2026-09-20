package com.cl.dao;

import com.cl.entity.YouxigonglveEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.YouxigonglveView;


/**
 * 游戏攻略
 * 
 * @author 
 * @email 
 * @date 2024-02-15 17:10:28
 */
public interface YouxigonglveDao extends BaseMapper<YouxigonglveEntity> {
	
	List<YouxigonglveView> selectListView(@Param("ew") Wrapper<YouxigonglveEntity> wrapper);

	List<YouxigonglveView> selectListView(Pagination page,@Param("ew") Wrapper<YouxigonglveEntity> wrapper);
	
	YouxigonglveView selectView(@Param("ew") Wrapper<YouxigonglveEntity> wrapper);
	

}
