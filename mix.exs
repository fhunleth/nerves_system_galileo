defmodule NervesSystemGalileo.Mixfile do
  use Mix.Project

  def project do
    [app: :nerves_system_galileo,
     version: "0.4.0-rc2",
     elixir: "~> 1.2",
     compilers: Mix.compilers ++ [:nerves_system],
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
   []
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
   [
     {:nerves_system, path: "../nerves_system"},
     {:nerves_system_br, path: "../nerves-system-br"},
     {:nerves_toolchain_i586_unknown_linux_gnu, github: "nerves-project/nerves_toolchain_i586_unknown_linux_gnu"}
   ]
  end
end
