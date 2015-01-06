package org.serene.latte.pojo;

import org.serene.latte.dto.PageDTO;
import org.springframework.stereotype.Component;

@Component("makePage")
public class MakePage {

	public PageDTO makePaging(PageDTO pageDTO) {
		//default
//		if (pageDTO.getPageNo()==0)
//			pageDTO.setPageNo(1);
//		if (pageDTO.getPageSize()==0)
//			pageDTO.setPageSize(10);
		if (pageDTO.getTotalCount()==0)
			return pageDTO;
		
		int finalPage = (pageDTO.getTotalCount() + (pageDTO.getPageSize()-1)) 
				/ pageDTO.getPageSize();
		
		//마지막 페이지가 넘어가면 마지막 페이지로 고정
		if (pageDTO.getPageNo() > finalPage)
			pageDTO.setPageNo(finalPage);
		//페이지가 0보다 작거나 마지막 페이지를 넘어가면 기본값으로 설정
		if (pageDTO.getPageNo() < 0 || pageDTO.getPageNo() > finalPage)
			pageDTO.setPageNo(1);
		
		int startPage = ((pageDTO.getPageNo()-1)/10)*10+1;
		int endPage = startPage + 10 - 1;
		
		if(endPage>finalPage) {
			endPage = finalPage;
		}
		
		pageDTO.setFirstPageNo(1);
		pageDTO.setStartPageNo(startPage);
		pageDTO.setEndPageNo(endPage);
		
		boolean isNowFirst = pageDTO.getPageNo() ==1?true:false;
		boolean isNowFinal = pageDTO.getPageNo() ==finalPage?true:false;

		if(isNowFirst) {
			pageDTO.setPrevPageNo(1);
		} else {
			pageDTO.setPrevPageNo(((pageDTO.getPageNo()-1)<1?1:(pageDTO.getPageNo()-1)));
		}
		
		if(isNowFinal) {
			pageDTO.setNextPageNo(finalPage);
		} else {
			pageDTO.setNextPageNo(((pageDTO.getPageNo()+1)>finalPage?finalPage:(pageDTO.getPageNo()+1)));
		}
		
		pageDTO.setFinalPageNo(finalPage);
		
//		System.out.println(pageDTO);
		return pageDTO;
	}
}
