package com.retech.qc.aspect;

import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;


/**
 * @author qinc
 * @description
 * @date 2018/12/11
 */
@Target({java.lang.annotation.ElementType.PARAMETER, java.lang.annotation.ElementType.METHOD})
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface LogAnnotation {

    String logtype();

    String logdetail() default "";

    String creator() default "";

}
