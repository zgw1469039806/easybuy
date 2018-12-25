package com.bdqn.demo;

public class SingleModelLazy {
    //懒汉模式
    private static SingleModelLazy instance;
    //私有构造方法后，其它类中无法创建对象
    private SingleModelLazy(){
        System.out.println("------SingleModelLazy：创建了一个懒汉模式---------");
    }

    public synchronized static SingleModelLazy getInstance(){
        if(instance == null){
            instance = new SingleModelLazy();
        }
        return instance;
    }
}
