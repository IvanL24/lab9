package filters;

import models.User;
import services.AccountService;
import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.*;

/**
 *
 * @author ivanl
 */
public class AdminFilter implements Filter {
    /**
     *
     * @param request The servlet request we are processing
     * @param response The servlet response we are creating
     * @param chain The filter chain we are processing
     *
     * @exception IOException if an input/output error occurs
     * @exception ServletException if a servlet error occurs
     */
    public void doFilter(ServletRequest request, ServletResponse response,
            FilterChain chain)
            throws IOException, ServletException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        HttpServletRequest httprequest = (HttpServletRequest) request;
        HttpServletResponse httpresponse = (HttpServletResponse) response;
        HttpSession session = httprequest.getSession();
        
        AccountService as = new AccountService();
        //User user = as.login(email, password);
        User user = (User) session.getAttribute("user");
        
        // check if user is an admin or not
            // if admin: 
            //chain.doFilter(request, response);
            if(user.getRole().getRoleId() == 1){
                chain.doFilter(request, response);
            } else {
                httpresponse.sendRedirect("/notes");
            }
        
            // if not admin:
            //httpresponse.sendRedirect("/notes");
        
    }

    /**
     * Destroy method for this filter
     */
    public void destroy() {        
    }

    /**
     * Init method for this filter
     */
    public void init(FilterConfig filterConfig) {        

    }
}
