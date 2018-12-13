package com.retech.qc;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;


/**
 * @author qinc
 * @description
 * @date 2018/12/11
 */

@SpringBootApplication
@MapperScan("com.retech.qc.mapper")
public class QcApplication extends SpringBootServletInitializer {

    public static void main(String[] args) {
        SpringApplication.run(QcApplication.class, args);
    }

    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
        return builder.sources(QcApplication.class);
    }
}
