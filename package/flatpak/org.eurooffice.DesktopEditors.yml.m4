app-id: org.eurooffice.M4_DESKTOPEDITORS_EXEC
runtime: org.kde.Platform
runtime-version: '6.6'
sdk: org.kde.Sdk
command: M4_DESKTOPEDITORS_EXEC
finish-args:
  - --share=ipc
  - --socket=x11
  - --socket=wayland
  - --socket=pulseaudio
  - --share=network
  - --device=dri
  - --filesystem=host
modules:
  - name: desktopeditors
    buildsystem: simple
    build-commands:
      - cp -r opt /app/
      - cp -r usr/share /app/
      - mkdir -p /app/bin
      - ln -s /app/opt/M4_DESKTOPEDITORS_PREFIX/M4_DESKTOPEDITORS_EXEC /app/bin/M4_DESKTOPEDITORS_EXEC
    sources:
      - type: dir
        path: ../build/main
