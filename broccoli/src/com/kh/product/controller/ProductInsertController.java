package com.kh.product.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.kh.common.MyFileRenamePolicy;
import com.kh.product.model.service.ProductService;
import com.kh.product.model.vo.Product;
import com.oreilly.servlet.MultipartRequest;

/**
 * 관리자 상품등록 프로세스(DB에 저장후 리스트로 가기)
 * Servlet implementation class ProductInsertController
 */
@WebServlet("/insertProduct.admin")
public class ProductInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductInsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		// 폼 전송을 일반방식이 아닌 multipart/form-data로 전송할 경우 request로 값을 뽑을 수 없음
		// HttpServletRequest => MultipartRequest 변환한 후 그 후에 뽑을 수 있음

		// 우선 enctype이 multipart/form-data로 잘 전송되었을 경우 전반적인 내용들이 수행되게끔
		if(ServletFileUpload.isMultipartContent(request)) {
			
			// 요청시 전달된 파일을 업로드 (서버에 세팅해놓은 폴더에 저장) 처리
			// 1. 전달되는 파일을 업로드 처리할 때 필요한 작업내용(전달되는 파일의 용량제한, 전달되는 파일을 저장할 폴더 경로)
			// 1_1. 전송파일 용량 제한(int maxSize => byte단위로) : 10Mbyte로 제한
			int maxSize = 10*1024*1024;
			
			// 1_2. 전달되는 파일을 저장할 서버의 폴더 물리적인 경로 알아내기 (String savePath)
			String savePath = request.getSession().getServletContext().getRealPath("/resources/product_upfiles/");
			
			// 2. 전달되는 파일명 수정작업 및 서버에 업로드 작업
			/*
			 * 파일업로드를 위한 외부 라이브러리 : cos.jar 다운로드 (lib에 저장)
			 * cos에서 제공하는 DefaultFileRenamePolicy객체 사용해서 저장할 이름 수정
			 */
			
			MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8", new MyFileRenamePolicy());
			
			String category = multiRequest.getParameter("category");
			String eno = multiRequest.getParameter("eNo");
			String pName = multiRequest.getParameter("pName");
			int pPrice = Integer.parseInt(multiRequest.getParameter("pPrice"));
			int discount = Integer.parseInt(multiRequest.getParameter("discount"));
			int inventory = Integer.parseInt(multiRequest.getParameter("inventory"));
			String company = multiRequest.getParameter("company");
			String unit = multiRequest.getParameter("unit");
			String weight = multiRequest.getParameter("weight");
			String detail = multiRequest.getParameter("detail");
			String disYn = multiRequest.getParameter("disYn");
			String eYn = multiRequest.getParameter("eYn");
			String smallDetail = multiRequest.getParameter("smallDetail");
			String deli = multiRequest.getParameter("deli");
			String nation = multiRequest.getParameter("nation");
			String packtype = multiRequest.getParameter("packtype");
			

			Product p = new Product();
			p.setCategory(category);
			p.setEno(eno);
			p.setpName(pName);
			p.setPrice(pPrice);
			p.setDiscount(discount);
			p.setInventory(inventory);
			p.setCompany(company);
			p.setUnit(unit);
			p.setWeight(weight);
			p.setDetail(detail);
			p.setDisYn(disYn);
			p.seteYn(eYn);
			p.setSmallDetail(smallDetail);
			p.setDeli(deli);
			p.setNation(nation);
			p.setPacktype(packtype);
			
			for(int i=1; i<=3; i++) {
				
				String key = "file"+i;
				
				if(multiRequest.getOriginalFileName(key) != null) {
					switch(key) {
					case "file1":p.setImg1(multiRequest.getFilesystemName(key));
					case "file2":p.setImg2(multiRequest.getFilesystemName(key));
					case "file3":p.setThumbnail(multiRequest.getFilesystemName(key));
					}
				}
			}
			
			int result = new ProductService().insertProduct(p);
			
			if(result >0) {
				request.getSession().setAttribute("alertMsg", "상품 등록 성공!");
				response.sendRedirect(request.getContextPath()+ "/selectProduct.admin?currentPage=1");
			}else {
				
				request.setAttribute("errorMsg", "상품등록 실패!");
				request.getRequestDispatcher("views/common/adminErrorPage.jsp").forward(request, response);
			}
			
		}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
