package org.serene.latte.service;

import java.util.List;

import org.serene.latte.dto.BoardDTO;

public interface BoardService {

	public List<BoardDTO> boardList(int startNum, int endNum);

	public void addContents(String title, String content, String userId);

	public BoardDTO viewContent(String listNum);

	public int makePage();

}
