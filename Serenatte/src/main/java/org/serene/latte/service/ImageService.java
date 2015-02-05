package org.serene.latte.service;

import java.io.IOException;

import org.serene.latte.dto.ImageFile;
import org.springframework.web.multipart.MultipartFile;

public interface ImageService {
	
	public ImageFile get(String id);
	
	public ImageFile save(MultipartFile multipartFile);
	
	public String saveToFile(MultipartFile src, String id) throws IOException;

	public String getExtension(String fileName);
}
