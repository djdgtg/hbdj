package com.retech.qc.exception;

import com.retech.qc.utils.ActionResult;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * 全局异常处理器
 * @version 1.0
 */
public class GlobalExceptionResolver implements HandlerExceptionResolver {
	
	private static final Logger logger = LoggerFactory.getLogger(GlobalExceptionResolver.class);

	public ModelAndView resolveException(HttpServletRequest request, HttpServletResponse response, Object handler,
			Exception e) {
		logger.debug("=================================================");
		logger.debug("hello log4j 这里只是一个测试");
		logger.debug("=================================================");
		logger.info("系统已经发生异常。。。。。。");
		// 1、捕获异常
		e.printStackTrace();
		// 2、写日志文件log4j
		logger.error("已经进入全局异常处理器", e);
		// 3、发邮件、发短信
		//使用jmail发送邮件
		// 4、展示错误页面
		ActionResult result=new ActionResult();
		result.setMsg("操作失败！");
		result.setStatus(400);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("error/exception");
		modelAndView.addObject("data", result);
		return modelAndView;
	}

}
