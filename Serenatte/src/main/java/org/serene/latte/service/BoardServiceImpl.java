package org.serene.latte.service;

import java.util.List;

import org.serene.latte.dao.BoardMapper;
import org.serene.latte.dto.BoardDTO;
import org.serene.latte.dto.CmtDTO;
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
	public BoardDTO viewContent(int listNum) {
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
		return boardMapper.viewContent(boardDTO.getlistNum());
	}

	@Override
	public void registCmt(CmtDTO cmtDTO) {
		boardMapper.registCmt(cmtDTO);
	}

	@Override
	public List<CmtDTO> cmtList(CmtDTO cmtDTO) {
		return boardMapper.cmtList(cmtDTO);
	}

}
