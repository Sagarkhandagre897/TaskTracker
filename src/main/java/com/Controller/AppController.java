package com.Controller;

import java.util.ArrayList;
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


       List<Task> getUserTask = taskDao.getAllTask();

        List<Task> tasks = new ArrayList<>();
        for(Task task :  getUserTask){
            if(task.getUser_id() == user.getUser_id()){
                tasks.add(task);
            }
        }

       // Set Objects:
       getDashboardPage.addObject("userTasks", tasks);
        getDashboardPage.addObject("userName", user.getFirst_name());

        return getDashboardPage;
    }

    @GetMapping("/viewAllTask")
    public ModelAndView getViewAllTask(HttpSession session){
        // Set View:
        ModelAndView getViewPage = new ModelAndView("viewAllTask");
        User  user = (User)session.getAttribute("user");
         // get all task
        List<Task> tasks = taskDao.getAllTask();
        List<Task> tasksNew = new ArrayList<>();
        for(Task task : tasks){
            if(task.getUser_id() == user.getUser_id()){
                tasksNew.add(task);
            }
        }
        getViewPage.addObject("viewAllTask", tasksNew);

        return getViewPage;

    }



}
