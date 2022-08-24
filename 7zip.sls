# both 32-bit (x86) AND a 64-bit (AMD64) installer available
{% set versions = {'22':['01'],'19':['00']} %}
{% set source_path = 'https://d.7-zip.org/a/' %}

7zip:
{% for major, subversions in versions.items() %}
{% for minor in subversions %}
  '{{major}}.{{minor}}.00.0':
    {% if grains['cpuarch'] == 'AMD64' %}
    full_name: '7-Zip {{major}}.{{minor}} (x64 edition)'
    installer: '{{ source_path }}7z{{major}}{{minor}}-x64.msi'
    uninstaller: '{{ source_path }}7z{{major}}{{minor}}-x64.msi'
    arch: x64
    {% else %}
    full_name: '7-Zip {{major}}.{{minor}}'
    installer: '{{ source_path }}7z{{major}}{{minor}}.msi'
    uninstaller: '{{ source_path }}7z{{major}}{{minor}}.msi'
    arch: x86
    {% endif %}
    install_flags: '/qn /norestart'
    uninstall_flags: '/qn /norestart'
    msiexec: True
    locale: en_US
    reboot: False
{% endfor %}
{% endfor %}
#
#
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Below are versions of 7-zip that have had the installer assets removed from the web.
# An uninstall only definition will remain here so the packages will show up
# correctly in `pkg.list_pkgs` and to allow for removal using `pkg.remove`
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
{% set versions = [ '18':['06', '05', '03', '01'], '16':['04', '03', '02', '00']} %}
  {% for major, subversions in versions.items() %}
  {% for minor in subversions %}
    '{{major}}.{{minor}}.00.0':
      {% if grains['cpuarch'] == 'AMD64' %}
      full_name: '7-Zip {{major}}.{{minor}} (x64 edition)'
      installer: '{{ source_path }}7z{{major}}{{minor}}-x64.msi'
      uninstaller: '{{ source_path }}7z{{major}}{{minor}}-x64.msi'
      arch: x64
      {% else %}
      full_name: '7-Zip {{major}}.{{minor}}'
      installer: '{{ source_path }}7z{{major}}{{minor}}.msi'
      uninstaller: '{{ source_path }}7z{{major}}{{minor}}.msi'
      arch: x86
      {% endif %}
      install_flags: '/qn /norestart'
      uninstall_flags: '/qn /norestart'
      msiexec: True
      locale: en_US
      reboot: False
  {% endfor %}
  {% endfor %}
{% endfor %}
