package com.cl.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;


/**
 * 游戏攻略
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2024-02-15 17:10:28
 */
@TableName("youxigonglve")
public class YouxigonglveEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public YouxigonglveEntity() {
		
	}
	
	public YouxigonglveEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 主键id
	 */
	@TableId
	private Long id;
	/**
	 * 游戏名称
	 */
					
	private String youximingcheng;
	
	/**
	 * 游戏分类
	 */
					
	private String youxifenlei;
	
	/**
	 * 游戏图片
	 */
					
	private String youxitupian;
	
	/**
	 * 游戏平台
	 */
					
	private String youxipingtai;
	
	/**
	 * 游戏背景
	 */
					
	private String youxibeijing;
	
	/**
	 * 视频
	 */
					
	private String shipin;
	
	/**
	 * 角色扮演
	 */
					
	private String jiaosebanyan;
	
	/**
	 * 角色介绍
	 */
					
	private String jiaosejieshao;
	
	/**
	 * 技巧攻略
	 */
					
	private String jiqiaogonglve;
	
	/**
	 * 流程分析
	 */
					
	private String liuchengfenxi;
	
	/**
	 * 关键点提示
	 */
					
	private String guanjiandiantishi;
	
	/**
	 * 发布日期
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd")
	@DateTimeFormat 		
	private Date faburiqi;
	
	/**
	 * 用户账号
	 */
					
	private String yonghuzhanghao;
	
	/**
	 * 用户姓名
	 */
					
	private String yonghuxingming;
	
	/**
	 * 赞
	 */
					
	private Integer thumbsupnum;
	
	/**
	 * 踩
	 */
					
	private Integer crazilynum;
	
	/**
	 * 收藏数量
	 */
					
	private Integer storeupnum;
	
	
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date addtime;

	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * 设置：游戏名称
	 */
	public void setYouximingcheng(String youximingcheng) {
		this.youximingcheng = youximingcheng;
	}
	/**
	 * 获取：游戏名称
	 */
	public String getYouximingcheng() {
		return youximingcheng;
	}
	/**
	 * 设置：游戏分类
	 */
	public void setYouxifenlei(String youxifenlei) {
		this.youxifenlei = youxifenlei;
	}
	/**
	 * 获取：游戏分类
	 */
	public String getYouxifenlei() {
		return youxifenlei;
	}
	/**
	 * 设置：游戏图片
	 */
	public void setYouxitupian(String youxitupian) {
		this.youxitupian = youxitupian;
	}
	/**
	 * 获取：游戏图片
	 */
	public String getYouxitupian() {
		return youxitupian;
	}
	/**
	 * 设置：游戏平台
	 */
	public void setYouxipingtai(String youxipingtai) {
		this.youxipingtai = youxipingtai;
	}
	/**
	 * 获取：游戏平台
	 */
	public String getYouxipingtai() {
		return youxipingtai;
	}
	/**
	 * 设置：游戏背景
	 */
	public void setYouxibeijing(String youxibeijing) {
		this.youxibeijing = youxibeijing;
	}
	/**
	 * 获取：游戏背景
	 */
	public String getYouxibeijing() {
		return youxibeijing;
	}
	/**
	 * 设置：视频
	 */
	public void setShipin(String shipin) {
		this.shipin = shipin;
	}
	/**
	 * 获取：视频
	 */
	public String getShipin() {
		return shipin;
	}
	/**
	 * 设置：角色扮演
	 */
	public void setJiaosebanyan(String jiaosebanyan) {
		this.jiaosebanyan = jiaosebanyan;
	}
	/**
	 * 获取：角色扮演
	 */
	public String getJiaosebanyan() {
		return jiaosebanyan;
	}
	/**
	 * 设置：角色介绍
	 */
	public void setJiaosejieshao(String jiaosejieshao) {
		this.jiaosejieshao = jiaosejieshao;
	}
	/**
	 * 获取：角色介绍
	 */
	public String getJiaosejieshao() {
		return jiaosejieshao;
	}
	/**
	 * 设置：技巧攻略
	 */
	public void setJiqiaogonglve(String jiqiaogonglve) {
		this.jiqiaogonglve = jiqiaogonglve;
	}
	/**
	 * 获取：技巧攻略
	 */
	public String getJiqiaogonglve() {
		return jiqiaogonglve;
	}
	/**
	 * 设置：流程分析
	 */
	public void setLiuchengfenxi(String liuchengfenxi) {
		this.liuchengfenxi = liuchengfenxi;
	}
	/**
	 * 获取：流程分析
	 */
	public String getLiuchengfenxi() {
		return liuchengfenxi;
	}
	/**
	 * 设置：关键点提示
	 */
	public void setGuanjiandiantishi(String guanjiandiantishi) {
		this.guanjiandiantishi = guanjiandiantishi;
	}
	/**
	 * 获取：关键点提示
	 */
	public String getGuanjiandiantishi() {
		return guanjiandiantishi;
	}
	/**
	 * 设置：发布日期
	 */
	public void setFaburiqi(Date faburiqi) {
		this.faburiqi = faburiqi;
	}
	/**
	 * 获取：发布日期
	 */
	public Date getFaburiqi() {
		return faburiqi;
	}
	/**
	 * 设置：用户账号
	 */
	public void setYonghuzhanghao(String yonghuzhanghao) {
		this.yonghuzhanghao = yonghuzhanghao;
	}
	/**
	 * 获取：用户账号
	 */
	public String getYonghuzhanghao() {
		return yonghuzhanghao;
	}
	/**
	 * 设置：用户姓名
	 */
	public void setYonghuxingming(String yonghuxingming) {
		this.yonghuxingming = yonghuxingming;
	}
	/**
	 * 获取：用户姓名
	 */
	public String getYonghuxingming() {
		return yonghuxingming;
	}
	/**
	 * 设置：赞
	 */
	public void setThumbsupnum(Integer thumbsupnum) {
		this.thumbsupnum = thumbsupnum;
	}
	/**
	 * 获取：赞
	 */
	public Integer getThumbsupnum() {
		return thumbsupnum;
	}
	/**
	 * 设置：踩
	 */
	public void setCrazilynum(Integer crazilynum) {
		this.crazilynum = crazilynum;
	}
	/**
	 * 获取：踩
	 */
	public Integer getCrazilynum() {
		return crazilynum;
	}
	/**
	 * 设置：收藏数量
	 */
	public void setStoreupnum(Integer storeupnum) {
		this.storeupnum = storeupnum;
	}
	/**
	 * 获取：收藏数量
	 */
	public Integer getStoreupnum() {
		return storeupnum;
	}

}
