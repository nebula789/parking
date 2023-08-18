package io.nebula.parking.service.impl;

import io.nebula.parking.entity.MonthCard;
import io.nebula.parking.mapper.MonthCardMapper;
import io.nebula.parking.service.IMonthCardService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 会员月卡信息 服务实现类
 * </p>
 *
 * @author parking
 * @since 2023-08-18
 */
@Service
public class MonthCardServiceImpl extends ServiceImpl<MonthCardMapper, MonthCard> implements IMonthCardService {

}
