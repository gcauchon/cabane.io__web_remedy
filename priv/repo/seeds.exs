# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Remedy.Repo.insert!(%Remedy.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

[
  ["REACT, À L’ÉCHELLE ENTREPRISE", "William Fortin", "Pleo"],
  ["CODE REVUE COMME UN PRO", "Marc-Antoine Aubé", "Poka"],
  ["ARCHITECTURE KAPPA SUR AWS", "Joey Bolduc-Gilbert", "XpertSea"],
  ["CONSTRUIRE SON PROVIDER TERRAFORM", "André Thériault/Maxime Coulombe", "Coveo"],
  ["RÉSEAU DE NEURONES EN PYTHON", "Carl Chouinard", "Vooban"],
  ["ELIXIR, REMÈDE FONCTIONNEL AU DÉVELOPPEMENT WEB", "Guillaume Cauchon", "Mirego"],
  ["PERSONNALISATION AVEC VUEJS", "Jean-Sébastien Tremblay", "Snipcart"],
  ["DÉPLOIEMENT AVEC KUBEFLOW", "Mathieu D’Amours", "Braver"],
  ["TEMPLATING AVEC LIT-HTML", "Philippe Desjardins", "XpertSea"],
  ["IOT TO SERVER TO WEBS SOCKET", "Sébastien Légaré", "Vooban"],
  ["NE PAS S’OXIDER AVEC RUST", "Pierre-Alexandre St-Jean", "Pleo"]
]
|> Enum.map(fn [title, name, company] ->
  %Remedy.Account.Presenter{
    name: name,
    company: company,
    title: title
  }
end)
|> Enum.map(&Remedy.Repo.insert!/1)
