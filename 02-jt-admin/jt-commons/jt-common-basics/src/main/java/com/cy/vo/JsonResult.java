package com.cy.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

@Data
@Accessors
@NoArgsConstructor
@AllArgsConstructor
public class JsonResult {
    private Integer code = 1;
    private String msg = "ok";
    private Object data = null;



    public JsonResult(Object data) {
        this.data = data;
    }
}
