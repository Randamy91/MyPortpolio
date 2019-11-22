package kr.co.semo.helper;
import lombok.Data;

/**
 * 업로드 된 파일의 정보를 저장하기 위한 JavaBeans
 * - 이 클래스의 객체가 업로드 된 파일의 수 만큼 생성되어 List 형태로 보관된다.
 */
@Data
public class UploadItem {
	private int item_num;		// 첨부파일 일련번호 
    private String fieldName;   // <input type="file">의 name속성
    private String orginName;   // 원본 파일 이름 originName
    private String file_dir; 	// 업로드 폴더 경로 
    private String filePath;    // 서버상의 파일 경로
    private String contentType; // 파일의 형식
    private long fileSize;      // 파일의 용량
    private String reg_date;    // 등록일시
    private String edit_date;   // 변경일시 
    private int maemul_num;      // 매물 번호
}
