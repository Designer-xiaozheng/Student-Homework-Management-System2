package com.project.demo.entity;

import java.sql.Date;
import java.sql.Timestamp;
import com.project.demo.entity.base.BaseEntity;
import java.io.Serializable;
import lombok.*;
import javax.persistence.*;


/**
 * 招聘信息：(RecruitmentInformation)表实体类
 *
 */
@Setter
@Getter
@Entity(name = "RecruitmentInformation")
public class RecruitmentInformation implements Serializable {

    // RecruitmentInformation编号
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "recruitment_information_id")
    private Integer recruitment_information_id;

    // 岗位名称
    @Basic
    private String position_name;
    // 封面
    @Basic
    private String cover;
    // 学历范围
    @Basic
    private String education_scope;
    // 专业范围
    @Basic
    private String professional_scope;
    // 薪资
    @Basic
    private String salary;
    // 企业用户
    @Basic
    private Integer enterprise_users;
    // 企业名称
    @Basic
    private String enterprise_name;
    // 企业地址
    @Basic
    private String business_address;
    // 企业电话
    @Basic
    private String enterprise_telephone;
    // 岗位说明
    @Basic
    private String job_description;














    // 更新时间
    @Basic
    private Timestamp update_time;

    // 创建时间
    @Basic
    private Timestamp create_time;

}
