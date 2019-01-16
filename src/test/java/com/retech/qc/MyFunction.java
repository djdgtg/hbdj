package com.retech.qc;

@FunctionalInterface
public interface MyFunction<T, R> {

    /**
     * 传入T，返回R
     * @param t1
     * @param t2
     * @return R
     */
    R handler(T t1, T t2);

}
