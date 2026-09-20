package com.cl.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.cl.utils.PageUtils;
import com.cl.entity.YouxifenleiEntity;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.YouxifenleiView;


/**
 * 游戏分类
 *
 * @author 
 * @email 
 * @date 2024-02-15 17:10:28
 */
public interface YouxifenleiService extends IService<YouxifenleiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<YouxifenleiView> selectListView(Wrapper<YouxifenleiEntity> wrapper);
   	
   	YouxifenleiView selectView(@Param("ew") Wrapper<YouxifenleiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<YouxifenleiEntity> wrapper);
   	

}

