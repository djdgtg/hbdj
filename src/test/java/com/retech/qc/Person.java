package com.retech.qc;

import lombok.Data;

/**
 * @author qinc
 * @date 2018/12/21
 */
@Data
public class Person {
    private String name;
    private Integer age;

    public Person(String name, Integer age) {
        super();
        this.name = name;
        this.age = age;
    }

}
