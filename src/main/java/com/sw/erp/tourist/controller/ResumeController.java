package com.sw.erp.tourist.controller;

import com.sw.erp.backstage.manage.model.Message;
import com.sw.erp.backstage.manage.model.RecruitResume;
import com.sw.erp.tourist.model.Resume;
import com.sw.erp.tourist.model.Tourist;
import com.sw.erp.tourist.service.ITouristService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
public class ResumeController {
    @Autowired
    private ITouristService touristService;



    @RequestMapping("/resumePage")
    public String resumePage(HttpServletRequest request, HttpServletResponse response)throws Exception{
        return "tourist/resume";
    }

    @RequestMapping("/addResumePage")
    public String addResumePage(HttpServletRequest request, HttpServletResponse response)throws Exception{
        return "tourist/addResume";
    }

    /**
     * 新增简历
     * @param request
     * @param resume
     * @param response
     * @throws Exception
     */
    @RequestMapping("/addResume")
    public void addResume(HttpServletRequest request, @RequestBody Resume resume, HttpServletResponse response)throws Exception{
        Tourist tourist = (Tourist) request.getSession().getAttribute("tourist");
        if (tourist!=null){
            resume.setTouristId(tourist.getTouristId());
            touristService.addResume(resume);
            response.getWriter().print(200);
        }else {
            response.getWriter().print(202);
        }
    }

    /**
     * 请求简历数据
     * @param request
     * @param response
     * @throws Exception
     */
    @RequestMapping("/resumeData")
    public void resumeData(HttpServletRequest request, HttpServletResponse response)throws Exception{
        Tourist tourist = (Tourist) request.getSession().getAttribute("tourist");
        Resume resume = new Resume();
        resume.setTouristId(tourist.getTouristId());
        List<Resume> resumeList = touristService.getResumesByTouristId(resume);
        if (resumeList!= null){
            response.getWriter().print(200);
            request.getSession().setAttribute("resumeList",resumeList);
        }else {
            response.getWriter().print(202);
        }
    }

    /**
     * 删除简历
     * @param request
     * @param response
     * @throws Exception
     */
    @RequestMapping("/deleteResume")
    public void deleteResume(HttpServletRequest request, HttpServletResponse response)throws Exception {
        Resume resume = new Resume();
        int id = Integer.parseInt(request.getParameter("id"));
        resume.setId(id);
        touristService.deleteResume(resume);
        response.sendRedirect("resumePage");
    }

    /**
     * 根据简历id获取简历  跳转编辑界面
     * @param request
     * @param response
     * @throws Exception
     */

    @RequestMapping("/selectResume")
    public String selectResume(HttpServletRequest request, HttpServletResponse response)throws Exception {
       int id  = Integer.parseInt(request.getParameter("id")) ;
       Resume resume = new Resume();
       resume.setId(id);
       Resume newResume = touristService.getResumesById(resume);
       request.getSession().setAttribute("resumeId",newResume);
       return "tourist/editResume";
    }

    /**
     * 简历编辑
     * @param request
     * @param resume
     * @param response
     * @throws Exception
     */
    @RequestMapping("/editResume")
    public void editResume(HttpServletRequest request,@RequestBody Resume resume, HttpServletResponse response)throws Exception {
            touristService.editResume(resume);
            response.getWriter().print(200);
    }

    /**
     * 选择简历
     * @param request
     * @param response
     * @throws Exception
     */
    @RequestMapping("/selectResumePage")
    public String selectResumePage(HttpServletRequest request,HttpServletResponse response)throws Exception {
            Tourist tourist = (Tourist) request.getSession().getAttribute("tourist");
        if (tourist == null){
          return "tourist/login";
        }
        RecruitResume addRecruitResume = new RecruitResume();
        int recruitId = Integer.parseInt(request.getParameter("id"));
        addRecruitResume.setRecruitId(recruitId);
        request.getSession().setAttribute("addRecruitResume",addRecruitResume);
        return "tourist/selectResume";
    }

    @RequestMapping("/handInResume")
    public void handInResume(HttpServletRequest request,HttpServletResponse response)throws Exception {
        int resumeId = Integer.parseInt(request.getParameter("resumeId"));
        RecruitResume recruitResume = (RecruitResume) request.getSession().getAttribute("addRecruitResume");
        recruitResume.setResumeId(resumeId);
        touristService.addRecruitResume(recruitResume);
        Message message = new Message();
        message.setStatu(1);
        message.setTouristId(0);
        message.setUserId(1);
        message.setFlag(1);
        touristService.addMessage(message);
        response.getWriter().print(200);
    }

}
