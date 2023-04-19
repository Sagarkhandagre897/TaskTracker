package com.Entities;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.Date;

import org.springframework.boot.autoconfigure.domain.EntityScan;

import lombok.Data;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;


@Data
@EntityScan
public class Task {

	    private int task_id;
	    private String title;
	    private String description;
	    private String status;
	    private String dueDate;
	private LocalDateTime created_at;
	private LocalDateTime updated_at;
	
}
