package org.chkinglee.norn.mt.mapper;

import org.chkinglee.norn.mt.model.Tenant;

public interface TenantMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Tenant record);

    int insertSelective(Tenant record);

    Tenant selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Tenant record);

    int updateByPrimaryKey(Tenant record);
}