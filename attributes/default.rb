default['visualstudiocode']['source'] = if node['kernel']['machine'] =~ /x86_64/
                                          'https://az764295.vo.msecnd.net/stable/51b0b28134d51361cf996d2f0a1c698247aeabd8/VSCodeSetup-x64-1.33.1.exe'
                                        else
                                          'https://az764295.vo.msecnd.net/stable/51b0b28134d51361cf996d2f0a1c698247aeabd8/VSCodeSetup-ia32-1.33.1.exe'
                                        end
