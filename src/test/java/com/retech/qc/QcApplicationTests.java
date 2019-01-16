package com.retech.qc;

import org.junit.Test;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;

public class QcApplicationTests {

    @Test
    public void test() {
        /**
         * 书写方法:  e -> System.out.println( e )
         * 三部分构成:
         *         参数列表
         *         符号 ->
         *         函数体 : 有多个语句,可以用{} 包括, 如果需要返回值且只有一个语句,可以省略 return
         */
        int x = 100;
        List<Integer> list = Arrays.asList(1, 3, 5, 7, 9);
        list.forEach(y -> {
            System.out.println("xxx");
            System.out.println(y * x);
        });
    }

    //Consumer<T> : 消费型接口
    @Test
    public void test1() {
        happy(50000.0, (money) -> System.out.println("我们彤哥喜欢大保健，每次消费" + money + "元"));
    }

    public void happy(Double money, Consumer<Double> consumer) {
        consumer.accept(money);
    }

    //Supplier<T> : 供给型接口
    @Test
    public void test2() {
        List<Integer> list = supply(10, () -> (int) (Math.random() * 100));
        list.forEach(System.out::println);
    }

    public List<Integer> supply(Integer num, Supplier<Integer> supplier) {
        List<Integer> resultList = new ArrayList<>();
        for (int x = 0; x < num; x++)
            resultList.add(supplier.get());
        return resultList;
    }

    //Function<T, R> : 函数型接口
    @Test
    public void test3() {
        String string = handleStr("   我大软院威武！！！   ", (str) -> str.trim());
        System.out.println(string);
        String string2 = handleStr("我大软院威武", str -> str.substring(2, 6));
        System.out.println(string2);
    }

    public String handleStr(String target, Function<String, String> fun) {
        return fun.apply(target);
    }


    //Predicate<T> : 断言型接口
    @Test
    public void test4() {
        List<String> list = Arrays.asList("atguigu", "mldn", "bjpowernode", "itcast", "sxt");
        List<String> newList = filterStr(list, string -> string.length() > 3);
        newList.stream().forEach(System.out::println);
    }

    public List<String> filterStr(List<String> list, Predicate<String> predicate) {
        List<String> resultList = new ArrayList<>();
        int size = list.size();
        for (int x = 0; x < size; x++) {
            String string = list.get(x);
            if (predicate.test(string))
                resultList.add(string);
        }
        return resultList;
    }

    @Test
    //自定义函数式接口
    public void test5(){
        //JDK1.8 before
       new MyLambda() {
           @Override
           public void test(String aaa) {
                System.out.println(aaa+"===test===");
           }
       }.test("优秀");
       //lambda表达式
       myLambdafunction("优秀",(bbb)->System.out.println(bbb+"---test---"));
    }

    public static void myLambdafunction(String aaa,MyLambda myLambda){
        myLambda.test(aaa);
    }


}
