#!/usr/bin/env bash
set -euo pipefail

# ── Config ────────────────────────────────────────────────────────────────────
BASE_DIR="."
OUT="Readme_estructure.md"

# Descripciones opcionales (clave = nombre base del archivo SIN extensión)
# Rellena/edita libremente. Si falta una, se genera una por defecto a partir del nombre.
declare -A DESC=(
  # [intro_machine_learning]="Visión general y objetivos del repositorio."
  # [linear_regression]="Regresión lineal: teoría y ejemplo en Python."
  # [gradient_descent]="Descenso del gradiente: intuición y variantes."
  # [logistic_regression]="Clasificación binaria con regresión logística."
  # [svm_basics]="SVM: margen, kernel y parámetros."
  # [k_means]="k-means: clustering no supervisado."
  # [pca_dimensionality]="PCA: reducción de dimensionalidad."
  # [nn_from_scratch]="Red neuronal desde cero."
  # [cnn_basics]="CNNs: convoluciones y pooling."
  # [rnn_lstm_gru]="Secuencias: RNN/LSTM/GRU."
  # [xgboost_intro]="Boosting con XGBoost."
  # [pipelines_sklearn]="Pipelines y ColumnTransformer en sklearn."
  # [feature_engineering]="Ingeniería de características."
  # [model_evaluation]="Métricas y validación cruzada."
  # [ml_ops_overview]="MLOps: tracking, pruebas y despliegue."
)

# ── Helpers ───────────────────────────────────────────────────────────────────
title_from_dir() { # "02_supervised_learning" → "02 — Supervised Learning"
  local d="$1"
  local num="${d%%_*}"
  local rest="${d#*_}"
  rest="${rest//_/ }"
  printf "%s — %s" "$num" "$(tr '[:lower:]' '[:upper:]' <<<"${rest:0:1}")${rest:1}"
}

desc_for() {
  local key="$1"
  if [[ -n "${DESC[$key]+_}" ]]; then
    printf "%s" "${DESC[$key]}"
  else
    local s="${key//_/ }"
    s="$(tr '[:lower:]' '[:upper:]' <<<"${s:0:1}")${s:1}"
    printf "%s." "$s"
  fi
}

kind_hint() {
  case "$1" in
  *.png | *.jpg | *.jpeg | *.gif | *.webp) echo " (imagen)" ;;
  *.ipynb) echo " (notebook)" ;;
  *.py | *.sh) echo " (script)" ;;
  *.csv | *.tsv | *.parquet | *.json | *.txt) echo " (datos)" ;;
  *.pdf) echo " (PDF)" ;;
  *) echo "" ;;
  esac
}

item() { # ruta_relativa_desde_base
  local rel="$1"
  local base="$(basename "$rel")"
  local key="${base%.*}"
  local link="${BASE_DIR}/${rel}"
  local extra="$(kind_hint "$base")"
  printf -- "- [%s](%s) → %s%s\n" "$base" "$link" "$(desc_for "$key")" "$extra"
}

list_files() {
  local d="$1"
  find "${BASE_DIR}/${d}" -maxdepth 1 -type f \
    \( -name "*.md" -o -name "*.py" -o -name "*.ipynb" -o -name "*.png" -o -name "*.jpg" -o -name "*.jpeg" -o -name "*.gif" -o -name "*.webp" -o -name "*.csv" -o -name "*.tsv" -o -name "*.json" -o -name "*.parquet" -o -name "*.txt" -o -name "*.pdf" \) \
    -printf "%P\n" | LC_ALL=C sort | while read -r f; do
    item "${d}/${f}"
  done
}

list_subdirs() {
  find "${BASE_DIR}/${1}" -mindepth 1 -maxdepth 1 -type d -printf "%P\n" | LC_ALL=C sort
}

# ── Generación README único ──────────────────────────────────────────────────
gen_readme() {
  {
    echo "# 📂 Machine Learning"
    echo
    echo "Índice de archivos con enlaces compatibles tanto con **GitHub** como con **Obsidian**."
    echo

    # Secciones numeradas tipo 00_*, 01_*...
    find "$BASE_DIR" -mindepth 1 -maxdepth 1 -type d -name "[0-9][0-9]_*" | LC_ALL=C sort | while read -r sec; do
      local_dir="$(basename "$sec")"
      echo
      echo "## $(title_from_dir "$local_dir")"
      echo

      list_files "$local_dir"

      # Subcarpetas dentro de cada sección
      for sub in $(list_subdirs "$local_dir"); do
        echo
        echo "**${sub}/**"
        list_files "$local_dir/$sub"
      done
    done

    echo
    echo "## Archivos sueltos"
    find "$BASE_DIR" -maxdepth 1 -type f \
      \( -name "*.md" -o -name "*.py" -o -name "*.ipynb" -o -name "*.png" -o -name "*.jpg" -o -name "*.jpeg" -o -name "*.gif" -o -name "*.webp" -o -name "*.csv" -o -name "*.tsv" -o -name "*.json" -o -name "*.parquet" -o -name "*.txt" -o -name "*.pdf" \) \
      -printf "%P\n" | LC_ALL=C sort | while read -r f; do
      item "$f"
    done
  } >"$OUT"
}

# ── Run ──────────────────────────────────────────────────────────────────────
[[ -d "$BASE_DIR" ]] || {
  echo "No encuentro ${BASE_DIR}/ en $(pwd)"
  exit 1
}
gen_readme
echo "OK ✔  Generado:"
echo " - $OUT"
