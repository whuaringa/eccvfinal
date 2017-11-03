package application;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import util.JavaMail;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;

@Controller
public class Application {
    protected final Log logger = LogFactory.getLog(this.getClass());

    public Application() {
    }

    @RequestMapping({"/login.htm"})
    public ModelAndView handleRequestLogin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        return new ModelAndView("login/login");
    }

    @RequestMapping(
        value = {"/estadocuenta.htm"},
        method = {RequestMethod.POST}
    )
    public ModelAndView handleRequestBadRequestPrincipal(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HashMap myModel = new HashMap();
        String codtrabajador = request.getParameter("codtrabajador");
        String dni = request.getParameter("dni");
        myModel.put("codtrabajador", codtrabajador);
        myModel.put("dni", dni);
        return new ModelAndView("estadocuenta/estadocv", "model", myModel);
    }

    @RequestMapping(
        value = {"/envia_correo.htm"},
        consumes = {"application/json"},
        method = {RequestMethod.POST}
    )
    @ResponseBody
    public String enviarCorreo(@RequestBody String data, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("Enviando correo...!!!!");
        JSONObject requestedJSONObject = new JSONObject(data);
        String codTrabajador = requestedJSONObject.getString("codtrabajador");
        String periodo = requestedJSONObject.getString("periodo");
        String dni = requestedJSONObject.getString("dni");
        System.out.println(codTrabajador + "-" + dni + "-" + periodo);

        try {
            JavaMail e = new JavaMail();
            System.out.print("Ingresa envio correo ");
            String ret = e.EnviarCorreo(codTrabajador, dni, periodo);
            if(ret == "ERROR") {
                String ls_mensajeserver = "Dirección de correo electrónico, incorrecto";
                response.setStatus(400);
                System.out.println("ret response " + ret);
                response.setContentType("text/plain");
                response.setCharacterEncoding("UTF-8");
                return "ERROR";
            }

            System.out.println("ret ENVIA CORREO " + ret);
        } catch (Exception var11) {
            var11.printStackTrace();
        }

        return "SUCCESS";
    }
}
