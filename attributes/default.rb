#
# Cookbook:: iis_urlrewrite
# Attributes:: default
# Author:: Julian C. Dunn (<jdunn@getchef.com>)
# Copyright:: 2014-2017, Chef Software, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

if platform_family?('windows')
  default['iis_urlrewrite']['version'] = '2.0'

  case node['iis_urlrewrite']['version']
  when '2.1'
    if node['kernel']['machine'] == 'x86_64'
      default['iis_urlrewrite']['url'] = 'http://download.microsoft.com/download/D/D/E/DDE57C26-C62C-4C59-A1BB-31D58B36ADA2/rewrite_amd64_en-US.msi'
      default['iis_urlrewrite']['checksum'] = '7b327108055c4b5ba9445e3b1afcc4dc5edd373baa83ebe6dcb0b1ce57ee3fc2'
    else
      default['iis_urlrewrite']['url'] = 'http://download.microsoft.com/download/6/8/F/68F82751-0644-49CD-934C-B52DF91765D1/rewrite_x86_en-US.msi'
      default['iis_urlrewrite']['checksum'] = 'ea1c4f3d40de399b471a9e1c09924aab7e0665663605e623fdcabcada681f7bc'
    end
  else
    if node['kernel']['machine'] == 'x86_64'
      default['iis_urlrewrite']['url'] = 'http://download.microsoft.com/download/C/9/E/C9E8180D-4E51-40A6-A9BF-776990D8BCA9/rewrite_amd64.msi'
      default['iis_urlrewrite']['checksum'] = '64f99f1f8521b735cafc64af14344ffc075b3b0d7cd4bd0d0826db5f8c45f4ea'
    else
      default['iis_urlrewrite']['url'] = 'http://download.microsoft.com/download/5/4/9/54980B19-9C64-4E8E-A69C-615A88DFF8B7/rewrite_x86.msi'
      default['iis_urlrewrite']['checksum'] = 'e120f29a61474e9b6c828ad69065895587b5d72afd3d0847bfa70d34c49c9dfa'
    end
  end
end
