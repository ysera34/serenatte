package org.serene.latte.pojo;

import java.io.BufferedInputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.serene.latte.dto.ImageFile;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.view.AbstractView;

@Component("imageView")
public class ImageView extends AbstractView {

	@Override
	protected void renderMergedOutputModel(Map model,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		ImageFile imageFile = (ImageFile)model.get("imageFile");
		
		response.setContentLength(imageFile.getContentLength());
		response.setContentType(imageFile.getContentType());
		byte[] bytes = readFile(imageFile.getFileName());
		write(response, bytes);
	}
	
	private byte[] readFile(String fileName) throws IOException {
		String path = ImageFile.IMAGE_DIR + fileName;
		
		BufferedInputStream bis = new BufferedInputStream(new FileInputStream(path));
		int length = bis.available();
		byte[] bytes = new byte[length];
		bis.read(bytes);
		bis.close();
		
		return bytes;
	}
	
	private void write(HttpServletResponse response, byte[] bytes) throws IOException {
		OutputStream output = response.getOutputStream();
		output.write(bytes);
		output.flush();
	}

}
