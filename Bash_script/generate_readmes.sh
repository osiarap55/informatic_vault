#!/usr/bin/env bash
set -euo pipefail

# ── Config ────────────────────────────────────────────────────────────────────
BASE_DIR="bash_script_basics"
OUT_GH="Readme_estructure.md"
OUT_OB="Readme_estructure_obsidian.md"

# Descripciones opcionales (clave = nombre base del archivo SIN extensión)
# Añade o modifica lo que quieras aquí. Si no hay entrada, se genera una descripción automática.
declare -A DESC=(
  [information_background]="Información general sobre el contexto."
  [POSIX_and_XSI]="Estándares POSIX y X/Open."
  [sofare_tools_principles]="Principios de diseño de herramientas de software."
  [unix_history]="Breve historia de Unix y su evolución."

  [accesing_shell_script_arguments]="Cómo acceder a argumentos en scripts."
  [Basic_command_searching]="Búsqueda y localización de comandos."
  [Basic_shell_constructs]="Construcciones básicas del shell."
  [basics_I_O_redirections]="Redirecciones de entrada/salida."
  [commands_and_arguments]="Manejo de comandos y argumentos."
  [devnull_and_devtty]="Uso de /dev/null y /dev/tty."
  [devtty]="Explicación práctica de /dev/tty (script)."
  [echo_command]="Uso del comando echo."
  [redirections_and_pipelines]="Redirecciones y tuberías."
  [tr_command]="Transformaciones de texto con tr."
  [variables]="Variables en el shell."

  [finduser]="Ejemplo de búsqueda de usuarios."
  [information_getting_started]="Conceptos básicos de arranque."
  [Internationalization_and_localization]="Internacionalización y localización."
  [nusers]="Conteo de usuarios conectados."
  [scripting_languages_vs_compiled_languages]="Interpretados vs. compilados."
  [self_contained_scripts_First_line]="Importancia del shebang."
  [simple_executing_tracing]="Ejecución y trazado simple."
  [simple_script]="Ejemplo de script sencillo."
  [why_use_shell_script]="Razones para usar shell scripting."

  [info_searching_and_substitutions]="Introducción a búsquedas y sustituciones."
  [anchoring_text_matches]="Uso de anclas en regex."
  [backreferences_donnot_exits]="Backreferences inexistentes."
  [backreferences]="Uso de backreferences."
  [BRE_basic_regular_expression]="BRE básicas."
  [BRE_operator_precedence]="Precedencia en BRE."
  [ERE_alternation]="Alternación en ERE."
  [ERE_anchoring_text_matches]="Anclaje en ERE."
  [ERE_extended_regular_expression]="ERE extendidas."
  [ERE_grouping]="Agrupación en ERE."
  [ERE_matching_multiple_characters_with_one_expression]="Coincidencias múltiples con una expresión."
  [ERE_matching_single_characters]="Coincidencias de un carácter."
  [ERE_operator_precedence]="Precedencia en ERE."
  [grep_command]="Uso de grep."
  [matching_multiple_characters_with_one_expression]="Múltiples caracteres en una expresión."
  [matching_single_characters]="Coincidencias de un solo carácter."
  [matching_specific_lines_sed]="Líneas específicas con sed."
  [POSIX_bracket_expressions]="Corchetes POSIX."
  [regular_expression_extensions]="Extensiones de regex."
  [regular_expressions]="Introducción a expresiones regulares."
  [sed_command]="Comando sed."
  [sed_operation]="Operaciones con sed."
  [substitution_details_sed]="Detalles de sustitución con sed."
  [what_is_regular_expression]="Qué es una expresión regular."
  [which_programs_use_regular_expression]="Programas que usan regex."
  [searching_for_text]="Búsqueda básica de texto."
  [simple_grep]="Uso básico de grep."
  [simbolos_especiales]="Referencia de símbolos especiales."
)

# ── Helpers ───────────────────────────────────────────────────────────────────
title_from_dir() { # "02_getting_started" → "02 — Getting Started"
  local d="$1"
  local num="${d%%_*}"
  local rest="${d#*_}"
  rest="${rest//_/ }"
  printf "%s — %s" "$num" "$(tr '[:lower:]' '[:upper:]' <<<"${rest:0:1}")${rest:1}"
}

desc_for() { # clave sin extensión → descripción
  local key="$1"
  if [[ -n "${DESC[$key]+_}" ]]; then
    printf "%s" "${DESC[$key]}"
  else
    # Descripción automática: nombre bonito a partir del archivo
    local s="${key//_/ }"
    s="$(tr '[:lower:]' '[:upper:]' <<<"${s:0:1}")${s:1}"
    printf "%s." "$s"
  fi
}

