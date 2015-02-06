package org.serene.latte.service;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import org.serene.latte.dto.ImageFile;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service("imageService")
public class ImageServiceImpl implements ImageService{

	private Map imageFilesMap;
	
	public ImageServiceImpl() {
		imageFilesMap = new HashMap();
	}
	
	public ImageFile get(String imageId) {
		return (ImageFile) imageFilesMap.get(imageId);
	}
	
	public ImageFile save(MultipartFile multipartFile, String userId) {
		
		//파일이름 랜덤으로 만들기
		String genId = userId + "_" + UUID.randomUUID().toString();
		ImageFile imageFile = null;
		
		try {
			//파일이름만들기
			String savedFileName = saveToFile(multipartFile, genId);
			
			imageFile = new ImageFile(genId, multipartFile.getContentType(), (int)multipartFile.getSize(), savedFileName);
			imageFilesMap.put(genId, imageFile);
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return imageFile;
	}
	
	public String saveToFile(MultipartFile src, String genId) throws IOException {

		//원래이름
		String fileName = src.getOriginalFilename();
		//사이즈
		byte[] bytes = src.getBytes();
		//저장할 이름 = 넘어온 랜덤 string + 원래 파일 확장자
		String saveFileName = genId + "." + getExtension(fileName);
		//경로 = static경로 + 파일이름
		String savePath = ImageFile.IMAGE_DIR + saveFileName;
		
		BufferedOutputStream bos = new BufferedOutputStream(new FileOutputStream(savePath));
		bos.write(bytes);
		bos.flush();
		bos.close();
		
		return saveFileName;
	}

	public String getExtension(String fileName) {
		int dotPosition = fileName.lastIndexOf('.');
		
		if (-1 != dotPosition && fileName.length() -1 > dotPosition) {
			return fileName.substring(dotPosition+1);
		} else {
			return "";
		}
	}
}
