package org.serene.latte.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.serene.latte.dto.BoardDTO;
import org.serene.latte.dto.CmtDTO;

public interface BoardMapper {

	public List<BoardDTO> boardList(@Param("startNum") int startNum, @Param("endNum") int endNum);

	public void addContents(@Param("title") String title, @Param("content") String content,
			@Param("userId") String userId);

	public void viewCount(@Param("listNum") int listNum);

	public BoardDTO viewContent(@Param("listNum") int listNum);

	public int makePage();

	public void deleteContent(int listNum);

	public void editContent(BoardDTO boardDTO);

	public void registCmt(CmtDTO cmtDTO);
	
	public List<CmtDTO> cmtList(CmtDTO cmtDTO);

}
