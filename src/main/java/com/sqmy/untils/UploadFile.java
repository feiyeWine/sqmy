package com.sqmy.untils;

/**
 * Created by YR on 2016/4/19.
 */

import org.springframework.web.multipart.MultipartFile;

import java.io.*;
import java.util.Date;

public class UploadFile {
    /**
     * @return
     */
    public static String upload( MultipartFile uploadFile, String uploadFilePath) {

        try {
            String filename =TimeFormatUtil.nowTimeFormat(new Date())+"_"+ uploadFile.getOriginalFilename();
            InputStream is = uploadFile.getInputStream();
            // 如果服务器已经存在和上传文件同名的文件，则输出提示信息
            File tempFile = new File(uploadFilePath + filename);
            if (tempFile.exists()) {
                boolean delResult = tempFile.delete();
                System.out.println("删除已存在的文件：" + delResult);
            }
            // 开始保存文件到服务器
            if (!filename.equals("")) {
                FileOutputStream fos = new FileOutputStream(uploadFilePath + filename);
                byte[] buffer = new byte[8192]; // 每次读8K字节
                int count = 0;
                // 开始读取上传文件的字节，并将其输出到服务端的上传文件输出流中
                while ((count = is.read(buffer)) > 0) {
                    fos.write(buffer, 0, count); // 向服务端文件写入字节流
                }
                fos.close(); // 关闭FileOutputStream对象
                is.close(); // InputStream对象
                return filename;
            }
        } catch (FileNotFoundException e) {

            e.printStackTrace();
            return null;
        } catch (IOException e) {

            e.printStackTrace();
            return null;
        }
        return null;
    }
}