package org.serene.latte.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.serene.latte.dto.BoardDTO;

public interface BoardMapper {

	public List<BoardDTO> boardList(@Param("startNum") int startNum, @Param("endNum") int endNum);

	public void addContents(@Param("title") String title, @Param("content") String content,
			@Param("userId") String userId);

	public void viewCount(@Param("listNum")String listNum);

	public BoardDTO viewContent(@Param("listNum") String listNum);

	public int makePage();

}
