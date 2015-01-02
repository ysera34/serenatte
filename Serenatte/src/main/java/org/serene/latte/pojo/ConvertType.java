package org.serene.latte.pojo;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;

import org.serene.latte.dto.BoardDTO;
import org.springframework.stereotype.Component;

@Component("convertType")
public class ConvertType {

	/*
	 * 작성일 형식 바꾸기
	 */
	public List<BoardDTO> convertDateType(List<BoardDTO> list) {
		for(BoardDTO boardDTO : list){
			boardDTO.setwriteDate(convertDate(boardDTO.getwriteDate()));
		}
		return list;
	}

	/*
	 * 가져와서 (2014-12-31 16:35:15.0)원본형식
	 * 현재시간을 체크해. 현재시간과 가져온시간이 24시간 이내 이면 시간만 보여주고
	 * 24시간 후면 날짜만 보여주면 되지.
	 */
	public String convertDate(String str) {
//		str = "2014-12-31 16:35:15.0";
		String[] arr = str.split(" ");  //공백 정규식으로 변경해야함
		arr[1] = arr[1].substring(0, 8);
		
		Calendar calendar = Calendar.getInstance();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String now = dateFormat.format(calendar.getTime());
		String[] nowArr = now.split(" ");
		
		if (arr[0].equals(nowArr[0])) {
			return arr[1].trim();
		} else {
			return arr[0].trim();
		}
	}
	
}
