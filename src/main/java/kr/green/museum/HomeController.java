package kr.green.museum;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kr.green.museum.service.AcademicService;
import kr.green.museum.service.BookingService;
import kr.green.museum.service.MemberService;
import kr.green.museum.service.RelicService;
import kr.green.museum.vo.AcademicVO;
import kr.green.museum.vo.BoardVO;
import kr.green.museum.vo.BookingVO;
import kr.green.museum.vo.MemberVO;
import kr.green.museum.vo.RelicVO;
import kr.green.muesum.utils.UploadFileUtils;
import kr.green.museum.HomeController;
import kr.green.museum.pagination.Criteria;


/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	@Autowired
	MemberService memberservice;
	@Autowired
	private JavaMailSender mailSender;
	@Autowired
	AcademicService academicservice;
	@Autowired
	RelicService relicservice;
	@Autowired
	BookingService bookingService;
	
	 
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView home(ModelAndView mv) {
		logger.info("메인페이지 실행");
		mv.setViewName("/main/home");
		return mv;
	}
	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public String signupGet(Model model, String uuid) {
		logger.info("회원가입페이지 실행");
		
		
		return "/main/signup";
	}
	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public String signupPost(MemberVO mvo) {
		logger.info("회원가입 진행중");
		//회원가입이 진행되어야함
		if(memberservice.signup(mvo))
			return "redirect:/";
		else
			return "redirect:/signup";
	}
	@RequestMapping(value="/signin", method=RequestMethod.GET)
	public ModelAndView signinGet(ModelAndView mv) {
		logger.info("로그페이지 실행");
		mv.setViewName("/main/signin");
		return mv;
	}
	@RequestMapping(value="/signin", method=RequestMethod.POST)
	public String signinPost(Model model, MemberVO mvo) {
		logger.info("로그인 진행중");
		System.out.println(mvo);
		MemberVO user = memberservice.signin(mvo);//출력했을 때 mvo의 정보가 출력되는지 확인
		if(user != null) { //멤버서비스의 사인인의 정보 mvo를 읽어서 로그인되는지 안되는지 확인
			model.addAttribute("user", user);
			return "redirect:/";
		}
		return "redirect:/signin";
	}
	@RequestMapping(value="/member/modify", method =RequestMethod.GET)
	public String membermodifyGet() {
		logger.info("회원정보수정페이지 실행");
			
		
		return "member/modify";
	}
	@RequestMapping(value="/member/modify", method =RequestMethod.POST)
	public String membermodifyPost(MemberVO modifyvo, String oldPw) {
		logger.info("회원정보수정 진행중");
		System.out.println(modifyvo);		
		if(memberservice.modify(modifyvo,oldPw)) {
			return "redirect:/";
		}
		return "redirect:/member/modify";
	}
	@RequestMapping(value="/signout")
	public String signout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.removeAttribute("user");
		return "redirect:/";
	}
	@RequestMapping(value ="/dup")
	@ResponseBody
	public Map<Object, Object> idcheck(@RequestBody String id){

	    Map<Object, Object> map = new HashMap<Object, Object>();
	    //변수 id에 저장된 아이디가 회원 아이디인지 아닌지 확인하여 ismember변수에
	    //담아 보낸다.
	    boolean isMember = memberservice.isMember(id);
	    map.put("isMember", isMember );
	    return map;
	}
	// mailSending 코드
		@RequestMapping(value = "/mail/mailSending")
		public String mailSending(HttpServletRequest request) {

		    String setfrom = "stajun@naver.com";//의미없는것         
		    String tomail  = request.getParameter("tomail");     // 받는 사람 이메일
		    String title   = request.getParameter("title");      // 제목
		    String content = request.getParameter("content");    // 내용

		    try {
		        MimeMessage message = mailSender.createMimeMessage();
		        MimeMessageHelper messageHelper 
		            = new MimeMessageHelper(message, true, "UTF-8");

		        messageHelper.setFrom(setfrom);  // 보내는사람 생략하거나 하면 정상작동을 안함
		        messageHelper.setTo(tomail);     // 받는사람 이메일
		        messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
		        messageHelper.setText(content);  // 메일 내용

		        mailSender.send(message);
		    } catch(Exception e){
		        System.out.println(e);
		    }

		    return "redirect:/mail/mailForm";
		}
		@RequestMapping(value = "/password/find")
		public String passwordFind() {

		    return "member/find";
		}
		@RequestMapping(value = "/checkemail")
		@ResponseBody
		public Map<Object, Object> emailcheck(@RequestBody String str){

		    Map<Object, Object> map = new HashMap<Object, Object>();
		   
		    String [] arr = new String [2];
		    arr = str.split("&");//문자 나누기
		    String id = arr[0];
		    String email = "";
		    try {
				email = URLDecoder.decode(arr[1],"UTF-8");
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		    id = memberservice.getVal(id);
		    email = memberservice.getVal(email);
		    
		   boolean isOk = memberservice.checkMember(id,email);
		   map.put("isOk",isOk);
		    
		    return map;
		}
		@RequestMapping(value = "/password/send")
		public String passwordsend(String id, String email) {
			//비밀번호 생성
			String newPw = memberservice.createPw();
			//생성된 비밀번호 DB에 저장
			memberservice.modify(id,email,newPw);
			//이메일 발송
			String title = "변경된 비밀번호 입니다.";
			String contents = "변경된 비밀번호입니다.\n"+newPw+"\n";
			memberservice.sendMail(email,title,contents);
		    return "send";
		}
		@RequestMapping(value= {"/test/home","/test/home.do"})
	    public ModelAndView openTilesView(ModelAndView mv) throws Exception{
	        mv.setViewName("/test/home");
	        mv.addObject("setHeader", "타일즈");
	        return mv;
	    }
		@RequestMapping(value="/guide/gu", method =RequestMethod.GET)
		public ModelAndView guGet(ModelAndView mv) {
			logger.info("관람시유의사항 페이지실행");
			mv.setViewName("/guide/gu");
			return mv;
			
		}
		@RequestMapping(value="/guide/gigi", method =RequestMethod.GET)
		public ModelAndView gigiGet(ModelAndView mv) {
			logger.info("안내페이지실행");
			mv.setViewName("/guide/gigi");
			return mv;
			
		}
		@RequestMapping(value="/guide/description", method =RequestMethod.GET)
		public ModelAndView descriptionGet(ModelAndView mv) {
			logger.info("전시해설페이지실행");
			mv.setViewName("/guide/description");
			return mv;
			
		}
		@RequestMapping(value="/guide/directions", method =RequestMethod.GET)
		public ModelAndView directionsGet(ModelAndView mv) {
			logger.info("전시해설페이지실행");
			mv.setViewName("/guide/directions");
			return mv;
			
		}
		@RequestMapping(value="/guide/map", method =RequestMethod.GET)
		public ModelAndView mapGet(ModelAndView mv) {
			logger.info("지도페이지");
			mv.setViewName("/guide/map");
			return mv;
			
		}
		@RequestMapping(value="/guide/introduction", method =RequestMethod.GET)
		public ModelAndView introductionGet(ModelAndView mv) {
			logger.info("박물관소개페이지실행");
			mv.setViewName("/guide/introduction");
			return mv;
			
		}
		@RequestMapping(value="/guide/facility", method =RequestMethod.GET)
		public ModelAndView facilityGet(ModelAndView mv) {
			logger.info("시설소개페이지");
			mv.setViewName("/guide/facility");
			return mv;
			
		}
		@RequestMapping(value="/exhibition/permanent", method =RequestMethod.GET)
		public ModelAndView permanentGet(ModelAndView mv) {
			logger.info("시설소개페이지");
			mv.setViewName("/exhibition/permanent");
			return mv;
			
		}
		@RequestMapping(value="/exhibition/special", method =RequestMethod.GET)
		public ModelAndView specialGet(ModelAndView mv) {
			logger.info("시설소개페이지");
			mv.setViewName("/exhibition/special");
			return mv;
			
		}
		@RequestMapping(value="/guide/reservation", method =RequestMethod.GET)
		public ModelAndView reservationGet(ModelAndView mv) {
			logger.info("시설소개페이지");
			mv.setViewName("/guide/reservation");
			return mv;
			
		}
		@RequestMapping(value="/guide/boo", method =RequestMethod.GET)
		public ModelAndView booGet(ModelAndView mv) {
			logger.info("시설소개페이지");
			mv.setViewName("/guide/boo");
			return mv;
			
		}
		@RequestMapping(value="/guide/boo", method =RequestMethod.POST)
		public ModelAndView booPost(ModelAndView mv,BookingVO bvo) {
			logger.info("시설소개페이지");
			System.out.println(bvo);
			bookingService.sure(bvo);
			int num = bookingService.getLastBook();
			mv.addObject("num",num);
			mv.setViewName("redirect:/guide/sure");
			return mv; 
			
		}
		
		@RequestMapping(value="/academic/science", method =RequestMethod.GET)
		public ModelAndView scienceGet(ModelAndView mv) {
			logger.info("시설소개페이지");
			mv.setViewName("/academic/science");
			return mv;
			
		}
		@RequestMapping(value="/relic/published", method =RequestMethod.GET)
		public ModelAndView relicpublishedGet(ModelAndView mv, Criteria cri) {
			logger.info("전시도록페이지");
			//academic테이블에서 페이지에 해당하는 도서 리스트를 가져옴
			String actype = "전시도록";
			ArrayList<AcademicVO> published = academicservice.getrelicPublished(cri,actype);
			mv.addObject("published",published);
			mv.setViewName("/relic/published");
			System.out.println(published);
			return mv;
			
		}
		@RequestMapping(value="/relic/display", method =RequestMethod.GET)
		public ModelAndView displayGet(ModelAndView mv, Criteria cri,Integer acnum)throws IOException, Exception {
			logger.info("전시도록 게시글 하나씩 보이게 설정");
			
			AcademicVO display = academicservice.getrelicdiplay( acnum);
			mv.setViewName("/relic/display");
			mv.addObject("board",display);
			System.out.println(display);
			return mv;
			
		}
		@RequestMapping(value="/relic/hao", method =RequestMethod.GET)
		public ModelAndView relichaoGet(ModelAndView mv, Criteria cri) {
			logger.info("전시도록페이지");
			//academic테이블에서 페이지에 해당하는 도서 리스트를 가져옴
			String actype = "전시도록";
			ArrayList<AcademicVO> hao = academicservice.getrelichao(cri,actype);
			mv.addObject("published",hao);
			mv.setViewName("/relic/hao");
			System.out.println(hao);
			return mv;
			
		}
		@RequestMapping(value="/relic/search", method =RequestMethod.GET)
		public ModelAndView searchGet(ModelAndView mv,Integer renum) {
			logger.info("유물 검색");
			ArrayList<RelicVO> search = relicservice.getrelicsearch();
			mv.setViewName("/relic/search");
			System.out.println(search);
			mv.addObject("relic",search);
			return mv;
			
		}
		@RequestMapping(value="/relic/number", method =RequestMethod.GET)
		public ModelAndView numberGet(ModelAndView mv, Criteria cri, Integer renum) {
			logger.info("유물 상세내용");
			
			RelicVO number = relicservice.getrelicnumber(renum);
			mv.addObject("search",number);
			System.out.println(number);
			mv.setViewName("/relic/number");
			return mv;
			
		}
		@RequestMapping(value="/guide/sure", method =RequestMethod.GET)
		public ModelAndView sureGet(ModelAndView mv, Integer num) {
			logger.info("시설소개페이지");
			BookingVO bvo = bookingService.getBooking(num);
			mv.addObject("booking",bvo);
			mv.setViewName("/guide/sure");
			return mv;
			
		}
		
		@RequestMapping(value="/guide/leng", method =RequestMethod.GET)
		public ModelAndView lengGet(ModelAndView mv) {
			logger.info("시설소개페이지");
			mv.setViewName("/guide/leng");
			return mv;
			
		}
		@RequestMapping(value="/guide/leng", method =RequestMethod.POST)
		public ModelAndView lengPost(ModelAndView mv,BookingVO bvo) {
			logger.info("시설소개페이지");
			System.out.println(bvo);
			bookingService.chi(bvo);
			String booid = bookingService.getbooid();
			mv.addObject("booid",booid);
			mv.setViewName("/guide/leng");
			mv.setViewName("redirect:/guide/chi");
			return mv;
			
		}
		
		@RequestMapping(value="/guide/chi", method =RequestMethod.GET)
		public ModelAndView chiGet(ModelAndView mv,BookingVO bvo) {
			ArrayList<BookingVO> list = bookingService.chi(bvo);
			mv.addObject("list",list);
			mv.setViewName("/guide/chi");
			System.out.println(list);
			return mv;
		}
		@RequestMapping(value="/guide/good", method =RequestMethod.GET)
		public ModelAndView goodGet(ModelAndView mv) {
			logger.info("시설소개페이지");
			mv.setViewName("/guide/good");
			return mv;
			
		}
		@RequestMapping(value="/education/look", method =RequestMethod.GET)
		public ModelAndView lookGet(ModelAndView mv) {
			logger.info("시설소개페이지");
			mv.setViewName("/education/look");
			return mv;
			
		}
}

