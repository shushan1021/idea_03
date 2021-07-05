package com.cy.util;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;

public class PageUtil {
    public static <T>Page<T> startPage(){
        HttpServletRequest request =
                ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
        String pageCurrentStr = request.getParameter("pageCurrent");
        String pageSizeStr = request.getParameter("pageSize");
        if(pageCurrentStr == null || "".equals(pageCurrentStr)){
            pageCurrentStr = "1";
        }
        if (pageSizeStr == null || "".equals(pageSizeStr)){
            pageSizeStr = "3";
        }
        int pageCurrent = Integer.parseInt(pageCurrentStr);
        int pageSize = Integer.parseInt(pageSizeStr);
        return PageHelper.startPage(pageCurrent,pageSize);
    }
}
