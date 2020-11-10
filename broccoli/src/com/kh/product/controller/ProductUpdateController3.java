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
 * Servlet implementation class ProductUpdateController3
 */
@WebServlet("/updateProductFinal.admin")
public class ProductUpdateController3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductUpdateController3() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		if(ServletFileUpload.isMultipartContent(request)) {
			
			int maxSize = 10*1024*1024;
			
			String savePath = request.getSession().getServletContext().getRealPath("/resources/product_upfiles/");
			
			
			MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8", new MyFileRenamePolicy());
			
			int pNo = Integer.parseInt(multiRequest.getParameter("pNo"));
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
			p.setPno(pNo);
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
				
				String key = "reUpfile"+i;
				
				if(multiRequest.getOriginalFileName(key) != null) {
					switch(key) {
					case "reUpfile1":p.setImg1(multiRequest.getFilesystemName(key)); break;
					case "reUpfile2":p.setImg2(multiRequest.getFilesystemName(key)); break;
					case "reUpfile3":p.setThumbnail(multiRequest.getFilesystemName(key)); break;
					}
				}
			}			
		
			int result = new ProductService().updateProduct(p);
			
			if(result>0) { // 성공 => 상세페이지로 이동
				
				request.getSession().setAttribute("alertMsg", "상품 수정 성공");
				
				response.sendRedirect(request.getContextPath() + "/productDetailResult.admin?pno=" +pNo);
				
			}else {
				request.setAttribute("errorMsg", "상품 수정 실패");
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
