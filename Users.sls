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
