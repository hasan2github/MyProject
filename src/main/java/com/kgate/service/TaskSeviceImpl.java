package com.kgate.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.config.Task;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.kgate.dao.TaskDao;
import com.kgate.model.TaskDetails;

@Service
@Transactional
public class TaskSeviceImpl implements TaskService {

    @Autowired
    private TaskDao taskdao;

    @Override
    public void addTask(TaskDetails task) {
        taskdao.addTask(task);

    }

    @Override
    public List<TaskDetails> getAllTask() {
        return taskdao.getAllTask();
    }

    //return employee name from manager email
    @Override
    @Transactional
    public List<String> getEmployeeEmail(String email) {
        return taskdao.getEmployeeEmail(email);
    }

}