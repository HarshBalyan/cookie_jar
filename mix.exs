defmodule CookieJar.Mixfile do
  use Mix.Project

  @version "1.0.5"

  def project do
    [
      app: :cookie_jar,
      version: @version,
      elixir: "~> 1.4",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      docs: docs(),
      package: package()
    ]
  end

  def application do
    [extra_applications: [:logger]]
  end

  defp deps do
    [
      {:httpoison, "~> 0.11 or ~> 1.0", optional: true},
      {:httpotion, "~> 3.0", optional: true},
      {:ex_doc, ">= 0.0.0", only: :dev}
    ]
  end

  defp package do
    [
      description: "CookieJar stores your cookies and applies them to future requests",
      licenses: ["MIT"],
      maintainers: ["Po Chen"],
      links: %{"GitHub" => "https://github.com/princemaple/cookie_jar"}
    ]
  end

  defp docs do
    [
      main: "CookieJar",
      source_ref: "v#{@version}",
      canonical: "http://hexdocs.pm/cookie_jar",
      source_url: "https://github.com/princemaple/cookie_jar"
    ]
  end
end
