package com.kh.mail;

import java.io.IOException;
import java.util.Properties;
import java.util.Random;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.member.model.service.MemberService;

/**
 * Servlet implementation class UserController
 */
@WebServlet("/approveNo.me")
public class SendEmail extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SendEmail() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				
		request.setCharacterEncoding("UTF-8");
		String memName = request.getParameter("memName");
		String memId = request.getParameter("memId");
		
		//String memPwd = request.getParameter("memPwd"); 	-->null
		
		String email = request.getParameter("email");
		System.out.println(memName + memId);
		//System.out.println(memPwd);						-->null
		
		//mail server 설정
		String host = "smtp.gmail.com";
		String admin = "broccolijava2@gmail.com";
		String adminPwd = "qmfhzhfflwkqk2";		//password(한글로) 브로콜리자바 
		
		//메일 받을 주소
		String toEmail = email;
		
		//SMTP 서버정보 설정
		Properties prop = new Properties();
		prop.put("mail.smtp.host", host);
		prop.put("mail.smtp.port", 465);
        prop.put("mail.smtp.auth", "true");
        prop.put("mail.smtp.socketFactory.port", "true");
        prop.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
        
        //인증번호 생성기
        StringBuffer temp = new StringBuffer();
        Random rnd = new Random();
        for(int i=0;i<10;i++) {
        	int rIndex = rnd.nextInt(3);
        	switch(rIndex) {
        	case 0:temp.append((char)((int)(rnd.nextInt(26)) + 97));break; 	//a-z
        	case 1:temp.append((char)((int)(rnd.nextInt(26)) + 65));break;	//A-Z
        	case 2:temp.append((rnd.nextInt(10)));break;					
        	}
        }
        String AuthenticationKey = temp.toString();
        
        System.out.println(AuthenticationKey);
        
        Session sess = Session.getDefaultInstance(prop, new javax.mail.Authenticator() {
        	protected PasswordAuthentication getPasswordAuthentication() {
        		return new PasswordAuthentication(admin, adminPwd);
        	}
        });
        
        //email 전송
        
        try {
        	
        	MimeMessage msg = new MimeMessage(sess);
			msg.setFrom(new InternetAddress(admin,"브로콜리팀"));
			msg.addRecipient(Message.RecipientType.TO, new InternetAddress(toEmail));
			
			//메일 제목
			msg.setSubject("안녕하세요.브로콜리 인증메일입니다.");
			msg.setText("인증번호는 : " + temp);
			
			Transport.send(msg);
			
			System.out.println("이메일전송완료");
			
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
        
        HttpSession saveKey = request.getSession();
        saveKey.setAttribute("AuthenticationKey", AuthenticationKey);
        //패스워드 바꿀때 뭘 바꿀지 조건에 들어가는 회원명 -- 빼고 먼저 진행 
        request.setAttribute("memId", memId);
        //request.setAttribute("memPwd", memPwd); 		--> null
        
        request.getRequestDispatcher("views/member/findPwdApproval.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
