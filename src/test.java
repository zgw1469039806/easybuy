import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class test {
    public static void main(String[] args) {

        ApplicationContext applicationContext=new ClassPathXmlApplicationContext("applicationContext.xml");

        for (String name:applicationContext.getBeanDefinitionNames()){
            System.out.println("name = [" + name + "]");
        }
    }
}
