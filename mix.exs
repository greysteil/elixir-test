defmodule DependabotTest.Mixfile do
  use Mix.Project

  def project do
    [
      app: :dependabot_test,
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  def application do
    [extra_applications: [:logger]]
  end

  defp deps do
    [
      {:phoenix, "~> 1.3"},
      {:money, "~> 1.2.1"},
      {:stripity_stripe, github: "code-corps/stripity_stripe", ref: "v2.0.0-alpha.11"}
    ]
  end
end
