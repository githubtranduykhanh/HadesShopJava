package Routes.Users;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.Authenticator;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

import java.util.Properties;
/**
 * Servlet implementation class ContactRoute
 */
@WebServlet("/Contact")
@MultipartConfig()
public class ContactRoute extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/views/users/Contact.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");	
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		String email =  request.getParameter("email");
		String subject =  request.getParameter("subject");
		String msg =  request.getParameter("msg");
		System.out.println("email"+email);
		System.out.println("subject"+subject);
		System.out.println("msg"+msg);
		
		
		final String senderEmail = "mkssoftware.it@gmail.com";
        final String senderPassword = "vgdiidfhygutsbzi";
        Properties properties = new Properties();
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true");
        properties.put("mail.smtp.host", "smtp.gmail.com");
        properties.put("mail.smtp.port", "587");
        
        
        
        Session session = Session.getDefaultInstance(properties, new Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(senderEmail, senderPassword);
            }
        });

        try {
        	// Your mail has 2 parts, the BODY(html) and the EMBEDDED image
        	MimeMultipart multipart = new MimeMultipart("related");

        	// first part (the html)
        	BodyPart messageBodyPart = new MimeBodyPart();
        	String htmlText = "<H1>You have a contact</H1><img src=\"cid:image\" width=\"30%\" height=\"30%\">";
        	String htmlTable = "<div\r\n"
        			+ "  style=\"\r\n"
        			+ "    height: 100% !important;\r\n"
        			+ "    width: 100% !important;\r\n"
        			+ "    min-width: 100%;\r\n"
        			+ "    box-sizing: border-box;\r\n"
        			+ "    color: #444444;\r\n"
        			+ "    font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;\r\n"
        			+ "    font-weight: normal;\r\n"
        			+ "    padding: 0;\r\n"
        			+ "    margin: 0;\r\n"
        			+ "    margin: 0;\r\n"
        			+ "    font-size: 14px;\r\n"
        			+ "    line-height: 140%;\r\n"
        			+ "    text-align: center;\r\n"
        			+ "    background-color: #e9eaec;\r\n"
        			+ "  \"\r\n"
        			+ ">\r\n"
        			+ "  <div class=\"adM\"></div>\r\n"
        			+ "  <table\r\n"
        			+ "    border=\"0\"\r\n"
        			+ "    cellpadding=\"0\"\r\n"
        			+ "    cellspacing=\"0\"\r\n"
        			+ "    width=\"100%\"\r\n"
        			+ "    height=\"100%\"\r\n"
        			+ "    style=\"\r\n"
        			+ "      border-collapse: collapse;\r\n"
        			+ "      border-spacing: 0;\r\n"
        			+ "      vertical-align: top;\r\n"
        			+ "      height: 100% !important;\r\n"
        			+ "      width: 100% !important;\r\n"
        			+ "      min-width: 100%;\r\n"
        			+ "      box-sizing: border-box;\r\n"
        			+ "      background-color: #e9eaec;\r\n"
        			+ "      color: #444444;\r\n"
        			+ "      font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;\r\n"
        			+ "      font-weight: normal;\r\n"
        			+ "      padding: 0;\r\n"
        			+ "      margin: 0;\r\n"
        			+ "      margin: 0;\r\n"
        			+ "      text-align: left;\r\n"
        			+ "      font-size: 14px;\r\n"
        			+ "      line-height: 140%;\r\n"
        			+ "    \"\r\n"
        			+ "  >\r\n"
        			+ "    <tbody>\r\n"
        			+ "      <tr style=\"padding: 0; vertical-align: top; text-align: left\">\r\n"
        			+ "        <td\r\n"
        			+ "          align=\"center\"\r\n"
        			+ "          valign=\"top\"\r\n"
        			+ "          style=\"\r\n"
        			+ "            word-wrap: break-word;\r\n"
        			+ "            border-collapse: collapse !important;\r\n"
        			+ "            vertical-align: top;\r\n"
        			+ "            color: #444444;\r\n"
        			+ "            font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;\r\n"
        			+ "            font-weight: normal;\r\n"
        			+ "            padding: 0;\r\n"
        			+ "            margin: 0;\r\n"
        			+ "            margin: 0;\r\n"
        			+ "            font-size: 14px;\r\n"
        			+ "            line-height: 140%;\r\n"
        			+ "            text-align: center;\r\n"
        			+ "          \"\r\n"
        			+ "        >\r\n"
        			+ "          <table\r\n"
        			+ "            border=\"0\"\r\n"
        			+ "            cellpadding=\"0\"\r\n"
        			+ "            cellspacing=\"0\"\r\n"
        			+ "            style=\"\r\n"
        			+ "              border-collapse: collapse;\r\n"
        			+ "              border-spacing: 0;\r\n"
        			+ "              padding: 0;\r\n"
        			+ "              vertical-align: top;\r\n"
        			+ "              width: 600px;\r\n"
        			+ "              margin: 0 auto 0 auto;\r\n"
        			+ "              margin: 0 auto 0 auto;\r\n"
        			+ "              text-align: inherit;\r\n"
        			+ "            \"\r\n"
        			+ "          >\r\n"
        			+ "            <tbody>\r\n"
        			+ "              \r\n"
        			+ "              <tr style=\"padding: 0; vertical-align: top; text-align: left\">\r\n"
        			+ "                <td\r\n"
        			+ "                  align=\"left\"\r\n"
        			+ "                  valign=\"top\"\r\n"
        			+ "                  style=\"\r\n"
        			+ "                    word-wrap: break-word;\r\n"
        			+ "                    border-collapse: collapse !important;\r\n"
        			+ "                    vertical-align: top;\r\n"
        			+ "                    color: #444444;\r\n"
        			+ "                    font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;\r\n"
        			+ "                    font-weight: normal;\r\n"
        			+ "                    margin: 0;\r\n"
        			+ "                    margin: 0;\r\n"
        			+ "                    text-align: left;\r\n"
        			+ "                    font-size: 14px;\r\n"
        			+ "                    line-height: 140%;\r\n"
        			+ "                    background-color: #ffffff;\r\n"
        			+ "                    padding: 60px 75px 45px 75px;\r\n"
        			+ "                    border-top: 3px solid #e27730;\r\n"
        			+ "                    border-right: 1px solid #dddddd;\r\n"
        			+ "                    border-bottom: 1px solid #dddddd;\r\n"
        			+ "                    border-left: 1px solid #dddddd;\r\n"
        			+ "                  \"\r\n"
        			+ "                >\r\n"
        			+ "                  <table\r\n"
        			+ "                    style=\"\r\n"
        			+ "                      border-collapse: collapse;\r\n"
        			+ "                      border-spacing: 0;\r\n"
        			+ "                      padding: 0;\r\n"
        			+ "                      vertical-align: top;\r\n"
        			+ "                      text-align: left;\r\n"
        			+ "                      width: 100%;\r\n"
        			+ "                    \"\r\n"
        			+ "                  >\r\n"
        			+ "                    <tbody>\r\n"
        			+ "                      <tr\r\n"
        			+ "                        style=\"\r\n"
        			+ "                          padding: 0;\r\n"
        			+ "                          vertical-align: top;\r\n"
        			+ "                          text-align: left;\r\n"
        			+ "                        \"\r\n"
        			+ "                      >\r\n"
        			+ "                        <td\r\n"
        			+ "                          style=\"\r\n"
        			+ "                            word-wrap: break-word;\r\n"
        			+ "                            border-collapse: collapse !important;\r\n"
        			+ "                            vertical-align: top;\r\n"
        			+ "                            font-family: 'Helvetica Neue', Helvetica, Arial,\r\n"
        			+ "                              sans-serif;\r\n"
        			+ "                            font-weight: normal;\r\n"
        			+ "                            padding: 0;\r\n"
        			+ "                            margin: 0;\r\n"
        			+ "                            margin: 0;\r\n"
        			+ "                            text-align: left;\r\n"
        			+ "                            font-size: 14px;\r\n"
        			+ "                            line-height: 140%;\r\n"
        			+ "                            color: #777777;\r\n"
        			+ "                          \"\r\n"
        			+ "                        >\r\n"
        			+ "                          <h6\r\n"
        			+ "                            style=\"\r\n"
        			+ "                              padding: 0;\r\n"
        			+ "                              text-align: left;\r\n"
        			+ "                              word-wrap: normal;\r\n"
        			+ "                              font-family: 'Helvetica Neue', Helvetica, Arial,\r\n"
        			+ "                                sans-serif;\r\n"
        			+ "                              font-weight: bold;\r\n"
        			+ "                              line-height: 130%;\r\n"
        			+ "                              font-size: 18px;\r\n"
        			+ "                              color: #444444;\r\n"
        			+ "                              margin: 0 0 3px 0;\r\n"
        			+ "                              margin: 0 0 3px 0;\r\n"
        			+ "                            \"\r\n"
        			+ "                          >\r\n"
        			+ "                            Customer Email:\r\n"
        			+ "                          </h6>\r\n"
        			+ "                          <p\r\n"
        			+ "                            style=\"\r\n"
        			+ "                              font-family: 'Helvetica Neue', Helvetica, Arial,\r\n"
        			+ "                                sans-serif;\r\n"
        			+ "                              font-weight: normal;\r\n"
        			+ "                              padding: 0;\r\n"
        			+ "                              text-align: left;\r\n"
        			+ "                              line-height: 140%;\r\n"
        			+ "                              margin: 0 0 15px 0;\r\n"
        			+ "                              margin: 0 0 15px 0;\r\n"
        			+ "                              word-wrap: break-word;\r\n"
        			+ "                              word-break: break-word;\r\n"
        			+ "                              font-size: 16px;\r\n"
        			+ "                              color: #777777;\r\n"
        			+ "                            \"\r\n"
        			+ "                          >\r\n"
        			+ "                            "+email+"\r\n"
        			+ "                          </p>\r\n"
        			+ "                          <h6\r\n"
        			+ "                            style=\"\r\n"
        			+ "                              padding: 0;\r\n"
        			+ "                              text-align: left;\r\n"
        			+ "                              word-wrap: normal;\r\n"
        			+ "                              font-family: 'Helvetica Neue', Helvetica, Arial,\r\n"
        			+ "                                sans-serif;\r\n"
        			+ "                              font-weight: bold;\r\n"
        			+ "                              line-height: 130%;\r\n"
        			+ "                              font-size: 18px;\r\n"
        			+ "                              color: #444444;\r\n"
        			+ "                              margin: 0 0 3px 0;\r\n"
        			+ "                              margin: 0 0 3px 0;\r\n"
        			+ "                            \"\r\n"
        			+ "                          >\r\n"
        			+ "                          Message:\r\n"
        			+ "                          </h6>\r\n"
        			+ "                          <p\r\n"
        			+ "                            style=\"\r\n"
        			+ "                              font-family: 'Helvetica Neue', Helvetica, Arial,\r\n"
        			+ "                                sans-serif;\r\n"
        			+ "                              font-weight: normal;\r\n"
        			+ "                              padding: 0;\r\n"
        			+ "                              text-align: left;\r\n"
        			+ "                              line-height: 140%;\r\n"
        			+ "                              margin: 0 0 15px 0;\r\n"
        			+ "                              margin: 0 0 15px 0;\r\n"
        			+ "                              word-wrap: break-word;\r\n"
        			+ "                              word-break: break-word;\r\n"
        			+ "                              font-size: 16px;\r\n"
        			+ "                              color: #777777;\r\n"
        			+ "                            \"\r\n"
        			+ "                          >\r\n"
        			+ "                            "+msg+"\r\n"
        			+ "                          </p>\r\n"
        			+ "                          <img\r\n"
        			+ "                                src=\"cid:image\"\r\n"
        			+ "                                width=\"250\"\r\n"
        			+ "                                alt=\"Hades Shop \"\r\n"
        			+ "                                style=\"\r\n"
        			+ "                                  outline: none;\r\n"
        			+ "                                  text-decoration: none;\r\n"
        			+ "                                  width: auto;\r\n"
        			+ "                                  clear: both;\r\n"
        			+ "                                  display: inline-block !important;\r\n"
        			+ "                                  max-width: 45%;\r\n"
        			+ "                                \"\r\n"
        			+ "                                data-image-whitelisted=\"\"\r\n"
        			+ "                                class=\"CToWUd a6T\"\r\n"
        			+ "                                data-bit=\"iit\"\r\n"
        			+ "                                tabindex=\"0\"\r\n"
        			+ "                              />\r\n"
        			+ "                        </td>\r\n"
        			+ "                      </tr>\r\n"
        			+ "                    </tbody>\r\n"
        			+ "                  </table>\r\n"
        			+ "                </td>\r\n"
        			+ "              </tr>\r\n"
        			+ "              <tr style=\"padding: 0; vertical-align: top; text-align: left\">\r\n"
        			+ "                <td\r\n"
        			+ "                  align=\"center\"\r\n"
        			+ "                  valign=\"top\"\r\n"
        			+ "                  style=\"\r\n"
        			+ "                    word-wrap: break-word;\r\n"
        			+ "                    border-collapse: collapse !important;\r\n"
        			+ "                    vertical-align: top;\r\n"
        			+ "                    font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;\r\n"
        			+ "                    font-weight: normal;\r\n"
        			+ "                    margin: 0;\r\n"
        			+ "                    margin: 0;\r\n"
        			+ "                    line-height: 140%;\r\n"
        			+ "                    padding: 30px;\r\n"
        			+ "                    color: #72777c;\r\n"
        			+ "                    font-size: 12px;\r\n"
        			+ "                    text-align: center;\r\n"
        			+ "                  \"\r\n"
        			+ "                >\r\n"
        			+ "                  This email was auto-generated and sent from\r\n"
        			+ "                  <a\r\n"
        			+ "                    href=\"http://dnconline.lovestoblog.com\"\r\n"
        			+ "                    style=\"\r\n"
        			+ "                      font-family: 'Helvetica Neue', Helvetica, Arial,\r\n"
        			+ "                        sans-serif;\r\n"
        			+ "                      font-weight: normal;\r\n"
        			+ "                      padding: 0;\r\n"
        			+ "                      margin: 0;\r\n"
        			+ "                      margin: 0;\r\n"
        			+ "                      text-align: left;\r\n"
        			+ "                      line-height: 140%;\r\n"
        			+ "                      color: #72777c;\r\n"
        			+ "                      text-decoration: underline;\r\n"
        			+ "                    \"\r\n"
        			+ "                    target=\"_blank\"\r\n"
        			+ "                    data-saferedirecturl=\"https://www.google.com/url?q=http://dnconline.lovestoblog.com&amp;source=gmail&amp;ust=1693041188868000&amp;usg=AOvVaw3k7dqIhYrKS4BbakAihcCT\"\r\n"
        			+ "                    >Hades Shop </a\r\n"
        			+ "                  >. Learn\r\n"
        			+ "                  <a\r\n"
        			+ "                    href=\"https://wpforms.com/docs/how-to-use-email-summaries/#faq\"\r\n"
        			+ "                    style=\"\r\n"
        			+ "                      font-family: 'Helvetica Neue', Helvetica, Arial,\r\n"
        			+ "                        sans-serif;\r\n"
        			+ "                      font-weight: normal;\r\n"
        			+ "                      padding: 0;\r\n"
        			+ "                      margin: 0;\r\n"
        			+ "                      margin: 0;\r\n"
        			+ "                      text-align: left;\r\n"
        			+ "                      line-height: 140%;\r\n"
        			+ "                      color: #72777c;\r\n"
        			+ "                      text-decoration: underline;\r\n"
        			+ "                    \"\r\n"
        			+ "                    target=\"_blank\"\r\n"
        			+ "                    data-saferedirecturl=\"https://www.google.com/url?q=https://wpforms.com/docs/how-to-use-email-summaries/%23faq&amp;source=gmail&amp;ust=1693041188868000&amp;usg=AOvVaw3nDIAcY6xym7gPJLyyG9aI\"\r\n"
        			+ "                    >how to disable</a\r\n"
        			+ "                  >.\r\n"
        			+ "                </td>\r\n"
        			+ "              </tr>\r\n"
        			+ "            </tbody>\r\n"
        			+ "          </table>\r\n"
        			+ "        </td>\r\n"
        			+ "      </tr>\r\n"
        			+ "    </tbody>\r\n"
        			+ "  </table>\r\n"
        			+ "  <div class=\"yj6qo\"></div>\r\n"
        			+ "  <div class=\"adL\"></div>\r\n"
        			+ "  <div class=\"adL\"></div>\r\n"
        			+ "</div>\r\n"
        			+ "";
        	messageBodyPart.setContent(htmlTable, "text/html;charset=UTF-8");

        	// Add it
        	multipart.addBodyPart(messageBodyPart);

        	// Second part (EMBEDDED image)
        	messageBodyPart = new MimeBodyPart();
        	String readPath = request.getServletContext().getRealPath("/assets/images/Banner/logo_key_back.jpg");
        	DataSource fds = new FileDataSource(readPath);

        	messageBodyPart.setDataHandler(new DataHandler(fds));
        	messageBodyPart.setHeader("Content-ID", "<image>");

        	// add the image to the multipart
        	multipart.addBodyPart(messageBodyPart);

        	// put everything together
        	
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(senderEmail));
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(senderEmail));
            message.setSubject(subject);
            message.setText(msg);
            message.setContent(multipart, "text/html;charset=UTF-8");
            Transport.send(message);
            
            response.setCharacterEncoding("UTF-8");
    	    response.getWriter().write("Email sent successfully!");
        } catch (MessagingException e) {
        	response.setCharacterEncoding("UTF-8");
    	    response.getWriter().write("Email sent successfully!");
            throw new ServletException("Error sending email", e);
        }
        
	   
	}

}
