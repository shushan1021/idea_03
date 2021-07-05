package com.cy.service;

import com.cy.domain.SysNotice;

import java.util.List;

public interface ISysNoticeService {

    List<SysNotice> selectNotices(SysNotice sysNotice);


    int deleteByid(Long ...id);


    int insertNotice(SysNotice sysNotice);


    int updateNotice(SysNotice sysNotice);


    SysNotice selectNoticeById(Long id);
}
