defmodule Phoe.Router do
  use Phoe.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/admin", Phoe do
    pipe_through :browser

    # Dashboard
    get "/", AdminController, :index
  end

  scope "/", Phoe do
    pipe_through :browser # Use the default browser stack

    resources "/", PageController
  end

  # Other scopes may use custom stacks.
  # scope "/api", Phoe do
  #   pipe_through :api
  # end
end
