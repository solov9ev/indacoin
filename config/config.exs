# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

# This configuration is loaded before any dependency and is restricted
# to this project. If another project depends on this project, this
# file won't be loaded nor affect the parent project. For this reason,
# if you want to provide default values for your application for
# 3rd-party users, it should be done in your "mix.exs" file.

# You can configure your application as:
#
#     config :indacoin, key: :value
#
# and access this configuration in your application as:
#
#     Application.get_env(:indacoin, :key)
#
# You can also configure a 3rd-party app:
#
#     config :logger, level: :info

if Mix.env() == :dev and File.exists?(Path.expand("config/dev.secret.exs")), do: import_config("dev.secret.exs")
if Mix.env() == :test, do: import_config("test.exs")
