defmodule OrWhereBug.Post do
  use Ecto.Schema
  import Ecto.Query

  schema "posts" do
    field(:title, :string)
    field(:body, :string)
    field(:author, :string)
  end

  def with_title(query, t) do
    from(p in query, where: p.title == ^t)
  end

  def with_author(query, a) do
    from(p in query, where: p.author == ^a, or_where: p.author == "nope")
  end
end
