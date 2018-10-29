manage_top_sls:
  file.managed:
    - name: /srv/pillar/top.sls
    - makedirs: True
    - user: root
    - group: root
    - mode: 644
    - contents: |
        base:
          '*':
            - users

manage_users_sls:
  file.managed:
    - name: /srv/pillar/users.sls
    - makedirs: True
    - user: root
    - group: root
    - mode: 644
    - contents: |
        users:
          - name: 'manoj' # required
            ssh_auth: 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDbCuvdPP0ZKe7PPgUF1FBO3nFSE2E5hN4VVLvgCVyHLbmt4pn8E+4l+OCCsi65S7/5roirVuUxZfhjDwl1gaKCB/pfRpgjMM2pPZWkqGEDiHHLd7KbGFEfkLmVgYV2neQW3c1xIk3iGrNZyxR5kMZR0pTuABLLJqRb4wNNUhCgyy80oUSXy41Gn8WAQJLy91d/yfeBDi04/lbE3kr7jBUMGRABWv+LshwkD6QPXAKD2mHeBJUW15V1fkiL/GwNaAk+QAeIC0+n7oSbgDSJwYZTSZgIBkXBfBsWnZhf3uGxIXHSzm8IcRMaZGtrWWalEGeZgXoAWExZWJ6x2osp/Ywj manoj@ManojMBP2018.local'
          - name: 'vidyadhar' # required
            ssh_auth: 'AAAAB3NzaC1yc2EAAAADAQABAAABAQD2JW9iVN++yvuf3iYJN1t+bZkWEgDfrSXuZzEPMFLNZQg+OdsCxMkExZC8lprOoIPgoCrG4aKIv0D49thFDnHe6AocHRQFjIyUFHBSQMfekH1CaVaGsWiI0nk3WyQLakCyEEdYiosn98kf0WOBcAq921irkSgN728eFXEUY/jD/Oz+z6DU0+IJZKGkOHQRjya56zuUEICw/vckPcMxTWFnLDC0xenR6eYbJtINSOyKQSJk0sPzuw42x7/+LfXERzqudX/D7lnfySi5ARizkoji7TZCyBCaM2Tl3o3E0N6TwA2YaF2w+60qe+ybt8On1kvZEXkE+Kq04gzmqJPA7BiZ vidyadhar@Vidyadhars-mac.local' # optional
          - name: 'ajinkya' # required
            ssh_auth: 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDfFSGjRVQ5BOm0tFpj7ylsG4KV7fXvrWBq4tMdADO5vXHSpDVQC2duck/LtJw4+xsUSIBn8FfNAsmb/dwb8NovXPhdX4TbaM7i5BvMIMp81whi883FeKegMeMb1DsuNq5e21wEKhjaSCvygsorp2yRhzYhkFzuIcCfIr80LR/RPyKOtFzbcwz/zUr/ItJnHHr5mBnakwarFCbL864iOw2hcQzHKP1VmzMyGNu027VZwP/HffhaBRyi1ouCWdcWh5fzNMHS7VOew4zEVFrAYhIWahd+CGBdopyQ9+hngRQEyh/WXe6xaSMxCH8twahShhLOJQFy0aPspEFgIcRdr2AX ajinkya@Administrators-MacBook-Pro.local'
          - name: 'kdsh' # required
            ssh_auth: 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCdkHPk2I9Xgb4lZgSUEPtFvdGg0Bqs3HHRYyA5pgdisMoVeNfFfc1Gp6rPtXMOciz09UILcFJBRX+z6Y/1ayqQA9DCLedBSFn9muCsjHnD3d929pO7OVsFJRlaAy1UpjxXiTpkNmpHnGc+Il2/TzVniniYMUOr7vv4jbqrskOOkF9yrmf2J7j+tsMjFEr/vmX0to3MdULxQUiDFIx+4I2tNFM58rskbN+Vr9DxNWrMjKwU5Ph2eldO7gA5NrHP36p2Gcl7w03S+ImDVT1UbeNGKZimOJYvRFlcGJsOn5TPwJbBmNjUOUfIiqcKNazT5bEnpe0+uJ7V1M3YfKiEohkt sunshinemu@gmail.com'
          - name: 'mhl'
            ssh_auth: 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCyGdkb1Uo7pdMQGK4852KKBciIK6IJ3FyQB+DIekKYMpai4xtSwmWybv8BD5oALhInIDqP4O0TIvuNVXqnntIrp1t64t+1h6d305s6QirgqqSpg5hYQVBzVxksNzfrvqm7hcBP85dUM0eBrkwq5e2+RjZcSrts7xH1S1sZMxGBGq4fkeu12v0aEb6SOLNVRBSQgYNFq0+yfQMUKVpkZQPz+XRkFrJenxHt5Ew87OjbjPc7TnbppAtX2vNwZR16oviYDKrib2m9/CdKO/R8RpYIzxVFJZhK4Z3HOwn+dr4SQ0pDHablgPPi0/csASsdgrg/nt9RJonxE9C6yM6blhot'
          - name: 'jsh'
            ssh_auth: 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDBsHifsoma6c43zxSfpkDB9F56QJiW2oQM+9CkLgzCTwA4Y7d69QVQ3KhIt09O6K3eJcO42Pf7eLLaR0cXMrlqmxe05FpPbHAJfnDfwCIBLjNpyZ5QV1Crskk/wemlwMdcgSwhthXD/HcTTMszcS5iKM+lZyc6V8Jquf2sF2myp0VsvdzRdjCqRm5FmLSbBlw8RQXsCYBUfT2NJZoowh5BbJ/xwMntxhGg+WJpyAvqprZ12d17uRQJbJtI8JlXH6tQechhBNpM01MkOzqQdPXPjLSQktsBs+wt7P9pd6TJopwy7on6Jwo2a7+UH/s5MAMVA1l4Kv4wMYX8VfWK2RwF'
          - name: 'clw'
            ssh_auth: 'AAAAB3NzaC1yc2EAAAADAQABAAACAQDuERec/TOkyL9EXXhf0tx8glbgQlsZLAxg0Ye446hSQkbQT0koklXTpfnyviwxPf/l1ERxGbNVpJFnaQc6QqLGJd88VGwvYpGiOOkQ3s2vRNoBtxS1Xd/66Z6+xLFie600BdRXuenTbmlrrMEhGffKHEMKXkEQ7z8Ct+8lQmBoBr1mmrl2v4M+1yBfIOe/sQ/KK/i2gMxEDj23CNmm/2w9N1ahpF3i2GXJtdlrh7TRFybUFqUfHg1VEtG0n1uuhnDMaNKNGtU4EtcG36AlwrsCfAyKlxwf9k8BB7HH16lq9E8qjkj+utI84xGVm5yfcIDP8jvoFzDksBa54RK7yHbDuJFrBYAr0xgj6p4Jf0YI5fWVFfdDNJaqUStE8BtLkk4jHCitYXXNS8EOLcP0hUrkiu9iycIemsoQ+tP8U3c5+VbR7K++8qqN5vgQriD5yCtxZdHmexTza5FGScYtWYLCiVEnoLuR8AyVmFA4Tmoyr5AHASA2xK36Ayq/oMTUSPA6oGjAPDEpy0HnwCvm3G8+Hig+z9f8clTXpNBhy71G9aAtrL/WxTQs4y+mpi1c54AYsfSvkYhxzMz9UGHSVJEQZK0Ls5oIh5DSUNcQ8awqOiRbLPrvj7lbHlbnj7GsRz6GVNI7oWmdKBeoiWHbqOy4iGbzMPJtNT7q1TEAoOwQ3Q== a@b.com'
          - name: 'etl'
            ssh_auth: 'AAAAB3NzaC1yc2EAAAADAQABAAACAQC3rVHMTSVgLi2pq+Cg/soIc/wwom32ef5yFNk8+IQO57OmTfm6AxcF6IFvuT7rTdc13TMQMGAbxuIV8e6kegYRLqlyaL4Rqk9vMuhsn8qa22L+5efstWqRYtucau+PeDvv4mZ+uQcgHbL4CJkAhtv0znKTmpXxUeyhO04y6gcBXAMvKlxBtAdfgFLiUlXODOMuu3lzMjUBrXncydbpA8LUg/aWtkU3atiph/G8sroXmsixxbD0VstiyyOcq3/ciZ4v6KcN4XcEhFxI1H0w5KxrO17Xy6F715YDNb3YOOt4fnr/rP8PITsU4lI83fh6arYwCLiqo5prPwFr8adQn+ioFXhMKi90OCeE6OtlGleWPEpJMhbx646inD7nHzLi0JR2qKCKIE6wLnHNFKqYcfT2rGCBjscULfHtZC7pP3LtW+kU/rMWVRLIRwAUZQEyaO3nX2v04pS7l8GvZlCwnWT7Bp3OtX58EYJv5KsZvZCIbEj1FtVS3fweT0xXXfBjYXawhaIBZdsC1j/CYcExSyidWaqWVV1si+0O05ZOgpkLyJdlbQuF5+PQuGYeFt9AID1T+adnPkLEI5/h11KuG16nq0Qfd15sl7IzZvWuN/cQMNWP1OiIX8zphTCG2M3LTM7qwCXZs/mtpKgKaRPcC49o8OKjOGw1Li97FmSsC9XwfQ== etl@digitalmaelstrom.net'
