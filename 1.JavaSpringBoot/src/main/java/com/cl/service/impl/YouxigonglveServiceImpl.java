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


import com.cl.dao.YouxigonglveDao;
import com.cl.entity.YouxigonglveEntity;
import com.cl.service.YouxigonglveService;
import com.cl.entity.view.YouxigonglveView;

@Service("youxigonglveService")
public class YouxigonglveServiceImpl extends ServiceImpl<YouxigonglveDao, YouxigonglveEntity> implements YouxigonglveService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<YouxigonglveEntity> page = this.selectPage(
                new Query<YouxigonglveEntity>(params).getPage(),
                new EntityWrapper<YouxigonglveEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<YouxigonglveEntity> wrapper) {
		  Page<YouxigonglveView> page =new Query<YouxigonglveView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
	@Override
	public List<YouxigonglveView> selectListView(Wrapper<YouxigonglveEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public YouxigonglveView selectView(Wrapper<YouxigonglveEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
