package com.goods_qa.model;

import java.util.*;

public interface GoodsQaDAO_interface {
	public void insert(GoodsQaVO goodsQaVO);
    public void update(GoodsQaVO goodsQaVO);
    public void delete(String gfaq_no);
    public GoodsQaVO findByPrimaryKey(String gfaq_no);
    public List<GoodsQaVO> getAll();
    public List<String> getAllGoodsNo();
    public List<GoodsQaVO> findByGoodsNo(String Goods_no);
    
}
