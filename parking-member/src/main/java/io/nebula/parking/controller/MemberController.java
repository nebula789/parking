package io.nebula.parking.controller;

import io.nebula.parking.entity.Member;
import io.nebula.parking.service.IMemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * <p>
 * 会员信息 前端控制器
 * </p>
 *
 * @author parking
 * @since 2023-08-18
 */
@Controller
@RequestMapping("/member")
public class MemberController {

    @Autowired
    private IMemberService memberService;

    @GetMapping("/list")
    @ResponseBody
    List<Member> list() {
        return memberService.list();
    }
}
