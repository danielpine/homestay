
package com.controller;

import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 主页
 */
@RequestMapping("/")
public class IndexController {
    @RequestMapping("")
    public String index() {
	System.out.println("visit /");
	return "/homestay/front/index.html";
    }

}
