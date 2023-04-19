package com.DaoImpls;

import com.Entities.Task;
import com.Dao.TaskDao;
import com.Entities.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;


import java.sql.Timestamp;
import java.text.DateFormat;
import java.util.List;
import java.util.UUID;

@Repository
public class TaskDaoIMpls implements TaskDao {


    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Override
    public void createTask( int task_id ,int user_id ,  String title, String description, String status, String dueDate) {

        String query = "CREATE TABLE IF NOT EXISTS tasks(task_id int NOT NULL PRIMARY KEY UNIQUE , user_id int NOT NULL ,  title VARCHAR(500) NOT NULL,description VARCHAR(500) NOT NULL,status VARCHAR(50) NOT NULL ,dueDate VARCHAR(50) NOT NULL,created_at TIMESTAMP DEFAULT NOW(),updated_at TIMESTAMP )";
        this.jdbcTemplate.update(query);



        this.jdbcTemplate.update("INSERT INTO tasks(task_id,user_id,title,description,status,dueDate) values(?,?,?,?,?,?)", new Object[] {task_id , user_id, title , description , status , dueDate} );

    }

    @Override
    public void updateTask(int task_id, String title, String description, String status, String dueDate) {


        this.jdbcTemplate.update("UPDATE tasks SET title=?,description=? ,status=?,dueDate=? WHERE task_id=?",new Object[] {title,description,status,dueDate,task_id});
        this.jdbcTemplate.update("update tasks set updated_at = CURRENT_TIMESTAMP where task_id=?",new Object[] {task_id});

    }

    @Override
    public List<Task> getAllTask() {


        String query = "CREATE TABLE IF NOT EXISTS tasks(task_id INT NOT NULL PRIMARY KEY UNIQUE  ,user_id int NOT NULL ,  title VARCHAR(500) NOT NULL,description VARCHAR(500) NOT NULL,status VARCHAR(50) NOT NULL ,dueDate VARCHAR(50) NOT NULL,created_at TIMESTAMP DEFAULT NOW(),updated_at TIMESTAMP )";
        this.jdbcTemplate.update(query);


        List<Task> tasks = this.jdbcTemplate.query("select * from tasks" , new BeanPropertyRowMapper<Task>(Task.class));

        return tasks;
    }

    @Override
    public int chackIdExist(int task_id) {

        String query1 = "CREATE TABLE IF NOT EXISTS tasks(task_id int NOT NULL PRIMARY KEY UNIQUE , user_id int NOT NULL , title VARCHAR(500) NOT NULL,description VARCHAR(500) NOT NULL,status VARCHAR(50) NOT NULL ,dueDate VARCHAR(50) NOT NULL,created_at TIMESTAMP DEFAULT NOW(),updated_at TIMESTAMP )";
        this.jdbcTemplate.update(query1);

        String query = "SELECT COUNT(*) FROM tasks WHERE task_id=?";

        int count = jdbcTemplate.queryForObject(query, new Object[] { task_id }, Integer.class);
        return count;

    }

    @Override
    public void deleteTask(int task_id) {

        this.jdbcTemplate.update("delete from tasks where task_id=?",task_id);

    }


    @Override
    public List<Task> getListByFilter() {


    return null;
    }
}
