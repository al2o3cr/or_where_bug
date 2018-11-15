use Mix.Config

config :or_where_bug, OrWhereBug.Repo,
  username: "postgres",
  password: "",
  database: "or_where_bug_dev",
  hostname: "localhost",
  pool_size: 10
