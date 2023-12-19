pipeline {
	agent any
	
	stages {
	    stage('Checkout') {
	        steps {
			checkout scm			       
		      }}
		stage('Build') {
	           steps {
			  sh '/home/nidhi/Documents/Devops_Software/apache-maven-3.9.3/bin/mvn install'
	                 }}
		stage('Deployment'){
		    steps {
			sh 'cp target/sonata.war /home/nidhi/Documents/Devops_Software/apache-tomcat-9.0.76/webapps'
			}}
			stage('Docker build'){
		    steps {
			sh 'docker build -t nidhikashyap18/image-jenkinspipeline .'
			}}
			stage('Container creation'){
		    steps {
			sh 'docker run -it -d --name=con-pipeline nidhikashyap18/image-jenkinspipeline /bin/bash'
			}}	
}}
