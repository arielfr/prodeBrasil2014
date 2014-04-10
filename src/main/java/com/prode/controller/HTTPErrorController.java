package com.prode.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.prode.common.CommonModel;

@Controller
@RequestMapping(value = "/errors")
public class HTTPErrorController extends CommonModel {

	@RequestMapping(value = "/404.html", method = RequestMethod.GET)
    public String Error404(HttpServletRequest request, HttpServletResponse response, Map<String, Object> model) {
		return "404";
    }
}
