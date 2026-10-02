package com.project.demo.controller;

import com.project.demo.entity.EnterpriseUsers;
import com.project.demo.service.EnterpriseUsersService;
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
 * 企业用户：(EnterpriseUsers)表控制层
 *
 */
@RestController
@RequestMapping("/enterprise_users")
public class EnterpriseUsersController extends BaseController<EnterpriseUsers, EnterpriseUsersService> {

    /**
     * 企业用户对象
     */
    @Autowired
    public EnterpriseUsersController(EnterpriseUsersService service) {
        setService(service);
    }


    @PostMapping("/add")
    @Transactional
    public Map<String, Object> add(HttpServletRequest request) throws IOException {
        Map<String,Object> paramMap = service.readBody(request.getReader());
        Map<String, String> mapenterprise_name = new HashMap<>();
        mapenterprise_name.put("enterprise_name",String.valueOf(paramMap.get("enterprise_name")));
        List listenterprise_name = service.select(mapenterprise_name, new HashMap<>()).getResultList();
        if (listenterprise_name.size()>0){
            return error(30000, "字段企业名称内容不能重复");
        }
        this.addMap(paramMap);
        return success(1);
    }

}
