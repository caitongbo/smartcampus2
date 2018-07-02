package com.smartcampus.dao;

import com.smartcampus.entity.Goods;
import org.apache.ibatis.annotations.Select;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public interface GoodsMapper {

    @Select("select goods.id as id,goods.g_name as gName,goods.g_price as gPrice,goods.g_ly as gLy,goods.g_vid as gVid,goods.g_img as gImg,goods.g_simg as gSImg,goods.g_label as gLabel,goods.g_details as gDetails,goods.g_state as gState,goods.s_i_uuid as sIUuid from goods,shop_info,user where user.uuid=shop_info.uuid and shop_info.uuid=goods.s_i_uuid and user.id=#{id}")
    List<Goods> findAllById(String id);

    @Select("select goods.id as id,goods.g_name as gName,goods.g_price as gPrice,goods.g_ly as gLy,goods.g_vid as gVid,goods.g_img as gImg,goods.g_simg as gSImg,goods.g_label as gLabel,goods.g_details as gDetails,goods.g_state as gState,goods.s_i_uuid as sIUuid from goods,shop_info,user where user.uuid=shop_info.uuid and shop_info.uuid=goods.s_i_uuid and user.id=#{id} and goods.g_state='1'")
    List<Goods> findHasUpById(String id);

    @Select("select goods.id as id,goods.g_name as gName,goods.g_price as gPrice,goods.g_ly as gLy,goods.g_vid as gVid,goods.g_img as gImg,goods.g_simg as gSImg,goods.g_label as gLabel,goods.g_details as gDetails,goods.g_state as gState,goods.s_i_uuid as sIUuid from goods,shop_info,user where user.uuid=shop_info.uuid and shop_info.uuid=goods.s_i_uuid and user.id=#{id} and goods.g_state='0'")
    List<Goods> findHasDownById(String id);

    @Select("select goods.id as id,goods.g_name as gName,goods.g_price as gPrice,goods.g_ly as gLy,goods.g_vid as gVid,goods.g_img as gImg,goods.g_simg as gSImg,goods.g_label as gLabel,goods.g_details as gDetails,goods.g_state as gState,goods.s_i_uuid as sIUuid from goods,shop_info,user where user.uuid=shop_info.uuid and shop_info.uuid=goods.s_i_uuid and user.id=#{id} and goods.g_state='-1'")
    List<Goods> findHasOverById(String id);
}