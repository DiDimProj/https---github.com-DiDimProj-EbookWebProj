package com.spring.ebook.book.ctrl;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.ebook.book.service.BookService;
import com.spring.ebook.model.book.vo.BookVO;
import com.spring.ebook.util.vo.SearchVO;

@Controller
@RequestMapping
public class BookCtrl {

	@Resource(name="bookService")
	private BookService serv ;
	
	@RequestMapping("/indexpage.do")
	public String list(Model model) {
		System.out.println("Ctrl index");
		ArrayList<BookVO> list = serv.list();
		model.addAttribute("lists", list) ;
		return "/indexpage";
	}

	@RequestMapping("/search.do")
	@ResponseBody
	public ArrayList<BookVO> search(SearchVO search) { 
		System.out.println("Ctrl search");
		System.out.println("type : "+search.getSearchType());
		System.out.println("keyword :"+search.getSearchKeyword());
		ArrayList<BookVO> list = serv.search(search);
		return list;
<<<<<<< HEAD
	} 
=======
	} */
	
>>>>>>> 2a43a3c3160204ea4712971f356ca5085464fa62
}
