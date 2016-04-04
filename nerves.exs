use Mix.Config

config :nerves_system_galileo, :nerves_env,
  type: :system,
  build_platform: Nerves.System.Platforms.BR,
  bakeware: [target: "galileo", recipe: "nerves/galileo"],
  ext: [
    defconfig: "nerves_defconfig"
  ]
