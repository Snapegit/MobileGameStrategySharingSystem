package com.cl.controller;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import com.cl.utils.ValidatorUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.cl.annotation.IgnoreAuth;

import com.cl.entity.YouxigonglveEntity;
import com.cl.entity.view.YouxigonglveView;

import com.cl.service.YouxigonglveService;
import com.cl.service.TokenService;
import com.cl.utils.PageUtils;
import com.cl.utils.R;
import com.cl.utils.MPUtil;
import com.cl.utils.CommonUtil;
import java.io.IOException;
import com.cl.service.StoreupService;
import com.cl.entity.StoreupEntity;

/**
 * 游戏攻略
 * 后端接口
 * @author 
 * @email 
 * @date 2024-02-15 17:10:28
 */
@RestController
@RequestMapping("/youxigonglve")
public class YouxigonglveController {
    @Autowired
    private YouxigonglveService youxigonglveService;

    @Autowired
    private StoreupService storeupService;


    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,YouxigonglveEntity youxigonglve,
		HttpServletRequest request){
		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("yonghu")) {
			youxigonglve.setYonghuzhanghao((String)request.getSession().getAttribute("username"));
		}
        EntityWrapper<YouxigonglveEntity> ew = new EntityWrapper<YouxigonglveEntity>();

		PageUtils page = youxigonglveService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, youxigonglve), params), params));

        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,YouxigonglveEntity youxigonglve, 
		HttpServletRequest request){
        EntityWrapper<YouxigonglveEntity> ew = new EntityWrapper<YouxigonglveEntity>();

		PageUtils page = youxigonglveService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, youxigonglve), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( YouxigonglveEntity youxigonglve){
       	EntityWrapper<YouxigonglveEntity> ew = new EntityWrapper<YouxigonglveEntity>();
      	ew.allEq(MPUtil.allEQMapPre( youxigonglve, "youxigonglve")); 
        return R.ok().put("data", youxigonglveService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(YouxigonglveEntity youxigonglve){
        EntityWrapper< YouxigonglveEntity> ew = new EntityWrapper< YouxigonglveEntity>();
 		ew.allEq(MPUtil.allEQMapPre( youxigonglve, "youxigonglve")); 
		YouxigonglveView youxigonglveView =  youxigonglveService.selectView(ew);
		return R.ok("查询游戏攻略成功").put("data", youxigonglveView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        YouxigonglveEntity youxigonglve = youxigonglveService.selectById(id);
		youxigonglve = youxigonglveService.selectView(new EntityWrapper<YouxigonglveEntity>().eq("id", id));
        return R.ok().put("data", youxigonglve);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        YouxigonglveEntity youxigonglve = youxigonglveService.selectById(id);
		youxigonglve = youxigonglveService.selectView(new EntityWrapper<YouxigonglveEntity>().eq("id", id));
        return R.ok().put("data", youxigonglve);
    }
    


    /**
     * 赞或踩
     */
    @RequestMapping("/thumbsup/{id}")
    public R vote(@PathVariable("id") String id,String type){
        YouxigonglveEntity youxigonglve = youxigonglveService.selectById(id);
        if(type.equals("1")) {
        	youxigonglve.setThumbsupnum(youxigonglve.getThumbsupnum()+1);
        } else {
        	youxigonglve.setCrazilynum(youxigonglve.getCrazilynum()+1);
        }
        youxigonglveService.updateById(youxigonglve);
        return R.ok("投票成功");
    }

    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody YouxigonglveEntity youxigonglve, HttpServletRequest request){
    	youxigonglve.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(youxigonglve);
        youxigonglveService.insert(youxigonglve);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody YouxigonglveEntity youxigonglve, HttpServletRequest request){
    	youxigonglve.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(youxigonglve);
        youxigonglveService.insert(youxigonglve);
        return R.ok();
    }



    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody YouxigonglveEntity youxigonglve, HttpServletRequest request){
        //ValidatorUtils.validateEntity(youxigonglve);
        youxigonglveService.updateById(youxigonglve);//全部更新
        return R.ok();
    }



    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        youxigonglveService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
	








}
