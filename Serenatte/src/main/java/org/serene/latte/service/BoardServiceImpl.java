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

	@Override
	public List<BoardDTO> boardList(int startNum, int endNum) {
		return boardMapper.boardList(startNum, endNum);
	}
	
	@Override
	public BoardDTO viewContent(String listNum) {
		boardMapper.viewCount(listNum);
		return boardMapper.viewContent(listNum);
	}

	@Override
	public int makePage() {
		return boardMapper.makePage();
	}

	@Override
	public void deleteContent(int listNum) {
		boardMapper.deleteContent(listNum);
		
	}

	@Override
	public BoardDTO editContent(BoardDTO boardDTO) {
		boardMapper.editContent(boardDTO);
		String listNum = String.valueOf(boardDTO.getlistNum());
		return boardMapper.viewContent(listNum);
	}

	

}
