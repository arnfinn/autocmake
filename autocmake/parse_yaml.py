def parse_yaml(stream, override={}):
    import yaml
    import sys
    from autocmake.interpolate import interpolate

    try:
        config = yaml.load(stream, yaml.SafeLoader)
    except yaml.YAMLError as exc:
        print(exc)
        sys.exit(-1)

    for k in config:
        if k in override:
            config[k] = override[k]

    config = interpolate(config, config)
    return config


def test_parse_yaml():
    text = """foo: bar
this: that
var: '%(foo)'"""

    assert parse_yaml(text) == {'foo': 'bar', 'this': 'that', 'var': 'bar'}
