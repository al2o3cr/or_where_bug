defmodule OrWhereBug.Repo do
  use Ecto.Repo,
    otp_app: :or_where_bug,
    adapter: Ecto.Adapters.Postgres
end
