package org.serene.latte.service;

import org.serene.latte.dao.BoardMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("boardService")
public class BoardServiceImpl implements BoardService {

	@Autowired
	BoardMapper boardMapper;

	@Override
	public void addContents(String title, String content) {
		boardMapper.addContents();
	}

}
