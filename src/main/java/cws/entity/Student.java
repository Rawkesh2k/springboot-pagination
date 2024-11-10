package cws.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;

@Entity
@Data
@Table(name = "pagesForStudents")
public class Student {

    @Id
    private Long rollNumber;
    private String name;
    private String email;


}

