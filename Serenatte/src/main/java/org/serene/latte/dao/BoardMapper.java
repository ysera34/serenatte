package org.serene.latte.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.serene.latte.dto.BoardDTO;

public interface BoardMapper {

	public List<BoardDTO> boardList();

	public void addContents(@Param("title") String title, @Param("content") String content,
			@Param("userId") String userId);

	public BoardDTO viewContent(@Param("listNum") String listNum);

}
