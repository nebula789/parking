package io.nebula.parking.service.impl;

import io.nebula.parking.entity.Vehicle;
import io.nebula.parking.mapper.VehicleMapper;
import io.nebula.parking.service.IVehicleService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 会员车辆 服务实现类
 * </p>
 *
 * @author parking
 * @since 2023-08-18
 */
@Service
public class VehicleServiceImpl extends ServiceImpl<VehicleMapper, Vehicle> implements IVehicleService {

}
