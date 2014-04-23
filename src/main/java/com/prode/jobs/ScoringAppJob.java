package com.prode.jobs;

import org.springframework.context.support.ClassPathXmlApplicationContext;


public class ScoringAppJob {

	public static void main(String[] args) throws Exception {  
//		new ClassPathXmlApplicationContext("spring-quartz.xml");

//		JobDetail job = JobBuilder.newJob(ScoringJob.class)
//				.withIdentity("dummyJobName", "group1").build();

		// Trigger the job to run on the next round minute
//		Trigger trigger = TriggerBuilder
//				.newTrigger()
//				.withIdentity("dummyTriggerName", "group1")
//				.withSchedule(
//						SimpleScheduleBuilder.simpleSchedule()
//						.withIntervalInSeconds(5).repeatForever())
//						.build();

		// schedule it
//		Scheduler scheduler = new StdSchedulerFactory().getScheduler();
//		scheduler.start();
//		scheduler.scheduleJob(job, trigger);
	}  

}
