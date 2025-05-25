package com.tttn.webthitracnghiem.controller;

import com.tttn.webthitracnghiem.model.*;
import com.tttn.webthitracnghiem.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import javax.print.Doc;
import java.sql.Date;
import java.util.*;

@Controller
public class HomeController {
    @Autowired
    IQuizService qService;
    @Autowired
    IUserService userService;
    @Autowired
    ISubjectService subjectService;
    @Autowired
    IResultService rService;

   
    @Autowired
    IClassesService classesService;
    @Autowired
    IChapterService chapterService;

    @Autowired
    ILessonService lessonService;
    @Autowired
    ISubjectClassService subjectClassService;
    @GetMapping("/role")
    public String redirectRole() {
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        if (principal instanceof MyUserDetail) {
            MyUserDetail userDetail = (MyUserDetail) principal;
            for (GrantedAuthority role : userDetail.getAuthorities()) {
                if (role.getAuthority().equals("ROLE_ADMIN")) {
                    return "redirect:/user/list";
                }
                if (role.getAuthority().equals("ROLE_USER")) {
                    return "redirect:/";
                }
            }
        }
        return "redirect:/default";
    }

    @GetMapping("/login")
    public String showLogin(@RequestParam Optional<String> error, Model model) {
        if (error.isPresent()) {
            model.addAttribute("message", "Tài khoản hoặc mật khẩu không chính xác!");
        }
        return "login";
    }

    @GetMapping("/")
    public String show(Model model, @PageableDefault(value = 10) Pageable pageable) {
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        if (principal instanceof UserDetails) {
            String userName = ((UserDetails) principal).getUsername();
            model.addAttribute("userName", userName);
        }
        Page<Subject> subjects = subjectService.findAll(pageable);





        // Danh sách thành viên mới
        List<User> newUsers = userService.getNewMember();

        int total = userService.findByTotalUser();
        model.addAttribute("newUsers", newUsers);
        model.addAttribute("totalMember", userService.getTotalMember());

        model.addAttribute("subjects", subjects);
        return "default-page";
    }








    @GetMapping("/listClassSubject/{id}")
    public String listClassSubject(@PathVariable int id, Model model) {
        List<SubjectClasses> subjectClasses = subjectClassService.findBySubject(id);
        model.addAttribute("subjectClasses",subjectClasses);



        int total = userService.getTotalMember();
        List<User> newUsers = userService.getNewMember();
        model.addAttribute("totalMember", total);
        model.addAttribute("newUsers", newUsers);

        return "listClassSubject";
    }

    @GetMapping("/studyProgram/{classId}/{subjectId}")
    public String getProgram(@PathVariable("classId") Integer classId, @PathVariable("subjectId") Integer subjectId,
                             Model model) {
        List<Chapter> chapters = chapterService.findBySubjectAndClass(subjectId, classId);
        for (int i = 0; i < chapters.size(); i++) {
            Set<Lesson> lessons = chapters.get(i).getLessons();
            List<Lesson> lessons1 = new ArrayList<>(lessons);
            Collections.sort(lessons1);
            Set<Lesson> lessons2 = new LinkedHashSet<>(lessons1);
            chapters.get(i).setLessons(lessons2);
        }
        model.addAttribute("chapters", chapters);





        int total = userService.getTotalMember();
        List<User> newUsers = userService.getNewMember();
        model.addAttribute("totalMember", total);
        model.addAttribute("newUsers", newUsers);

        model.addAttribute("subject",subjectService.findById(subjectId));
        model.addAttribute("class",classesService.findById(classId));
        return "studyProgramSubject";
    }

    @GetMapping("/error")
    public String error() {
        return "error-page";
    }
}
