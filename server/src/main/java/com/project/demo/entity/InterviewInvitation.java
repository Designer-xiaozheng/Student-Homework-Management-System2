package com.project.demo.entity;

import java.sql.Date;
import java.sql.Timestamp;
import com.project.demo.entity.base.BaseEntity;
import java.io.Serializable;
import lombok.*;
import javax.persistence.*;


/**
 * 面试邀请：(InterviewInvitation)表实体类
 *
 */
@Setter
@Getter
@Entity(name = "InterviewInvitation")
public class InterviewInvitation implements Serializable {

    // InterviewInvitation编号
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "interview_invitation_id")
    private Integer interview_invitation_id;

    // 应聘编号
    @Basic
    private String application_number;
    // 岗位名称
    @Basic
    private String position_name;
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
    // 学生用户
    @Basic
    private Integer student_users;
    // 学生学号
    @Basic
    private String student_no;
    // 学生姓名
    @Basic
    private String student_name;
    // 学生性别
    @Basic
    private String student_gender;
    // 专业
    @Basic
    private String major;
    // 个人简历
    @Basic
    private String curriculum_vitae;
    // 面试日期
    @Basic
    private Timestamp interview_date;
    // 面试信息
    @Basic
    private String interview_information;
    // 面试状态
    @Basic
    private String interview_status;














    // 更新时间
    @Basic
    private Timestamp update_time;

    // 创建时间
    @Basic
    private Timestamp create_time;

}
