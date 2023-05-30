package com.multi.travel;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class SpotDAO {
	
	@Autowired
	SqlSessionTemplate my;
	
	// one
	public SpotVO one(String place) {
		
		SpotVO bag = my.selectOne("spot.one", place);
		return bag;
	}
	
	// list
	public List<SpotVO> list_busan() {
		
		List<SpotVO> list = my.selectList("spot.all_busan");
		return list;
	}
	public List<SpotVO> list_busan1() {
		
		List<SpotVO> list = my.selectList("spot.all_busan1");
		return list;
	}
	public List<SpotVO> list_busan2() {
		
		List<SpotVO> list = my.selectList("spot.all_busan2");
		return list;
	}
	public List<SpotVO> list_busan3() {
		
		List<SpotVO> list = my.selectList("spot.all_busan3");
		return list;
	}
	public List<SpotVO> list_busan4() {
		
		List<SpotVO> list = my.selectList("spot.all_busan4");
		return list;
	}
	public List<SpotVO> list_busan5() {
		
		List<SpotVO> list = my.selectList("spot.all_busan5");
		return list;
	}
	public List<SpotVO> list_busan6() {
		
		List<SpotVO> list = my.selectList("spot.all_busan6");
		return list;
	}
	public List<SpotVO> list_busan7() {
		
		List<SpotVO> list = my.selectList("spot.all_busan7");
		return list;
	}
	public List<SpotVO> list_busan8() {
		
		List<SpotVO> list = my.selectList("spot.all_busan8");
		return list;
	}
	public List<SpotVO> list_busan9() {
		
		List<SpotVO> list = my.selectList("spot.all_busan9");
		return list;
	}
	public List<SpotVO> list_busan10() {
		
		List<SpotVO> list = my.selectList("spot.all_busan10");
		return list;
	}
	public List<SpotVO> list_busan11() {
		
		List<SpotVO> list = my.selectList("spot.all_busan11");
		return list;
	}
	public List<SpotVO> list_busan12() {
		
		List<SpotVO> list = my.selectList("spot.all_busan12");
		return list;
	}
	public List<SpotVO> list_busan13() {
		
		List<SpotVO> list = my.selectList("spot.all_busan13");
		return list;
	}
	public List<SpotVO> list_busan14() {
		
		List<SpotVO> list = my.selectList("spot.all_busan14");
		return list;
	}
	public List<SpotVO> list_busan15() {
		
		List<SpotVO> list = my.selectList("spot.all_busan15");
		return list;
	}
	public List<SpotVO> list_busan16() {
		
		List<SpotVO> list = my.selectList("spot.all_busan16");
		return list;
	}
	
}
