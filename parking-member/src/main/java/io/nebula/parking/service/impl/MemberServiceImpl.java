package io.nebula.parking.service.impl;

import io.nebula.parking.entity.Member;
import io.nebula.parking.mapper.MemberMapper;
import io.nebula.parking.service.IMemberService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 会员信息 服务实现类
 * </p>
 *
 * @author parking
 * @since 2023-08-18
 */
@Service
public class MemberServiceImpl extends ServiceImpl<MemberMapper, Member> implements IMemberService {

}
