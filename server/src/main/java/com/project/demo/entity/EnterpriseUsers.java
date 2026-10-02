package com.project.demo.entity;

import java.sql.Date;
import java.sql.Timestamp;
import com.project.demo.entity.base.BaseEntity;
import java.io.Serializable;
import lombok.*;
import javax.persistence.*;


/**
 * 企业用户：(EnterpriseUsers)表实体类
 *
 */
@Setter
@Getter
@Entity(name = "EnterpriseUsers")
public class EnterpriseUsers implements Serializable {

    // EnterpriseUsers编号
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "enterprise_users_id")
    private Integer enterprise_users_id;

    // 企业名称
    @Basic
    private String enterprise_name;
    // 企业地址
    @Basic
    private String business_address;
    // 企业电话
    @Basic
    private String enterprise_telephone;



    // 审核状态
    @Basic
    private String examine_state;









    // 用户编号
    @Id
    @Column(name = "user_id")
    private Integer userId;


    // 更新时间
    @Basic
    private Timestamp update_time;

    // 创建时间
    @Basic
    private Timestamp create_time;

}
