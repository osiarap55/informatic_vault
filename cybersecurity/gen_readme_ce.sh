#!/usr/bin/env bash
set -euo pipefail

# Cambia si tu carpeta raíz tiene otro nombre
BASE_DIR="."
OUT="Readme_estructure.md"

declare -A DESC=() # puedes añadir descripciones opcionales aquí

humanize() {
  local s="${1//_/ }"
  printf "%s" "$(tr '[:lower:]' '[:upper:]' <<<"${s:0:1}")${s:1}"
}

part_title() { # admite "Parte1_Securing_..." o "01_Securing_..."
  local b="$1"
  if [[ "$b" =~ ^Parte([0-9]+)_(.*)$ ]]; then
    printf "Parte %s — %s" "${BASH_REMATCH[1]}" "$(humanize "${BASH_REMATCH[2]}")"
  elif [[ "$b" =~ ^([0-9]+)_(.*)$ ]]; then
    printf "%02d — %s" "${BASH_REMATCH[1]}" "$(humanize "${BASH_REMATCH[2]}")"
  else
    printf "%s" "$(humanize "$b")"
  fi
}

kind_hint() { case "$1" in
  *.png | *.jpg | *.jpeg | *.gif | *.webp) echo " (imagen)" ;;
  *.ipynb) echo " (notebook)" ;;
  *.py | *.sh | *.ps1) echo " (script)" ;;
  *.csv | *.tsv | *.parquet | *.json | *.txt) echo " (datos)" ;;
  *.pdf) echo " (PDF)" ;;
  *) echo "" ;;
  esac }

desc_for() {
  local k="$1"
  if [[ -n "${DESC[$k]+_}" ]]; then printf "%s" "${DESC[$k]}"; else
    local s="${k//_/ }"
    s="$(tr '[:lower:]' '[:upper:]' <<<"${s:0:1}")${s:1}"
    printf "%s." "$s"
  fi
}

emit_item() { # ruta relativa desde BASE_DIR
  local rel="$1" base key extra
  base="$(basename "$rel")"
  key="${base%.*}"
  extra="$(kind_hint "$base")"
  printf -- "- [%s](%s/%s) → %s%s\n" "$base" "$BASE_DIR" "$rel" "$(desc_for "$key")" "$extra"
}

list_files() { # lista archivos de una carpeta dentro de BASE_DIR
  local d="$1"
  find "${BASE_DIR}/${d}" -maxdepth 1 -type f -print0 | sort -z |
    while IFS= read -r -d '' p; do
      rel="${p#"$BASE_DIR/"}"
      emit_item "$rel"
    done
}

list_subdirs() { # subcarpetas directas
  find "${BASE_DIR}/${1}" -mindepth 1 -maxdepth 1 -type d -print0 | sort -z |
    while IFS= read -r -d '' sd; do
      printf "%s\0" "${sd#"$BASE_DIR/$1/"}"
    done
}

gen_readme() {
  {
    echo "# 📘 Cybersecurity Essentials — Índice"
    echo
    echo "Repositorio: \`${BASE_DIR}\`"
    echo
    echo "## Partes"

    find "$BASE_DIR" -mindepth 1 -maxdepth 1 -type d \
      \( -name "Parte*_*" -o -name "[0-9]*_*" \) -print0 | sort -z |
      while IFS= read -r -d '' sec; do
        local_dir="$(basename "$sec")"
        echo
        echo "### $(part_title "$local_dir")"
        echo
        list_files "$local_dir"

        list_subdirs "$local_dir" | while IFS= read -r -d '' sub; do
          echo
          echo "**${sub}/**"
          list_files "$local_dir/$sub"
        done
      done

    echo
    echo "## Archivos en la raíz"
    find "$BASE_DIR" -maxdepth 1 -type f -print0 | sort -z |
      while IFS= read -r -d '' p; do
        rel="${p#"$BASE_DIR/"}"
        emit_item "$rel"
      done
  } >"$OUT"
}

[[ -d "$BASE_DIR" ]] || {
  echo "No encuentro ${BASE_DIR}/ en $(pwd)"
  exit 1
}
gen_readme
echo "OK ✔  Generado: $OUT"
