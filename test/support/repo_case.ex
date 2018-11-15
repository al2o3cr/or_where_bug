defmodule OrWhereBug.RepoCase do
  use ExUnit.CaseTemplate

  using do
    quote do
      alias OrWhereBug.Repo

      import Ecto
      import Ecto.Query
      import OrWhereBug.RepoCase
    end
  end

  setup tags do
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(OrWhereBug.Repo)

    unless tags[:async] do
      Ecto.Adapters.SQL.Sandbox.mode(OrWhereBug.Repo, {:shared, self()})
    end

    :ok
  end
end
