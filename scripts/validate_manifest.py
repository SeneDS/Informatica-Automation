import sys
import yaml

manifest = sys.argv[1]

with open(manifest) as f:
    data = yaml.safe_load(f)

if "packages" not in data:
    raise Exception("Manifest invalide : packages manquants")

for pkg in data["packages"]:
    if "file" not in pkg:
        raise Exception(f"Package mal défini : {pkg}")

print("Manifest valide")
