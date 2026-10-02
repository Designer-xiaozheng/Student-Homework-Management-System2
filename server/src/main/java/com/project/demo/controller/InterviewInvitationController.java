package com.project.demo.controller;

import com.project.demo.entity.InterviewInvitation;
import com.project.demo.service.InterviewInvitationService;
import com.project.demo.controller.base.BaseController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;

import javax.persistence.Query;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.*;


/**
 * 面试邀请：(InterviewInvitation)表控制层
 *
 */
@RestController
@RequestMapping("/interview_invitation")
public class InterviewInvitationController extends BaseController<InterviewInvitation, InterviewInvitationService> {

    /**
     * 面试邀请对象
     */
    @Autowired
    public InterviewInvitationController(InterviewInvitationService service) {
        setService(service);
    }


    @PostMapping("/add")
    @Transactional
    public Map<String, Object> add(HttpServletRequest request) throws IOException {
        Map<String,Object> paramMap = service.readBody(request.getReader());
        Map<String, String> mapapplication_number = new HashMap<>();
        mapapplication_number.put("application_number",String.valueOf(paramMap.get("application_number")));
        List listapplication_number = service.select(mapapplication_number, new HashMap<>()).getResultList();
        if (listapplication_number.size()>0){
            return error(30000, "字段应聘编号内容不能重复");
        }
        this.addMap(paramMap);
        return success(1);
    }

}
