defmodule Tentacat.Users.Followers do
  import Tentacat.Client

  @doc """
  List users that the authenticated user or a given user follow

  ## Example

      Tentacat.Users.Followers.following("edgurgel")
      Tentacat.Users.Followers.following(access_token: "91898192219")

  More info at: http://developer.github.com/v3/users/followers/#list-users-followed-by-another-user
  """
  @spec following(binary | Client.auth) :: :jsx.json_term
  def following(auth) when is_list(auth) do
    get "user/following", auth
  end

  def following(user_name) when is_binary(user_name) do
    get "users/#{user_name}/following"
  end

  @doc """
  List users that follow the authenticated user or a given user

  ## Example

      Tentacat.Users.Followers.followers("edgurgel")
      Tentacat.Users.Followers.followers(access_token: "91898192219")

  More info at: http://developer.github.com/v3/users/followers/#list-followers-of-a-user
  """
  @spec followers(binary | Client.auth) :: :jsx.json_term
  def followers(auth) when is_list(auth) do
    get "user/followers", auth
  end

  def followers(user_name) when is_binary(user_name) do
    get "users/#{user_name}/followers"
  end
end
