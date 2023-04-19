package com.Dao;

import com.Entities.Task;

import java.time.LocalDateTime;
import java.util.Date;
import java.util.List;

public interface TaskDao {

    public void createTask(int task_id,  String title , String description , String status , String dueDate );

    public void updateTask(int task_id,  String title , String description , String status , String dueDate );

    public List<Task> getAllTask();

    public int chackIdExist(int task_id);

    public void deleteTask(int task_id);

    public List<Task> getListByFilter();
}