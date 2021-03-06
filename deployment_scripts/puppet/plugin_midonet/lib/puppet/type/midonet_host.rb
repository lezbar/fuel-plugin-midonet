#    Copyright 2015 Mirantis, Inc.
#
#    Licensed under the Apache License, Version 2.0 (the "License"); you may
#    not use this file except in compliance with the License. You may obtain
#    a copy of the License at
#
#         http://www.apache.org/licenses/LICENSE-2.0
#
#    Unless required by applicable law or agreed to in writing, software
#    distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
#    WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
#    License for the specific language governing permissions and limitations
#    under the License.

Puppet::Type.newtype(:midonet_host) do

  ensurable

  newparam(:name, :namevar => true) do
    desc 'FQDN of midonet host'
  end

  newparam(:nodes) do
    desc 'Midonet nodes hash { fqdn => ip }'
  end

  newparam(:tunnel_zone) do
    desc 'Tunnel zone name'
  end
end
