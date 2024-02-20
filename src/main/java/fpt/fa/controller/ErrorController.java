//package fpt.fa.controller;
//
//import javax.servlet.http.HttpServletRequest;
//
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//
//@Controller
//public class ErrorController {
//
//    /** Error page.  */
//    private static final String ERROR_PAGE = "errorPage";
//
//    /** Error page. */
//	 @RequestMapping(value = "/errors", method = RequestMethod.GET) 
//    public String renderErrorPage(HttpServletRequest httpRequest, Model model) {
//
//        String errorCode = "";
//        String errorMsg = "";
//        int httpErrorCode = getErrorCode(httpRequest);
//
//        switch (httpErrorCode) {
//            case 400:
//                errorCode = "400";
//                errorMsg = "Bad Request.";
//                break;
//
//            case 401:
//                errorCode = "401";
//                errorMsg = "Unauthorized.";
//                break;
//
//            case 403:
//                errorCode = "403";
//                errorMsg = "Access is denied.";
//                break;
//
//            case 404:
//                errorCode = "404";
//                errorMsg = "Page not found.";
//                break;
//            case 405:
//                errorCode = "405";
//                errorMsg = "Method Not Allowed";
//                break;
//
//            case 500:
//                errorCode = "500";
//                errorMsg = "Internal Server Error.";
//                break;
//
//            default:
//                errorCode = ":(";
//                errorMsg = "Oops! Something went wrong.";
//                break;
//        }
//        model.addAttribute("errorMsg", errorMsg);
//        model.addAttribute("errorCode", errorCode);
//        return ERROR_PAGE;
//    }
//	 @RequestMapping(value = "/errors", method = RequestMethod.POST) 
//	    public String renderErrorPag1(HttpServletRequest httpRequest, Model model) {
//
//	        String errorCode = "";
//	        String errorMsg = "";
//	        int httpErrorCode = getErrorCode(httpRequest);
//
//	        switch (httpErrorCode) {
//	            case 400:
//	                errorCode = "400";
//	                errorMsg = "Bad Request.";
//	                break;
//
//	            case 401:
//	                errorCode = "401";
//	                errorMsg = "Unauthorized.";
//	                break;
//
//	            case 403:
//	                errorCode = "403";
//	                errorMsg = "Access is denied.";
//	                break;
//
//	            case 404:
//	                errorCode = "404";
//	                errorMsg = "Page not found.";
//	                break;
//	            case 405:
//	                errorCode = "405";
//	                errorMsg = "Method Not Allowed";
//	                break;
//
//	            case 500:
//	                errorCode = "500";
//	                errorMsg = "Internal Server Error.";
//	                break;
//
//	            default:
//	                errorCode = ":(";
//	                errorMsg = "Oops! Something went wrong.";
//	                break;
//	        }
//	        model.addAttribute("errorMsg", errorMsg);
//	        model.addAttribute("errorCode", errorCode);
//	        return ERROR_PAGE;
//	    }
//    /**
//     * Get error code.
//     * @param httpRequest - not empty
//     * @return errorCode
//     */
//    private int getErrorCode(HttpServletRequest httpRequest) {
//        return (Integer) httpRequest.getAttribute("javax.servlet.error.status_code");
//    }
//}