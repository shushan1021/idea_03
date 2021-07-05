package com.cy.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;
@Data
@AllArgsConstructor
@NoArgsConstructor
public class SysNotice {
//     `id` int(4) NOT NULL AUTO_INCREMENT COMMENT 'ID',
//     `title` varchar(50) NOT NULL COMMENT '标题',
//     `type` char(1) NOT NULL COMMENT '类型（1 通知 2 公告）',
//     `content` varchar(500) DEFAULT NULL COMMENT '公告内容',
//     `status` char(1) DEFAULT '0' COMMENT '状态（0 正常 1 关闭）',
//     `createdUser` varchar(64) DEFAULT '' COMMENT '创建者',
//     `createdTime` datetime DEFAULT NULL COMMENT '创建时间',
//     `modifiedUser` varchar(64) DEFAULT '' COMMENT '更新者',
//     `modifiedTime` datetime DEFAULT NULL COMMENT '更新时间',
//     `remark` varchar(255) DEFAULT NULL COMMENT '备注',
//      PRIMARY KEY (`id`)
        private Integer id;
        private String title;
        private String type;
        private String content;
        private String status;
        private String createdUser;
        private Date createdTime;
        private String modifiedUser;
        private Date modifiedTime;
        private String remark;

}
