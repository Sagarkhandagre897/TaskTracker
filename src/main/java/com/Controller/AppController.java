package com.Controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.Dao.TaskDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.Entities.Task;
import com.Entities.User;

@Controller
@RequestMapping("/app")
public class AppController {

    @Autowired
    private TaskDao taskDao;
	
	@GetMapping("/dashboard")
    public ModelAndView getDashboard(HttpSession session){
        ModelAndView getDashboardPage = new ModelAndView("dashboard");

        // Get the details of the logged i user:
       User  user = (User)session.getAttribute("user");

       // Get The task Of The Logged In User:
       List<Task> getUserTask = taskDao.getAllTask();

       // Set Objects:
       getDashboardPage.addObject("userTasks", getUserTask);
        getDashboardPage.addObject("userName", user.getFirst_name());

        return getDashboardPage;
    }

    @GetMapping("/viewAllTask")
    public ModelAndView getViewAllTask(){
        // Set View:
        ModelAndView getViewPage = new ModelAndView("viewAllTask");

         // get all task
        List<Task> tasks = taskDao.getAllTask();

        getViewPage.addObject("viewAllTask", tasks);

        return getViewPage;

    }



}
