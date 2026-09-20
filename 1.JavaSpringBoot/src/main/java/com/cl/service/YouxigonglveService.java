package com.cl.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.cl.utils.PageUtils;
import com.cl.entity.YouxigonglveEntity;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.YouxigonglveView;


/**
 * 游戏攻略
 *
 * @author 
 * @email 
 * @date 2024-02-15 17:10:28
 */
public interface YouxigonglveService extends IService<YouxigonglveEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<YouxigonglveView> selectListView(Wrapper<YouxigonglveEntity> wrapper);
   	
   	YouxigonglveView selectView(@Param("ew") Wrapper<YouxigonglveEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<YouxigonglveEntity> wrapper);
   	

}

