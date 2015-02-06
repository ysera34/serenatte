package org.serene.latte.service;

import org.serene.latte.dto.ImageFile;
import org.springframework.web.multipart.MultipartFile;

public interface ImageService {
	
	public ImageFile get(String imageId);
	
	public ImageFile save(MultipartFile multipartFile, String userId);
	
}