# imprime una línea de item para GH (nombre visible = solo archivo)
gh_item() { # ruta_relativa_desde_base
  local rel="$1"
  local base="$(basename "$rel")"
  local name="${base}"
  local key="${base%.*}"
  local link="${BASE_DIR}/${rel}"
  local extra=""
  case "$base" in
  *.png | *.jpg | *.jpeg | *.gif) extra=" (imagen)" ;;
  *.sh) ;; # nada
  esac
  printf -- "- [%s](%s) → %s%s\n" "$name" "$link" "$(desc_for "$key")" "$extra"
}

# imprime una línea de item para Obsidian (wikilink mostrando solo el nombre)
ob_item() { # ruta_relativa_desde_base
  local rel="$1"
  local base="$(basename "$rel")"
  local key="${base%.*}"
  # Wikilink con alias: [[ruta/sin .md | nombre.ext]]
  local without_ext="${rel%.*}"
  printf -- "- [[%s|%s]] → %s\n" "${BASE_DIR}/${without_ext}" "$base" "$(desc_for "$key")"
}

# lista los ficheros directos del dir dado
list_files() { # dir_relativo_desde_base  callback
  local d="$1" cb="$2"
  find "${BASE_DIR}/${d}" -maxdepth 1 -type f \( -name "*.md" -o -name "*.sh" -o -name "*.png" \) \
    -printf "%P\n" | LC_ALL=C sort | while read -r f; do
    # %P devuelve ruta relativa a BASE_DIR/d; rearmamos
    "$cb" "${d}/${f}"
  done
}

# lista subdirectorios de primer nivel (para secciones como Basic_shell_constructs/)
list_subdirs() { # dir_relativo_desde_base
  find "${BASE_DIR}/${1}" -mindepth 1 -maxdepth 1 -type d -printf "%P\n" | LC_ALL=C sort
}

# ── Generación GH ──────────────────────────────────────────────────────────────
gen_github() {
  {
    echo "# 📂 Bash Script Basics (GitHub – README en raíz)"
    echo
    echo "Índice de archivos con enlaces Markdown estándar. El texto visible es **solo el nombre del archivo**."
    echo
    # Recorremos secciones 01_*, 02_*, 03_*, en orden
    find "$BASE_DIR" -mindepth 1 -maxdepth 1 -type d -name "[0-9][0-9]_*" | LC_ALL=C sort | while read -r sec; do
      local_dir="$(basename "$sec")"
      echo
      echo "## $(title_from_dir "$local_dir")"
      echo

      # Archivos directos en la sección
      list_files "$local_dir" gh_item

      # Subdirectorios (e.g., Basic_shell_constructs, regular_expresions, searching_for_text)
      for sub in $(list_subdirs "$local_dir"); do
        echo
        echo "**${sub}/**"
        list_files "$local_dir/$sub" gh_item
      done
    done

    # Archivos sueltos en la raíz de BASE_DIR
    echo
    echo "## Archivos sueltos"
    find "$BASE_DIR" -maxdepth 1 -type f -name "*.md" -printf "%P\n" | LC_ALL=C sort | while read -r f; do
      gh_item "$f"
    done
  } >"$OUT_GH"
}

# ── Generación Obsidian ───────────────────────────────────────────────────────
gen_obsidian() {
  {
    echo "# 📂 Bash Script Basics (Obsidian – wikilinks)"
    echo
    echo "Enlaces con wikilinks mostrando **solo el nombre del archivo** (con alias)."
    echo
    find "$BASE_DIR" -mindepth 1 -maxdepth 1 -type d -name "[0-9][0-9]_*" | LC_ALL=C sort | while read -r sec; do
      local_dir="$(basename "$sec")"
      echo
      echo "## $(title_from_dir "$local_dir")"
      echo

      list_files "$local_dir" ob_item

      for sub in $(list_subdirs "$local_dir"); do
        echo
        echo "**${sub}/**"
        list_files "$local_dir/$sub" ob_item
      done
    done

    echo
    echo "## Archivos sueltos"
    find "$BASE_DIR" -maxdepth 1 -type f -name "*.md" -printf "%P\n" | LC_ALL=C sort | while read -r f; do
      ob_item "$f"
    done
  } >"$OUT_OB"
}

# ── Run ───────────────────────────────────────────────────────────────────────
[[ -d "$BASE_DIR" ]] || {
  echo "No encuentro ${BASE_DIR}/ en $(pwd)"
  exit 1
}
gen_github
gen_obsidian
echo "OK ✔  Generados:"
echo " - $OUT_GH"
echo " - $OUT_OB"
