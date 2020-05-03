package org.chkinglee.norn.mt.service;

import org.chkinglee.norn.mt.mapper.MenuMapper;
import org.chkinglee.norn.mt.model.Menu;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * TODO
 *
 * @Author: lilinzhen
 * @Version: 2020/5/3
 **/
@Service
public class MenuService {

    @Autowired
    MenuMapper menuMapper;

    public List<Menu> getMenusByTenant(String tenant) {
        return menuMapper.getMenusByTenant(tenant);
    }
}
