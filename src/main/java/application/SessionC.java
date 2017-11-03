package application;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;

@Controller
public class SessionC {
    protected final Log logger = LogFactory.getLog(this.getClass());

    public SessionC() {
    }

    @RequestMapping(
        value = {"/authenticate.htm"},
        method = {RequestMethod.POST}
    )
    public String authenticate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String e = request.getParameter("username");
            String errors1 = request.getParameter("password");
            return e != null && errors1 != null && !e.isEmpty() && !errors1.isEmpty()?"redirect:/estadocv.htm":"redirect:/login.htm";
        } catch (Exception var5) {
            StringWriter errors = new StringWriter();
            var5.printStackTrace(new PrintWriter(errors));
            this.logger.error(errors.toString());
            System.out.println("Exception de /authenticate.htm");
            return "redirect:/login.htm";
        }
    }

    @RequestMapping(
        value = {"/logout.htm"},
        method = {RequestMethod.GET}
    )
    public String logout(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            HttpSession e = request.getSession();
            e.removeAttribute("token");
            e.removeAttribute("logged");
            e.invalidate();
            return "redirect:/login.htm";
        } catch (Exception var5) {
            StringWriter errors = new StringWriter();
            var5.printStackTrace(new PrintWriter(errors));
            this.logger.error(errors.toString());
            System.out.println("Exception de /logout.htm");
            return "redirect:/login.htm";
        }
    }
}
