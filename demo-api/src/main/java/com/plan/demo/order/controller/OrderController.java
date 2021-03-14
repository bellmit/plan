package com.plan.demo.order.controller;
import com.plan.demo.order.dto.ReqAddOrderDto;
import com.plan.demo.order.dto.ReqCancelOrderDto;
import com.plan.demo.user.dto.ResLineResultDto;
import com.plan.frame.entity.Result;
import com.plan.frame.exception.BaseException;
import com.plan.frame.exception.SystemException;
import com.plan.frame.helper.ResultHelper;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author Administrator 2021/3/14 0014
 * @version V1.0.0
 * @description 订单管理类
 */
@Controller
@Api(tags = "2-订单管理接口")
@RequestMapping("/order/")
public class OrderController {

    /**
     * @Description:订单添加
     * @param
     * @throws RuntimeException
     */
    @ApiOperation(value = "订单添加")
    @RequestMapping(value = "/addOrder",method = RequestMethod.POST)
    public Result<String> addOrder(ReqAddOrderDto reqAddOrderDto)throws RuntimeException{
        try {
            return ResultHelper.success();
        }catch (Exception e) {
            if (e instanceof BaseException) {
                throw (BaseException) e;
            } else {
                throw new SystemException("订单添加失败", e, "请联系管理员！");
            }
        }
    }
    /**
     * @Description:获取线路信息
     * @param
     * @throws RuntimeException
     */
    @ApiOperation(value = "获取线路列表")
    @RequestMapping(value = "/getLine",method = RequestMethod.POST)
    public Result<ResLineResultDto> getLine()throws RuntimeException{
        try {
            ResLineResultDto resLineResultDto = new ResLineResultDto();
            return ResultHelper.success(resLineResultDto);
        }catch (Exception e) {
            if (e instanceof BaseException) {
                throw (BaseException) e;
            } else {
                throw new SystemException("订单添加失败", e, "请联系管理员！");
            }
        }
    }

    @ApiOperation(value = "取消订单")
    @RequestMapping(value = "/cancelOrder",method = RequestMethod.POST)
    public Result<String> cancelOrder(ReqCancelOrderDto reqCancelOrderDto)throws RuntimeException{
        try {
            ResLineResultDto resLineResultDto = new ResLineResultDto();
            return ResultHelper.success(resLineResultDto);
        }catch (Exception e) {
            if (e instanceof BaseException) {
                throw (BaseException) e;
            } else {
                throw new SystemException("订单添加失败", e, "请联系管理员！");
            }
        }
    }



}
