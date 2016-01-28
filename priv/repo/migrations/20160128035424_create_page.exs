defmodule Phoe.Repo.Migrations.CreatePage do
  use Ecto.Migration

  def change do
    create table(:pages) do
      add :name, :string
      add :body_md, :text
      add :body_html, :text

      timestamps
    end

  end
end
