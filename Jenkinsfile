#!groovy
properties([buildDiscarder(logRotator(artifactDaysToKeepStr: '', artifactNumToKeepStr: '', daysToKeepStr: '9', numToKeepStr: '8')), disableConcurrentBuilds(), pipelineTriggers([pollSCM('H/5 * * * *')])])                    
node{
    stage("git chekout"){
             checkout poll: true, scm: [$class: 'GitSCM',
                                        branches: [[name: 'master']],
                                        doGenerateSubmoduleConfigurations: false,
                                        extensions: [],
                                        submoduleCfg: [],
          userRemoteConfigs: [[url: 'https://github.com/Glad-Source/demo-project.git']]]
        
        sh """git show -s --pretty=%an"""
        
        
    }
    
      }
