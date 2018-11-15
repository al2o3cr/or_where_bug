use Mix.Config

config :or_where_bug, OrWhereBug.Repo,
  username: "postgres",
  password: "",
  database: "or_where_bug_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
