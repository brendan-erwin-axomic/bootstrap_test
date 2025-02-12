{ pkgs, lib, config, inputs, ... }:

{
  # https://devenv.sh/packages/
  packages = [ 
    pkgs.podman
    pkgs.adrs
  ];

  # the `x_` in front is a little hack to make structurizr logs show by default.
  processes.x_open_browser.exec = "sleep 10s; open http://localhost:8080";
  processes.structurizr.exec = "podman machine start; podman run -it --rm -p 8080:8080 -v $DEVENV_ROOT:/usr/local/structurizr docker.io/structurizr/lite";

  # https://devenv.sh/tests/
  enterTest = ''
    echo "Running tests"
    podman --version
  '';
}
