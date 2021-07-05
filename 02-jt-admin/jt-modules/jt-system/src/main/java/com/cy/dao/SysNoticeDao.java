package com.cy.dao;

import com.cy.domain.SysNotice;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface SysNoticeDao {
    /**
     *基于条件查询公告信息
     * @param sysNotice 基于此对象封装查询参数
     * @return 查询到的公告数据
     */
    List<SysNotice> selectNotices(SysNotice sysNotice);

    /**
     * 基于id执行删除操作
     * @param id 要删除的id
     * @return 删除的行数
     */
    int deleteByid(Long ...id);

    /**
     * 新增公告数据
     * @param sysNotice
     * @return
     */
    int insertNotice(SysNotice sysNotice);

    /**
     * 修改公告数据
     * @param sysNotice
     * @return
     */
    int updateNotice(SysNotice sysNotice);

    /**
     * 根据id查询公告对象
     * @param id
     * @return
     */
    SysNotice selectNoticeById(Long id);
}
