package com.entity;

import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.util.Date;

import org.apache.commons.beanutils.BeanUtils;
import org.springframework.format.annotation.DateTimeFormat;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;

/**
 * 房间类型 数据库通用操作实体类（普通增删改查）
 * 
 * @author
 * @email
 * @date 2021-04-15 23:54:47
 */
@TableName("fangjianleixing")
public class FangjianleixingEntity<T> implements Serializable {
    private static final long serialVersionUID = 1L;

    public FangjianleixingEntity() {

    }

    public FangjianleixingEntity(T t) {
	try {
	    BeanUtils.copyProperties(this, t);
	} catch (IllegalAccessException | InvocationTargetException e) {
	    e.printStackTrace();
	}
    }

    /**
     * 主键id
     */
    @TableId
    private Long id;
    /**
     * 房间类型
     */

    private String fangjianleixing;

    @JsonFormat(locale = "zh", timezone = "GMT+8", pattern = "yyyy-MM-dd HH:mm:ss")
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
     * 设置：房间类型
     */
    public void setFangjianleixing(String fangjianleixing) {
	this.fangjianleixing = fangjianleixing;
    }

    /**
     * 获取：房间类型
     */
    public String getFangjianleixing() {
	return fangjianleixing;
    }

}
