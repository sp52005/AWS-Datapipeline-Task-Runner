# class "params" define the default parameters of task runner

class aws_task_runner::params {
    $version         = '1.0'
    $task_runner_url = 'https://s3.amazonaws.com/datapipeline-us-east-1/us-east-1/software/latest/TaskRunner'
    $endpoint        = 'https://datapipeline.ap-northeast-1.amazonaws.com'
    $pipeline_region = 'ap-northeast-1'
}
