import com.lunatic.batis_model.SysUser;
import com.lunatic.mybitis_dao.mapper.SysUserMapper;
import com.lunatic.service.SystemService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.Date;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath*:spring/applicationContext.xml")
public class ServiceTest {
    Logger logger = LoggerFactory.getLogger(ServiceTest.class);

    @Autowired
    SystemService systemService;


    @Test
    public void testAddUser(){
        for (int i = 1 ; i <= 100 ; i++){
            SysUser sysUser = new SysUser();
            sysUser.setUsername("h"+i);
            sysUser.setPassword(i+"");
            sysUser.setCreateTime(new Date());
            sysUser.setUpdateTime(new Date());

            systemService.addSystemUser(sysUser);
            logger.info("插入数据结果为:"+i);
        }
    }




}
