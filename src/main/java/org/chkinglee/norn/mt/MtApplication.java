package org.chkinglee.norn.mt;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan(basePackages = "org.chkinglee.norn.mt.mapper")
public class MtApplication {

    public static void main(String[] args) {
        SpringApplication.run(MtApplication.class, args);
    }

}
