module Puppet::Parser::Functions
  newfunction(:consul_servicenames, :type => :rvalue, :doc => <<-EOS
Parse consul server output and generate array of services suppied by node
    EOS
  ) do |args|

    data = args[0]

    members = []
    if data.is_a?(Array)
      data['Services'].each { |service| 
        members << "#{service[1]['Service']}"
      }
      return members
    else
      return members
    end

  end
end
