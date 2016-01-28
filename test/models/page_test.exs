defmodule Phoe.PageTest do
  use Phoe.ModelCase

  alias Phoe.Page

  @valid_attrs %{body_html: "some content", body_md: "some content", name: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Page.changeset(%Page{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Page.changeset(%Page{}, @invalid_attrs)
    refute changeset.valid?
  end
end
