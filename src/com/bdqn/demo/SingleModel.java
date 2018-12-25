package com.bdqn.demo;

public class SingleModel {

    private static SingleModel singleModel = new SingleModel();

    private SingleModel(){
        System.out.println("-------创建一个SingModel饿汉模式------");
    }

    public static SingleModel getSingleModel(){
        return singleModel;
    }

}
