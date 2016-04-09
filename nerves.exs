use Mix.Config

config :nerves_system_galileo, :nerves_env,
  type: :system,
  bakeware: [target: "galileo", recipe: "nerves/galileo"],
  build_platform: Nerves.System.Platforms.BR,
  build_config: [
    defconfig: "nerves_defconfig"
  ]
