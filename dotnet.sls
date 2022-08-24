dotnet:
  '4.6.01590':
    full_name: 'Microsoft .NET Framework 4.6.2'
    installer: 'https://download.microsoft.com/download/D/5/C/D5C98AB0-35CC-45D9-9BA5-B18256BA2AE6/NDP462-KB3151802-Web.exe'
    install_flags: '/q /norestart'
    {% if grains['cpuarch'] == 'AMD64' %}
    uninstaller: 'C:\Windows\Microsoft.NET\Framework64\v4.0.30319\SetupCache\v4.6.01590\Setup.exe'
    uninstall_flags: '/uninstall /x86 /x64 /q /norestart'
    {% else %}
    uninstaller: 'C:\Windows\Microsoft.NET\Framework\v4.0.30319\SetupCache\v4.6.01590\Setup.exe'
    uninstall_flags: '/uninstall /x86 /q /norestart'
    {% endif %}
    msiexec: False
    locale: en_US
    reboot: False
  '4.6.01055':
    full_name: 'Microsoft .NET Framework 4.6.1'
    installer: 'https://download.microsoft.com/download/3/5/9/35980F81-60F4-4DE3-88FC-8F962B97253B/NDP461-KB3102438-Web.exe'
    install_flags: '/q /norestart'
    {% if grains['cpuarch'] == 'AMD64' %}
    uninstaller: 'C:\Windows\Microsoft.NET\Framework64\v4.0.30319\SetupCache\v4.6.01055\Setup.exe'
    uninstall_flags: '/uninstall /x86 /x64 /q /norestart'
    {% else %}
    uninstaller: 'C:\Windows\Microsoft.NET\Framework\v4.0.30319\SetupCache\v4.6.01055\Setup.exe'
    uninstall_flags: '/uninstall /x86 /q /norestart'
    {% endif %}
    msiexec: False
    locale: en_US
    reboot: False
  '4.6.00081':
    full_name: 'Microsoft .NET Framework 4.6'
    installer: 'https://download.microsoft.com/download/1/4/A/14A6C422-0D3C-4811-A31F-5EF91A83C368/NDP46-KB3045560-Web.exe'
    install_flags: '/q /norestart'
    {% if grains['cpuarch'] == 'AMD64' %}
    uninstaller: 'C:\Windows\Microsoft.NET\Framework64\v4.0.30319\SetupCache\v4.6.00081\Setup.exe'
    uninstall_flags: '/uninstall /x86 /x64 /q /norestart'
    {% else %}
    uninstaller: 'C:\Windows\Microsoft.NET\Framework\v4.0.30319\SetupCache\v4.6.00081\Setup.exe'
    uninstall_flags: '/uninstall /x86 /q /norestart'
    {% endif %}
    msiexec: False
    locale: en_US
    reboot: False
  '4.5.51209':
    full_name: 'Microsoft .NET Framework 4.5.2'
    installer: 'https://download.microsoft.com/download/B/4/1/B4119C11-0423-477B-80EE-7A474314B347/NDP452-KB2901954-Web.exe'
    install_flags: '/q /norestart'
    {% if grains['cpuarch'] == 'AMD64' %}
    uninstaller: 'C:\Windows\Microsoft.NET\Framework64\v4.0.30319\SetupCache\v4.5.51209\Setup.exe'
    uninstall_flags: '/uninstall /x86 /x64 /q /norestart'
    {% else %}
    uninstaller: 'C:\Windows\Microsoft.NET\Framework\v4.0.30319\SetupCache\v4.5.51209\Setup.exe'
    uninstall_flags: '/uninstall /x86 /q /norestart'
    {% endif %}
    msiexec: False
    locale: en_US
    reboot: False
