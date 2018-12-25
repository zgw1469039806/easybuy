package com.bdqn.demo;


import com.bdqn.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Component;

@Component
public class demo {
    @Autowired
    private static UserMapper userMapper;

    public static void main(String[] args) {
//        User user = new User();
//        user.setLoginName("1");
//        user.setEmail("1");
//        user.setIdentityCode("1");
//        user.setMobile("1");
//        user.setPassword("1");
//        user.setSex(1);
//        user.setType(1);
//        int num =  userMapper.insUser(user);
//        System.out.println(num);
//
//        SingleModel singleModel1 = SingleModel.getSingleModel();
//        SingleModel singleModel2 = SingleModel.getSingleModel();
//        SingleModel singleModel3 = SingleModel.getSingleModel();
//
//        SingleModelLazy singleModelLazy = SingleModelLazy.getInstance();

        ApplicationContext a = new ClassPathXmlApplicationContext("applicationContext-springmvc.xml");

    }

   public void te(){
       System.out.println("211111");
   }
}
