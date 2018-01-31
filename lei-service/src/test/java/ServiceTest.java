import com.lunatic.service.StudentService;
import com.lunatic.batis_model.Student;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath*:spring/applicationContext.xml")
public class ServiceTest {
    @Resource
    private StudentService studentService;

    @Test
    public void addTest() throws Exception {
        Student student = new Student(); // student.setId(new Integer("1"));
        student.setName("王同学");
        student.setSex(false);
        student.setAddress("北京");
        System.out.println(studentService.addStudent(student));
    }

    @Test
    public void deleteTest() throws Exception {
        System.out.println(studentService.deleteStudentById(1));
    }

    @Test
    public void updateTest() throws Exception {
        Student student = new Student();
        student.setId(new Integer("4"));
        student.setAddress("台湾");
        System.out.println(studentService.updateStudentById(student));
    }

    @Test
    public void select() throws Exception {
        Student student = new Student();
        student.setId(new Integer("1"));
        List<Student> list = studentService.findAllStudent(student);
        for (Student s : list) {
            System.out.println(s.toString());
        }
    }

    @Test
    public void selectAll() throws Exception {
        Student student = new Student();
        student.setId(new Integer("1"));
        List<Student> list = studentService.selectAllStudent(student);
        for (Student s : list) {
            System.out.println(s.toString());
        }
    }
}
