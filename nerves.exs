use Mix.Config

version =
  Path.join(__DIR__, "VERSION")
  |> File.read!
  |> String.strip

pkg = :nerves_system_galileo

config pkg, :nerves_env,
  type: :system,
  version: version,
  compiler: :nerves_package,
  artifact_url: [
    "https://github.com/nerves-project/#{pkg}/releases/download/v#{version}/#{pkg}-v#{version}.tar.gz",
  ],
  platform: Nerves.System.BR,
  platform_config: [
    defconfig: "nerves_defconfig",
  ],
  checksum: [
    "grub.cfg",
    "linux-3.8.config",
    "rootfs-additions",
    "fwup.conf",
    "nerves_defconfig",
    "nerves.exs",
    "post-build.sh",
    "post-createfs.sh",
    "VERSION"
  ]
