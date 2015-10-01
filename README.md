# AWS-Datapipeline-Task-Runner
===
Provide a simple way to install & deploy AWS datapipeline task runner in AWS EC2 via Puppet.

## Installation guide
* Install Puppet first
  * ```rpm -i http://yum.puppetlabs.com/puppetlabs-release-pc1-el-6.noarch.rpm```
  * ```yum -y install puppet```
* Copy this repo into puppet production folder
  * <pre>git clone https://github.com/sp52005/AWS-Datapipeline-Task-Runner.git /etc/puppetlabs/code/environments/production/</pre>
* Setting task runner parameter in /etc/puppetlabs/code/environments/production/modules/aws_task_runner/manifests/params.pp
  * pipeline_region: the region of data pipeline.
  * endpoint: the endpoint url of data pipeline, e.g. https://datapipeline.ap-northeast-1.amazonaws.com.
  * s3_log_uri: the log s3 path of pipeline task runner.
  * worker_group: what worker group setting in data pipeline.
* puppet apply
  * <pre>/opt/puppetlabs/bin/puppet apply /etc/puppetlabs/code/environments/production/manifests/aws_data_pipeline.pp</pre>
* done
