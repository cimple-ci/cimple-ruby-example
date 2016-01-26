cimple {
  version = "0.0.1"
}

name = "Cimple Ruby Example"
description = "Example using Cimple with Ruby"

env {
  PATH = "{{index .HostEnvVar \"PATH\"}}"
}

task test {
  command bundle {
    command = "bundle"
    args = ["install"]
  }

  script test {
    body = "rake"
  }
}