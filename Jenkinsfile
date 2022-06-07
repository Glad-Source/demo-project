#!groovy
properties([buildDiscarder(logRotator(artifactDaysToKeepStr: '', artifactNumToKeepStr: '', daysToKeepStr: '9', numToKeepStr: '8')),disableConcurrentBuilds(),pipelineTriggers([pollSCM('*/5 * * * *')])])

def checkout_git_code(){
    checkout poll: true, scm: [$class: 'GitSCM', branches: [[name: "/master"]],
                               doGenerateSubmoduleConfigurations: false,
                               submodulecfg: [],
                               userRemoteConfigs: [[url: "https://github.com/Glad-Source/demo-project.git"]]]
}
                               
node{
    stage("git chekout"){
            checkout_git_code()  
    }
    
      }
