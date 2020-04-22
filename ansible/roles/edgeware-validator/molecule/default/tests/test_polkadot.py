def test_edgeware_service_file(host):
    if host.ansible.get_variables()['inventory_hostname'] == 'validator':
        svc = host.file('/etc/systemd/system/edgeware.service')
        assert svc.exists
        assert svc.user == 'root'
        assert svc.group == 'root'
        assert svc.mode == 0o600
        assert svc.contains('Restart=always')


def test_edgeware_running_and_enabled(host):
    if host.ansible.get_variables()['inventory_hostname'] == 'validator':
        edgeware = host.service("edgeware.service")
        assert edgeware.is_running
        # assert edgeware.is_enabled
