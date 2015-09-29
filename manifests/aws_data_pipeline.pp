node "default" {
    package { "wget": ensure => installed } 
    include aws_task_runner    
}
