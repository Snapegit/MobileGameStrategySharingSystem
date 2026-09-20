package com.cl.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.cl.utils.PageUtils;
import com.cl.utils.Query;


import com.cl.dao.YouxifenleiDao;
import com.cl.entity.YouxifenleiEntity;
import com.cl.service.YouxifenleiService;
import com.cl.entity.view.YouxifenleiView;

@Service("youxifenleiService")
public class YouxifenleiServiceImpl extends ServiceImpl<YouxifenleiDao, YouxifenleiEntity> implements YouxifenleiService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<YouxifenleiEntity> page = this.selectPage(
                new Query<YouxifenleiEntity>(params).getPage(),
                new EntityWrapper<YouxifenleiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<YouxifenleiEntity> wrapper) {
		  Page<YouxifenleiView> page =new Query<YouxifenleiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
	@Override
	public List<YouxifenleiView> selectListView(Wrapper<YouxifenleiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public YouxifenleiView selectView(Wrapper<YouxifenleiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
