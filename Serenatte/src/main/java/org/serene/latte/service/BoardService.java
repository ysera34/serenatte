package org.serene.latte.service;

import java.util.List;

import org.serene.latte.dto.BoardDTO;
import org.serene.latte.dto.CmtDTO;

public interface BoardService {

	public List<BoardDTO> boardList(int startNum, int endNum);

	public void addContents(String title, String content, String userId);

	public BoardDTO viewContent(int listNum);

	public int makePage();

	public void deleteContent(int listNum);

	public BoardDTO editContent(BoardDTO boardDTO);

	public void registCmt(CmtDTO cmtDTO);

	public List<CmtDTO> cmtList(CmtDTO cmtDTO);

}
