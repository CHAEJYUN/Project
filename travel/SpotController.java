package com.multi.travel;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SpotController {

	@Autowired
	SpotDAO dao;
	
	// one
	@RequestMapping("spot_one")
	public void one(String place, Model model) {
		SpotVO bag = dao.one(place);
		model.addAttribute("bag", bag);
	}
	
	// list
	@RequestMapping("spot_list_busan")
	public void list_busan(Model model) {
		List<SpotVO> list_busan = dao.list_busan();
		model.addAttribute("list", list_busan);
	}
	@RequestMapping("spot_list_busan1")
	public void list_busan1(Model model) {
		List<SpotVO> list_busan1 = dao.list_busan1();
		model.addAttribute("list", list_busan1);
	}
	@RequestMapping("spot_list_busan2")
	public void list_busan2(Model model) {
		List<SpotVO> list_busan2 = dao.list_busan2();
		model.addAttribute("list", list_busan2);
	}
	@RequestMapping("spot_list_busan3")
	public void list_busan3(Model model) {
		List<SpotVO> list_busan3 = dao.list_busan3();
		model.addAttribute("list", list_busan3);
	}
	@RequestMapping("spot_list_busan4")
	public void list_busan4(Model model) {
		List<SpotVO> list_busan4 = dao.list_busan4();
		model.addAttribute("list", list_busan4);
	}
	@RequestMapping("spot_list_busan5")
	public void list_busan5(Model model) {
		List<SpotVO> list_busan5 = dao.list_busan5();
		model.addAttribute("list", list_busan5);
	}
	@RequestMapping("spot_list_busan6")
	public void list_busan6(Model model) {
		List<SpotVO> list_busan6 = dao.list_busan6();
		model.addAttribute("list", list_busan6);
	}
	@RequestMapping("spot_list_busan7")
	public void list_busan7(Model model) {
		List<SpotVO> list_busan7 = dao.list_busan7();
		model.addAttribute("list", list_busan7);
	}
	@RequestMapping("spot_list_busan8")
	public void list_busan8(Model model) {
		List<SpotVO> list_busan8 = dao.list_busan8();
		model.addAttribute("list", list_busan8);
	}
	@RequestMapping("spot_list_busan9")
	public void list_busan9(Model model) {
		List<SpotVO> list_busan9 = dao.list_busan9();
		model.addAttribute("list", list_busan9);
	}
	@RequestMapping("spot_list_busan10")
	public void list_busan10(Model model) {
		List<SpotVO> list_busan10 = dao.list_busan10();
		model.addAttribute("list", list_busan10);
	}
	@RequestMapping("spot_list_busan11")
	public void list_busan11(Model model) {
		List<SpotVO> list_busan11 = dao.list_busan11();
		model.addAttribute("list", list_busan11);
	}
	@RequestMapping("spot_list_busan12")
	public void list_busan12(Model model) {
		List<SpotVO> list_busan12 = dao.list_busan12();
		model.addAttribute("list", list_busan12);
	}
	@RequestMapping("spot_list_busan13")
	public void list_busan13(Model model) {
		List<SpotVO> list_busan13 = dao.list_busan13();
		model.addAttribute("list", list_busan13);
	}
	@RequestMapping("spot_list_busan14")
	public void list_busan14(Model model) {
		List<SpotVO> list_busan14 = dao.list_busan14();
		model.addAttribute("list", list_busan14);
	}
	@RequestMapping("spot_list_busan15")
	public void list_busan15(Model model) {
		List<SpotVO> list_busan15 = dao.list_busan15();
		model.addAttribute("list", list_busan15);
	}
	@RequestMapping("spot_list_busan16")
	public void list_busan16(Model model) {
		List<SpotVO> list_busan16 = dao.list_busan16();
		model.addAttribute("list", list_busan16);
	}
	
}
