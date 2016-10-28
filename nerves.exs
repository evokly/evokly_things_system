use Mix.Config

version =
  Path.join(__DIR__, "VERSION")
  |> File.read!
  |> String.strip

config :nerves_system_evokly_thing, :nerves_env,
  type: :system,
  version: version,
  mirrors: [
    "https://github.com/evokly/nerves_system_evokly_thing/releases/download/v#{version}/nerves_system_evokly_thing-v#{version}.tar.gz"    
  build_platform: Nerves.System.Platforms.BR,
  build_config: [
    defconfig: "nerves_defconfig",
    package_files: [
      "rootfs-additions",
      "linux-4.4.defconfig",
      "fwup.conf",
      "cmdline.txt",
      "config.txt",
      "post-createfs.sh"
    ]
  ]
