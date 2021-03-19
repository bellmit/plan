package com.plan.demo.user.dto;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * @Author: wpr
 * @Description:
 * @Date: Created in 2021/3/19 16:15
 * @Modified By:
 */
@Getter
@Setter
@ApiModel(description = "司机首页返回dto")
public class ResDriverFirstPageResultDto {

    @ApiModelProperty("乘客id")
    private String id;

    @ApiModelProperty("工龄")
    private String workYears;

    @ApiModelProperty("完成订单量")
    private String completeOrderNum;

    @ApiModelProperty("司机订单列表信息")
    private List<ResDriverFirstPageOderDto> orderList;

}
