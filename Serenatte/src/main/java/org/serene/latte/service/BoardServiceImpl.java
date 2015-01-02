package org.serene.latte.service;

import java.util.List;

import org.serene.latte.dao.BoardMapper;
import org.serene.latte.dto.BoardDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("boardService")
public class BoardServiceImpl implements BoardService {

	@Autowired
	BoardMapper boardMapper;

	@Override
	public void addContents(String title, String content, String userId) {
		boardMapper.addContents(title, content, userId);
	}

	//select test
	@Override
	public BoardDTO boardSelect() {
		return boardMapper.select();
	}

	@Override
	public List<BoardDTO> boardList() {
		return boardMapper.boardList();
	}

}
