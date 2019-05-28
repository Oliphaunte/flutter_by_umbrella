# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     FlutterBy.Repo.insert!(%FlutterBy.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias FlutterBy.Repo
alias FlutterBy.{Accounts, Accounts.User}

Repo.insert! User.registration_changeset(%User{}, %{
  username: "test_name",
  email: "test@test",
  password: "test@test"
})