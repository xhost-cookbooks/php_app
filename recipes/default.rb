# Cookbook Name:: php_app
# Recipe:: default
#
# Copyright 2013, Chris Fordham
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# version control helpers
include_recipe "git"
include_recipe "subversion" unless node['php_app']['repository_url'].include? '.git'
include_recipe "php_app::php_mysql" if node['php_app']['db']['adapter'].include? 'mysql'
include_recipe "php_app::application"