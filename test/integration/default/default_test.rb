# # encoding: utf-8

# Inspec test for recipe visualstudiocode::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

return unless os.windows?

describe file('C:\Program Files\Microsoft VS Code\Code.exe') do
  it { should exist }
end

describe registry_key({
  hive: 'HKEY_LOCAL_MACHINE',
  key: 'SOFTWARe\Microsoft\Windows\CurrentVersion\Uninstall'
  }).children.each { |key|
    if registry_key(key)['DisplayName'] =~ /Microsoft Visual Studio Code/
      describe registry_key(key) do
        its('DisplayName') { should match(/Microsoft Visual Studio Code/) }
      end
    end
  }


