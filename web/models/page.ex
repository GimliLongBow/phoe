defmodule Phoe.Page do
  use Phoe.Web, :model

  schema "pages" do
    field :name, :string
    field :body_md, :string
    field :body_html, :string

    timestamps
  end

  @required_fields ~w(name body_md)
  @optional_fields ~w(body_html)

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
