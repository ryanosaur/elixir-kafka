defmodule ElixirKaffeCodealong.MixProject do
  use Mix.Project

  def project do
    [
      app: :elixir_kaffe_codealong,
      version: "0.1.0",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      preferred_cli_env: [
        coveralls: :test,
        "coveralls.html": :test,
        "coveralls.json": :test
      ],
      test_coverage: [tool: ExCoveralls]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :kaffe],
      mod: {ElixirKaffeCodealong.Application, []}
      # now that we're using the Application module, this is where we'll tell it to start.
      # We use the keyword `mod` with applications that start a supervision tree,
      # which we configured when adding our Kaffe.Consumer to Application above.
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:kaffe, "~> 1.18"},
      {:excoveralls, "~> 0.13.4", only: :test}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end
end
