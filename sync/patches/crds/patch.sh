#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

repo_dir=$(git rev-parse --show-toplevel) ; readonly repo_dir
script_dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd ) ; readonly script_dir

cd "${repo_dir}"

readonly script_dir_rel=".${script_dir#"${repo_dir}"}"

set -x
mkdir ./helm/envoy-ai-gateway/templates/crds
cp ./vendor/ai-gateway-crds-helm/templates/* ./helm/envoy-ai-gateway/templates/crds

templates_path="./helm/envoy-ai-gateway/templates/crds"

set -x

cd "${templates_path}"

{ set +x; } 2>/dev/null
for f in *.yaml ; do
  set -x
  yq -i '.metadata.annotations += {"helm.sh/resource-policy":"keep"}' "$f"

  { set +x; } 2>/dev/null
done

set -x

{ set +x; } 2>/dev/null
