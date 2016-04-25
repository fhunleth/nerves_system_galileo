# NervesSystemGalileo

[![Build Status](https://travis-ci.org/nerves-project/nerves_system_galileo.png?branch=master)](https://travis-ci.org/nerves-project/nerves_system_galileo)

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add nerves_system_galileo to your list of dependencies in `mix.exs`:

        def deps do
          [{:nerves_system_galileo, "~> 0.4.0"}]
        end

  2. Ensure nerves_system_galileo is started before your application:

        def application do
          [applications: [:nerves_system_galileo]]
        end
