package action.community;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import svc.community.MateModifyProService;
import vo.ActionForward;
import vo.MateDTO;

public class MateModifyProAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = null;
		
		// 파라미터 가져와서 변수에 저장
		MateDTO mate = new MateDTO();
		mate.setIdx(Integer.parseInt(request.getParameter("idx")));
		mate.setNickname(request.getParameter("nickname"));
		mate.setSubject(request.getParameter("subject"));
		mate.setContent(request.getParameter("content"));
		System.out.println(mate);
		
		// MateModifyProService - modifyMate() 메서드를 호출하여 삭제 요청
		// => 파라미터 : MateDTO 객체 리턴타입 : boolean(isDeleteSuccess)
		MateModifyProService service = new MateModifyProService();
		boolean isModifySuccess = service.modifyMate(mate);
		
		// 답글 등록 작업 요청 처리 결과 판별
		if(!isModifySuccess) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('글 수정 실패!')");
			out.println("history.back()");
			out.println("</script>");
		} else {
			forward = new ActionForward();
			forward.setPath("MateDetail.co?idx=" + Integer.parseInt(request.getParameter("idx")) + "&pageNum=" + request.getParameter("pageNum"));
			forward.setRedirect(true);
			
		}
		
		
		return forward;
	}

}
