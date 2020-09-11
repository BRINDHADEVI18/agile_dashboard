package com.agile.dashboard.repository;

import org.springframework.data.repository.CrudRepository;

import com.agile.dashboard.model.Issue;

public interface IssueRepository extends CrudRepository<Issue, Integer> {

}
