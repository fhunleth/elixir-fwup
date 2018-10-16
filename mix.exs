defmodule ExFwup.MixProject do
  use Mix.Project

  def project do
    [
      app: :ex_fwup,
      version: "0.1.0",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      elixirc_paths: elixirc_paths(Mix.env()),
      package: package(),
      description: description(),
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, "~> 0.19", only: :docs}
    ]
  end

  defp elixirc_paths(:test), do: ["lib", "test/support"]

  defp elixirc_paths(_), do: ["lib"]

  defp description do
    "Simple Elixir wrapper around FWUP."
  end

  defp package do
    [
      maintainers: ["Connor Rigby"],
      licenses: ["Apache-2.0"],
      links: %{"GitHub" => "https://github.com/ConnorRigby/ex_fwup"}
    ]
  end
end
