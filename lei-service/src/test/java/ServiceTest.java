import com.lunatic.batis_model.SysUser;
import com.lunatic.service.SystemService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath*:spring/applicationContext.xml")
public class ServiceTest {
    Logger logger = LoggerFactory.getLogger(ServiceTest.class);

    @Autowired
    SystemService systemService;

    @Test
    public void testAddUser(){
        SysUser sysUser = new SysUser();
        sysUser.setUsername("hll");
        sysUser.setPassword("123456");

        int i = systemService.addSystemUser(sysUser);
        logger.info("插入数据结果为:"+i);
    }




}
