package com.example.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;

import org.apache.http.HttpStatus;
import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class fErrorController implements ErrorController{

    @RequestMapping("/error")
    public String handleError(HttpServletRequest request){
    	
        Object status = request.getAttribute(RequestDispatcher.ERROR_STATUS_CODE);
        if(null != status){
            int statusCode = Integer.valueOf(status.toString());
            if(statusCode == HttpStatus.SC_NOT_FOUND){
                return "404";
            } else if (statusCode == HttpStatus.SC_INTERNAL_SERVER_ERROR) {
				// 서버에 대한 에러이기 때문에 사용자에게 정보를 제공하지 않는다.
				return "500";
			}//end of if
        }//end of if
        return "error";
    }// end of handleError

}

