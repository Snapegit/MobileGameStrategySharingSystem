package com.cl.dao;

import com.cl.entity.DiscussyouxigonglveEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.DiscussyouxigonglveView;


/**
 * 游戏攻略评论表
 * 
 * @author 
 * @email 
 * @date 2024-02-15 17:10:28
 */
public interface DiscussyouxigonglveDao extends BaseMapper<DiscussyouxigonglveEntity> {
	
	List<DiscussyouxigonglveView> selectListView(@Param("ew") Wrapper<DiscussyouxigonglveEntity> wrapper);

	List<DiscussyouxigonglveView> selectListView(Pagination page,@Param("ew") Wrapper<DiscussyouxigonglveEntity> wrapper);
	
	DiscussyouxigonglveView selectView(@Param("ew") Wrapper<DiscussyouxigonglveEntity> wrapper);
	

}
