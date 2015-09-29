# class "service" ensures that aws_task_runner is started

class aws_task_runner::service {
    service {"aws_task_runner":
        ensure => running,
        enable => true,
        subscribe => [Exec["get_task_runner"], File["/etc/init.d/aws_task_runner"]],
        require => [File["/etc/init.d/aws_task_runner"]],
    }
}
