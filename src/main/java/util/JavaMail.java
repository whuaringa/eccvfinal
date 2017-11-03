package util;

import bean.Trabajador;

import javax.mail.Message.RecipientType;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import java.util.Properties;

public class JavaMail {
    public JavaMail() {
    }

    public String EnviarCorreo(String codTrabajador, String dni, String periodo) {
        String ret = "SUCCESS";
        new Trabajador();

        try {
            Properties e = new Properties();
            e.setProperty("mail.smtp.host", "smtp.gmail.com");
            e.setProperty("mail.smtp.starttls.enable", "true");
            e.setProperty("mail.smtp.port", "587");
            e.setProperty("mail.smtp.user", "j.alar234@gmail.com");
            e.setProperty("mail.smtp.auth", "true");
            Session session = Session.getDefaultInstance(e);
            session.setDebug(true);
            MimeBodyPart texto = new MimeBodyPart();
            texto.setText("Mensaje Cerro Verde");
            MimeMultipart multiparte = new MimeMultipart();
            multiparte.addBodyPart(texto);
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress("j.alar234@gmail.com"));
            message.addRecipient(RecipientType.TO, new InternetAddress("j.alar234@gmail.com"));
            message.setSubject("ECCV: " + codTrabajador + "," + dni + "," + periodo);
            message.setContent(multiparte);
            Transport t = session.getTransport("smtp");
            t.connect("j.alar234@gmail.com", "Pacifico");
            t.sendMessage(message, message.getAllRecipients());
            t.close();
        } catch (Exception var12) {
            ret = "ERROR";
            var12.printStackTrace();
        }

        return ret;
    }
}
