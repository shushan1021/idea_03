package com.cy.Dao;

import com.cy.dao.SysNoticeDao;
import com.cy.domain.SysNotice;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

@Slf4j
@SpringBootTest
public class SysNoticeDaoTests {
    @Autowired
    private SysNoticeDao sysNoticeDao;
    @Test
    void testSelectNotices(){
        SysNotice sysNotice = new SysNotice();

        List<SysNotice> notices =
                sysNoticeDao.selectNotices(sysNotice);
        notices.forEach(item -> System.out.println(item));
    }
    @Test
    void testSelectNoticeById(){
        log.info(sysNoticeDao.selectNoticeById(41L).toString());

    }
}
