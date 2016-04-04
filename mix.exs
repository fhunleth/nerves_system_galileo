defmodule NervesSystemGalileo.Mixfile do
  use Mix.Project

  def project do
    [app: :nerves_system_galileo,
     version: "0.4.0-rc2",
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
    [{:nerves_system, github: "nerves-project/nerves_system"},
     {:nerves_system_br, github: "nerves-project/nerves-system-br"},
     {:nerves_toolchain_i586_unknown_linux_gnu, github: "nerves-project/nerves_toolchain_i586_unknown_linux_gnu"}]
  end

  defp description do
    """
    Nerves System - Intel Galileo Gen2 http://www.intel.com/content/www/us/en/embedded/products/galileo/galileo-overview.html
    """
  end

  defp package do
    [maintainers: ["Frank Hunleth", "Justin Schneck"],
     licenses: ["Apache 2.0"],
     links: %{"Github" => "https://github.com/nerves-project/nerves_system_galileo"}]
  end
end
