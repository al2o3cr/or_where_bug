defmodule OrWhereBugTest do
  use OrWhereBug.RepoCase
  alias OrWhereBug.Post
  alias OrWhereBug.Repo

  setup do
    %Post{title: "something else", author: "something else"} |> Repo.insert()
    %Post{title: "something else", author: "foo"} |> Repo.insert()
    %Post{title: "something else", author: "nope"} |> Repo.insert()
    %Post{title: "bar", author: "something else"} |> Repo.insert()
    %Post{title: "bar", author: "foo"} |> Repo.insert()
    %Post{title: "bar", author: "nope"} |> Repo.insert()
    :ok
  end

  test "finds the right records" do
    results1 = Post |> Post.with_author("foo") |> Post.with_title("bar") |> Repo.all()
    results2 = Post |> Post.with_title("bar") |> Post.with_author("foo") |> Repo.all()
    assert results1 == results2
  end
end
