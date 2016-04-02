use Mix.Config

config :nerves_system_galileo, :nerves_env,
  type:  :system,
  build_platform: :nerves_system_br,
  bakeware: [target: "galileo", recipe: "nerves/galileo"],
  ext: [
    defconfig: "nerves_defconfig"
  ]
