package org.serene.latte.service;

import java.util.List;

import org.serene.latte.dto.BoardDTO;

public interface BoardService {

	//select test
	public BoardDTO boardSelect();

	public List<BoardDTO> boardList();

	public void addContents(String title, String content, String userId);

}
