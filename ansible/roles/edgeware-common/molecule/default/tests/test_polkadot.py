def test_edgeware_user(host):
    user = host.user('edgeware')
    assert user.exists

    group = host.group('edgeware')
    assert group.exists

    assert user.gid == group.gid


def test_edgeware_binary(host):
    binary = host.file('/usr/local/bin/edgeware')
    assert binary.exists
    assert binary.user == 'edgeware'
    assert binary.group == 'edgeware'
    assert binary.mode == 0o700
