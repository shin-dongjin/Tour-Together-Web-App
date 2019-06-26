package com.cndy.tt.file;

import java.io.IOException;
import java.net.InetAddress;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Controller
public class FileController {
	private static final String UPLOADIMG = "/uploadimgs/diary/";
	private static final String BOARDIMG = "/uploadimgs/board/";
	private static final String PROFILEIMG = "/uploadimgs/profile/";
	
	@Autowired
	private ServletContext servletContext;
	
	@Resource(name="photoService")
	private PhotoService photoService;
	
	@ResponseBody
	@RequestMapping(value="diary/fileUpload.do", method=RequestMethod.POST)
	public String fileUpload(MultipartHttpServletRequest multipartRequest) throws IOException{
		String webappRoot = servletContext.getRealPath("/");
		System.out.println("FileController webappRoot: "+ webappRoot); 
		
		String filePath = webappRoot + UPLOADIMG;
		
		Map<String, String> fileNames = new HandlerFile(multipartRequest, filePath).getUploadFileName();
		System.out.println("FileController fileName: "+fileNames.toString());
		
		String localIP = InetAddress.getLocalHost().getHostAddress();
		String url = "http://"+ localIP + ":"+ multipartRequest.getServerPort()
						+ "/tour_together" + UPLOADIMG + fileNames.get("saveFileName");
		System.out.println("FileController url: "+url);
		
		return url;
	}
	
	@ResponseBody
	@RequestMapping(value="board/ImgUpload.do", method=RequestMethod.POST)
	public String board_fileUpload(MultipartHttpServletRequest multipartRequest) throws IOException{
		String webappRoot = servletContext.getRealPath("/");
		System.out.println("FileController webappRoot: "+ webappRoot); 
		
		String filePath = webappRoot + BOARDIMG;
		
		System.out.println("ImgUpload filePath : "+filePath);
		
		Map<String, String> fileNames = new HandlerFile(multipartRequest, filePath).getUploadFileName();
		System.out.println("FileController fileName: "+fileNames.toString());
		
		String localIP = InetAddress.getLocalHost().getHostAddress();
		String url = "http://"+ localIP + ":"+ multipartRequest.getServerPort()
						+ "/tour_together" + BOARDIMG + fileNames.get("saveFileName");
		System.out.println("FileController url: "+url);
		
		return url;
	}
	
	@ResponseBody
	@RequestMapping(value="login/proUpload.do", method=RequestMethod.POST)
	public String board_profileUpload(MultipartHttpServletRequest multipartRequest) throws IOException{
		String webappRoot = servletContext.getRealPath("/");
		System.out.println("FileController webappRoot: "+ webappRoot); 
		//C:\leedaeho\WEB\sts-bundle\sts-3.9.4.RELEASE\workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\TourTogether\
		
		String filePath = webappRoot + PROFILEIMG;
		System.out.println("ImgUpload filePath : "+filePath);
		//C:\leedaeho\WEB\sts-bundle\sts-3.9.4.RELEASE\workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\TourTogether\/uploadimgs/profile/
		
		Map<String, String> fileNames = new HandlerFile(multipartRequest, filePath).getUploadFileName();
		String save_name = fileNames.get("saveFileName");
		System.out.println("FileController fileName: "+save_name);
		
		//String localIP = InetAddress.getLocalHost().getHostAddress();//10.10.10.176로 db에 저장 -> 해당 ip에서만 회원가입한 아이디만 불러옴
		String localIP = "localhost";//
		String url = "http://"+ localIP + ":"+ multipartRequest.getServerPort()
						+ "/tour_together" + PROFILEIMG + fileNames.get("saveFileName");
		System.out.println("FileController url: "+url);

		String email = (String)multipartRequest.getParameter("email");
		
		Photo photo = new Photo(email, url);
		photoService.insertService(photo);
		
		return url;
	}
}