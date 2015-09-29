# class "aws_task_runner" initialize installation of all components needed to run task runner 

class aws_task_runner (
    $version         = $aws_task_runner::params::version,
    $task_runner_url    = $aws_task_runner::params::task_runner_url,
    $pipeline_region = $aws_task_runner::params::pipeline_region,
) inherits aws_task_runner::params {

  class { 'aws_task_runner::install': } 
  ->
  class { 'aws_task_runner::conf': } 
  ~>
  class { 'aws_task_runner::service': }

  Class['aws_task_runner::install'] 
  ~> 
  Class['aws_task_runner::service']
}
