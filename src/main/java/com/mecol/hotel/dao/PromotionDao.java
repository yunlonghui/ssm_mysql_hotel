package com.mecol.hotel.dao;

import com.mecol.hotel.entity.Promotion;

import java.util.List;

public interface PromotionDao {
    List<Promotion> getPromotionList();

    void insPromotion(Promotion promotion);

    void delPromotionById(Integer promotion_id);
}
