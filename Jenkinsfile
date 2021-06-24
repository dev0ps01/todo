pipeline {

  agent any

    stages {
      stage (' download dependices') {
        sh '''
          npm install
        '''
      }
      stage ('prepare artifact') {
        steps {

           sh '''

              zip -r  ../todo.zip *
           '''
        }
      }
      stage ('upload artifact') {
        steps {
          sh '''
           curl -f -v -u admin:vamsi --upload-file frontend.zip http://172.31.9.137:8081/repository/todo1/todo.zip

          '''
        }
      }
    }
 }
