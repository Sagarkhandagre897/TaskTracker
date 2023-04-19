package com.Controller;


import com.Dao.TaskDao;
import com.Entities.Task;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.Entities.User;

import javax.servlet.http.HttpSession;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

@Controller
@RequestMapping("/task")
public class TaskController  {

    @Autowired
     private TaskDao taskDao;

    @PostMapping("/create_Task")
    public String createTask(@RequestParam("task_id")int task_id,
                                @RequestParam("title")String title,
                                @RequestParam("description")String description,
                                @RequestParam("status")String status,
                                @RequestParam("dueDate") String dueDate,
                                RedirectAttributes redirectAttributes,
                                HttpSession session){

        int count = taskDao.chackIdExist(task_id);
        if(count > 0 ){
            redirectAttributes.addFlashAttribute("error", "There is  task available with this task id!");
            return "redirect:/app/dashboard";
        }


        // TODO: CHECK FOR EMPTY STRINGS:
        if(title.isEmpty() || description.isEmpty()){
            redirectAttributes.addFlashAttribute("error", "Task Title and Description Cannot be Empty!");
            return "redirect:/app/dashboard";
        }

        // TODO: GET LOGGED IN USER:
        User user = (User)session.getAttribute("user");

        // TODO: CREATE Task:
        taskDao.createTask(task_id , title , description , status , dueDate);

        // Set Success message:
        redirectAttributes.addFlashAttribute("success", "Task Created Successfully!");
        return "redirect:/app/dashboard";

    }

    @PostMapping("/update_Task")
    public String updateTask(@RequestParam("task_id")int task_id,
                             @RequestParam("title")String title,
                             @RequestParam("description")String description,
                             @RequestParam("status")String status,
                             @RequestParam("dueDate") String dueDate,
                             RedirectAttributes redirectAttributes,
                             HttpSession session){

        // TODO: CHECK FOR EMPTY STRINGS:
        if(title.isEmpty() || description.isEmpty() ){
            redirectAttributes.addFlashAttribute("error", "Task Title and Description Cannot be Empty!");
            return "redirect:/app/dashboard";
        }
        if(status.isEmpty() || dueDate.isEmpty()){
            redirectAttributes.addFlashAttribute("error", "Task Status and dueDate Cannot be Empty!");
            return "redirect:/app/dashboard";
        }

        int count = taskDao.chackIdExist(task_id);

        if(count == 0 ){
            redirectAttributes.addFlashAttribute("error", "There is no task available with this task id!");
            return "redirect:/app/dashboard";
        }

        // TODO: GET LOGGED IN USER:
        User user = (User)session.getAttribute("user");

        // TODO: update Task:
        taskDao.updateTask(task_id , title , description , status , dueDate);

        // Set Success message:
        redirectAttributes.addFlashAttribute("success", "Task updated Successfully , You can see in the list below !");
        return "redirect:/app/dashboard";

    }

    @PostMapping("/delete_Task")
    public String deleteTask(@RequestParam("task_id") int task_id,
                              RedirectAttributes redirectAttributes

    ){

        int count = taskDao.chackIdExist(task_id);

        if(count == 0 ){
            redirectAttributes.addFlashAttribute("error", "There is no task available with this task id!");
            return "redirect:/app/dashboard";
        }

       taskDao.deleteTask(task_id);

        redirectAttributes.addFlashAttribute("success", "Task deleted Successfully , You can see in the list below !");
        return "redirect:/app/dashboard";
    }


    @PostMapping("/sortTask_ByTitle")
    public ModelAndView sortByTitle(){
        // Set View:
        ModelAndView getViewPage = new ModelAndView("viewAllTask");

        // get all task
        List<Task> tasks = taskDao.getAllTask();

        Collections.sort(tasks, new Comparator<Task>() {
            @Override
            public int compare(Task t1, Task t2) {
                return t1.getTitle().compareTo(t2.getTitle());
            }
        });

        getViewPage.addObject("viewAllTask", tasks);

        return getViewPage;

    }

    @PostMapping("/sortTask_ByStatus")
    public ModelAndView sortByStatus(){
        // Set View:
        ModelAndView getViewPage = new ModelAndView("viewAllTask");

        // get all task
        List<Task> tasks = taskDao.getAllTask();

        Collections.sort(tasks, new Comparator<Task>() {
            @Override
            public int compare(Task t1, Task t2) {
                return t1.getStatus().compareTo(t2.getStatus());
            }
        });

        getViewPage.addObject("viewAllTask", tasks);

        return getViewPage;

    }

    @PostMapping("/sortBy_dueDate")
    public ModelAndView sortByDate(){
        // Set View:
        ModelAndView getViewPage = new ModelAndView("viewAllTask");

        // get all task
        List<Task> tasks = taskDao.getAllTask();

        Collections.sort(tasks, new Comparator<Task>() {
            @Override
            public int compare(Task t1, Task t2) {
                return t1.getDueDate().compareTo(t2.getDueDate());
            }
        });

        getViewPage.addObject("viewAllTask", tasks);

        return getViewPage;

    }



}


