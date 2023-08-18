package io.nebula.parking;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan(basePackages = {"io.nebula.parking.mapper"})
public class ParkingMemberApplication {
    public static void main(String[] args) {
        SpringApplication.run(ParkingMemberApplication.class, args);
    }
}
