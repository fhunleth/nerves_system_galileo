use Mix.Config

version =
  Path.join(__DIR__, "VERSION")
  |> File.read!
  |> String.strip

config :nerves_system_galileo, :nerves_env,
  type: :system,
  version: version,
  mirrors: [
    "https://github.com/nerves-project/nerves_system_galileo/releases/download/v#{version}/nerves_system_galileo-v#{version}.tar.gz"],
  build_platform: Nerves.System.Platforms.BR,
  build_config: [
    defconfig: "nerves_defconfig"
  ]
