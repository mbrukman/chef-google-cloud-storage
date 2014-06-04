# Copyright 2014 Google Inc. All Rights Reserved.
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

actions :create, :delete

attribute :access_key_id,                   :kind_of => String, :required => true
attribute :secret_access_key,               :kind_of => String, :required => true

attribute :bucket_name,                     :kind_of => String, :name_attribute => true

def initialize(*args)
  super
  @action = :create
end
