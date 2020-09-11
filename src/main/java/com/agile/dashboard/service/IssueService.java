package com.agile.dashboard.service;
import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.agile.dashboard.model.Issue;
import com.agile.dashboard.repository.IssueRepository;

@Service
@Transactional
public class IssueService {
	
	
	private final IssueRepository issueRepository;
	public IssueService(IssueRepository issueRepository)
	{
		this.issueRepository=issueRepository;
		
	}
	public void saveMyIssue(Issue issue)
	{
	   issueRepository.save(issue);
	}
	public List<Issue> showAllIssues(){
		List<Issue> issues = new ArrayList<Issue>();
		for(Issue issue : issueRepository.findAll()) {
			issues.add(issue);
		}
		
		return issues;
	}

}
