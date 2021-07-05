package com.cy.service.impl;

import com.cy.dao.SysNoticeDao;
import com.cy.domain.SysNotice;
import com.cy.service.ISysNoticeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SysNoticeServiceImpl implements ISysNoticeService {

    @Autowired
    private SysNoticeDao sysNoticeDao;

    @Override
    public List<SysNotice> selectNotices(SysNotice sysNotice) {
        return sysNoticeDao.selectNotices(sysNotice);
    }

    @Override
    public int deleteByid(Long... id) {
        return sysNoticeDao.deleteByid(id);
    }

    @Override
    public int insertNotice(SysNotice sysNotice) {
        return sysNoticeDao.insertNotice(sysNotice);
    }

    @Override
    public int updateNotice(SysNotice sysNotice) {
        return sysNoticeDao.updateNotice(sysNotice);
    }

    @Override
    public SysNotice selectNoticeById(Long id) {
        return sysNoticeDao.selectNoticeById(id);
    }
}
