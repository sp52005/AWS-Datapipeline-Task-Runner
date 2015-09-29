# class "aws_task_runner" ensure installation of task runner

class aws_task_runner::install (
    $version         = $aws_task_runner::version,
    $task_runner_url = $aws_task_runner::task_runner_url,
    $pipeline_region = $aws_task_runner::pipeline_region,
) {
    file { "/opt/aws/task_runner":
        ensure  => "directory",
        mode    => "664",
    }
    ->
    # Get the task runner jar
    exec {"get_task_runner":
        command => "/usr/bin/wget \"${task_runner_url}/TaskRunner-${version}.jar\" -O /opt/aws/task_runner/TaskRunner-${version}.jar",
        creates => "/opt/aws/task_runner/TaskRunner-${version}.jar",
        require => Package["wget"],
    }  
    ->
    # set service of aws_task_runner
    file {"/etc/init.d/aws_task_runner":
        ensure => "file",
        mode => "755",
        content => template('aws_task_runner/aws_task_runner.service.erb'),
    }      
}