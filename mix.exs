defmodule NervesSystemGalileo.Mixfile do
  use Mix.Project

  @version Path.join(__DIR__, "VERSION")
    |> File.read!
    |> String.strip

  def project do
    [app: :nerves_system_galileo,
     version: @version,
     elixir: "~> 1.2",
     compilers: Mix.compilers ++ [:nerves_system],
     description: description,
     package: package,
     deps: deps]
  end

  def application do
   []
  end

  defp deps do
    [{:nerves_system, "~> 0.1.4"},
      #{:nerves_system_br, "~> 0.6.1"},
     {:nerves_system_br, github: "nerves-project/nerves_system_br", tag: "a21bd9c6b3a907b8cbfdbe43194bf5cd33312607"},
     {:nerves_toolchain_i586_unknown_linux_gnu, "~> 0.6.0"}]
  end

  defp description do
    """
    Nerves System - Intel Galileo Gen2 http://www.intel.com/content/www/us/en/embedded/products/galileo/galileo-overview.html
    """
  end

  defp package do
    [maintainers: ["Frank Hunleth", "Justin Schneck"],
     files: ["LICENSE", "mix.exs", "nerves_defconfig", "nerves.exs", "README.md", "VERSION", "rootfs-additions"],
     licenses: ["Apache 2.0"],
     links: %{"Github" => "https://github.com/nerves-project/nerves_system_galileo"}]
  end
end
