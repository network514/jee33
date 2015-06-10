import java.util.Date;

public class boardBean {
	private String title; // 글제목
	private String writer; // 작성자
	private int hits; // 조회수
	private String category; // 분류
	private String comment; // 댓글
	private String content; // 내용
	private int page; // 페이지쪽수
	private int commentNo; // 댓글번호	
	private Date commentDate; // 댓글날짜
	private Date writingDate; // 작성일
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public int getHits() {
		return hits;
	}
	public void setHits(int hits) {
		this.hits = hits;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getCommentNo() {
		return commentNo;
	}
	public void setCommentNo(int commentNo) {
		this.commentNo = commentNo;
	}
	public Date getCommentDate() {
		return commentDate;
	}
	public void setCommentDate(Date commentDate) {
		this.commentDate = commentDate;
	}
	public Date getWritingDate() {
		return writingDate;
	}
	public void setWritingDate(Date writingDate) {
		this.writingDate = writingDate;
	}
	
}
