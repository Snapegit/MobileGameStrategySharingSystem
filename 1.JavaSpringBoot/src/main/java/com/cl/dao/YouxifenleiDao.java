package com.cl.dao;

import com.cl.entity.YouxifenleiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.YouxifenleiView;


/**
 * 游戏分类
 * 
 * @author 
 * @email 
 * @date 2024-02-15 17:10:28
 */
public interface YouxifenleiDao extends BaseMapper<YouxifenleiEntity> {
	
	List<YouxifenleiView> selectListView(@Param("ew") Wrapper<YouxifenleiEntity> wrapper);

	List<YouxifenleiView> selectListView(Pagination page,@Param("ew") Wrapper<YouxifenleiEntity> wrapper);
	
	YouxifenleiView selectView(@Param("ew") Wrapper<YouxifenleiEntity> wrapper);
	

}
