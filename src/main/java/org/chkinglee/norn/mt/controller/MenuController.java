package org.chkinglee.norn.mt.controller;

import org.chkinglee.norn.mt.model.Menu;
import org.chkinglee.norn.mt.service.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * TODO
 *
 * @Author: lilinzhen
 * @Version: 2020/5/3
 **/
@RestController
@RequestMapping("/api/v1/menus")
public class MenuController {

    @Autowired
    MenuService menuService;

    @RequestMapping(value = "/tenant/{tenant}/menus", method = RequestMethod.GET)
    public List<Menu> getMenusByTenant(@PathVariable("tenant") String tenant) {


        return menuService.getMenusByTenant(tenant);

    }
}
