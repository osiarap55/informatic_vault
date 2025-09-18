# 📂 Estructura del Proyecto — Bash Script Basics (GitHub)

Índice con enlaces Markdown estándar (compatibles con GitHub).  
Cada entrada incluye una breve descripción.

---

## 01 — Background

Conceptos fundamentales antes de escribir scripts.

- [01_background/information_background.md](01_background/information_background.md) → Información general sobre el contexto.
- [01_background/POSIX_and_XSI.md](01_background/POSIX_and_XSI.md) → Estándares POSIX y X/Open.
- [01_background/sofare_tools_principles.md](01_background/sofare_tools_principles.md) → Principios de diseño de herramientas de software.
- [01_background/unix_history.md](01_background/unix_history.md) → Breve historia de Unix y su evolución.

---

## 02 — Getting Started

Primeros pasos con shell scripting.

- [02_getting_started/accesing_shell_script_arguments.md](02_getting_started/accesing_shell_script_arguments.md) → Cómo acceder a argumentos en scripts.

**Basic_shell_constructs/**

- [02_getting_started/Basic_shell_constructs/Basic_command_searching.md](02_getting_started/Basic_shell_constructs/Basic_command_searching.md) → Búsqueda y localización de comandos.
- [02_getting_started/Basic_shell_constructs/Basic_shell_constructs.md](02_getting_started/Basic_shell_constructs/Basic_shell_constructs.md) → Construcciones básicas del shell.
- [02_getting_started/Basic_shell_constructs/basics_I_O_redirections.md](02_getting_started/Basic_shell_constructs/basics_I_O_redirections.md) → Redirecciones de entrada y salida.
- [02_getting_started/Basic_shell_constructs/commands_and_arguments.md](02_getting_started/Basic_shell_constructs/commands_and_arguments.md) → Manejo de comandos y argumentos.
- [02_getting_started/Basic_shell_constructs/devnull_and_devtty.md](02_getting_started/Basic_shell_constructs/devnull_and_devtty.md) → Uso de `/dev/null` y `/dev/tty`.
- [02_getting_started/Basic_shell_constructs/devtty.sh](02_getting_started/Basic_shell_constructs/devtty.sh) → Explicación de `/dev/tty` (script).
- [02_getting_started/Basic_shell_constructs/echo_command.md](02_getting_started/Basic_shell_constructs/echo_command.md) → Uso del comando `echo`.
- [02_getting_started/Basic_shell_constructs/redirections_and_pipelines.md](02_getting_started/Basic_shell_constructs/redirections_and_pipelines.md) → Redirecciones y tuberías.
- [02_getting_started/Basic_shell_constructs/tr_command.md](02_getting_started/Basic_shell_constructs/tr_command.md) → Transformaciones de texto con `tr`.
- [02_getting_started/Basic_shell_constructs/variables.md](02_getting_started/Basic_shell_constructs/variables.md) → Variables en el shell.

Otros archivos:

- [02_getting_started/finduser](02_getting_started/finduser) → Ejemplo de búsqueda de usuarios (archivo sin extensión).
- [02_getting_started/information_getting_started.md](02_getting_started/information_getting_started.md) → Conceptos básicos de arranque.
- [02_getting_started/Internationalization_and_localization.md](02_getting_started/Internationalization_and_localization.md) → Internacionalización y localización.
- [02_getting_started/nusers](02_getting_started/nusers) → Comando `nusers` (archivo sin extensión).
- [02_getting_started/scripting_languages_vs_compiled_languages.md](02_getting_started/scripting_languages_vs_compiled_languages.md) → Interpretados vs compilados.
- [02_getting_started/self_contained_scripts_First_line.md](02_getting_started/self_contained_scripts_First_line.md) → Importancia del *shebang*.
- [02_getting_started/simple_executing_tracing.md](02_getting_started/simple_executing_tracing.md) → Ejecución y trazado simple.
- [02_getting_started/simple_script.md](02_getting_started/simple_script.md) → Ejemplo de script simple.
- [02_getting_started/why_use_shell_script.md](02_getting_started/why_use_shell_script.md) → Razones para usar shell scripting.

---

## 03 — Searching and Substitution

Búsqueda de texto, expresiones regulares y sustituciones.

- [03_searching_and_substitution/info_searching_and_substitutions.md](03_searching_and_substitution/info_searching_and_substitutions.md) → Introducción a búsquedas y sustituciones.

**regular_expresions/**

- [03_searching_and_substitution/regular_expresions/anchoring_text_matches.md](03_searching_and_substitution/regular_expresions/anchoring_text_matches.md) → Uso de anclas en regex.
- [03_searching_and_substitution/regular_expresions/backreferences_donnot_exits.md](03_searching_and_substitution/regular_expresions/backreferences_donnot_exits.md) → Backreferences inexistentes.
- [03_searching_and_substitution/regular_expresions/backreferences.md](03_searching_and_substitution/regular_expresions/backreferences.md) → Uso de backreferences.
- [03_searching_and_substitution/regular_expresions/BRE_basic_regular_expression.md](03_searching_and_substitution/regular_expresions/BRE_basic_regular_expression.md) → BRE básicas.
- [03_searching_and_substitution/regular_expresions/BRE_operator_precedence.md](03_searching_and_substitution/regular_expresions/BRE_operator_precedence.md) → Precedencia en BRE.
- [03_searching_and_substitution/regular_expresions/ERE_alternation.md](03_searching_and_substitution/regular_expresions/ERE_alternation.md) → Alternación en ERE.
- [03_searching_and_substitution/regular_expresions/ERE_anchoring_text_matches.md](03_searching_and_substitution/regular_expresions/ERE_anchoring_text_matches.md) → Anclaje en ERE.
- [03_searching_and_substitution/regular_expresions/ERE_extended_regular_expression.md](03_searching_and_substitution/regular_expresions/ERE_extended_regular_expression.md) → ERE extendidas.
- [03_searching_and_substitution/regular_expresions/ERE_grouping.md](03_searching_and_substitution/regular_expresions/ERE_grouping.md) → Agrupación en ERE.
- [03_searching_and_substitution/regular_expresions/ERE_matching_multiple_characters_with_one_expression.md](03_searching_and_substitution/regular_expresions/ERE_matching_multiple_characters_with_one_expression.md) → Coincidencias múltiples.
- [03_searching_and_substitution/regular_expresions/ERE_matching_single_characters.md](03_searching_and_substitution/regular_expresions/ERE_matching_single_characters.md) → Coincidencias de un carácter.
- [03_searching_and_substitution/regular_expresions/ERE_operator_precedence.md](03_searching_and_substitution/regular_expresions/ERE_operator_precedence.md) → Precedencia en ERE.
- [03_searching_and_substitution/regular_expresions/grep_command.md](03_searching_and_substitution/regular_expresions/grep_command.md) → Uso de `grep`.
- [03_searching_and_substitution/regular_expresions/matching_multiple_characters_with_one_expression.md](03_searching_and_substitution/regular_expresions/matching_multiple_characters_with_one_expression.md) → Múltiples caracteres.
- [03_searching_and_substitution/regular_expresions/matching_single_characters.md](03_searching_and_substitution/regular_expresions/matching_single_characters.md) → Un solo carácter.
- [03_searching_and_substitution/regular_expresions/matching_specific_lines_sed.md](03_searching_and_substitution/regular_expresions/matching_specific_lines_sed.md) → Líneas específicas con `sed`.
- [03_searching_and_substitution/regular_expresions/POSIX_bracket_expressions.md](03_searching_and_substitution/regular_expresions/POSIX_bracket_expressions.md) → Corchetes POSIX.
- [03_searching_and_substitution/regular_expresions/POSIX_BRE_ERE_metacharacters1.png](03_searching_and_substitution/regular_expresions/POSIX_BRE_ERE_metacharacters1.png) → Metacaracteres (imagen).
- [03_searching_and_substitution/regular_expresions/POSIX_BRE_ERE_metacharacters.png](03_searching_and_substitution/regular_expresions/POSIX_BRE_ERE_metacharacters.png) → Tabla BRE/ERE (imagen).
- [03_searching_and_substitution/regular_expresions/posix_character_classes.png](03_searching_and_substitution/regular_expresions/posix_character_classes.png) → Clases de caracteres (imagen).
- [03_searching_and_substitution/regular_expresions/regular_expression_extensions.md](03_searching_and_substitution/regular_expresions/regular_expression_extensions.md) → Extensiones de regex.
- [03_searching_and_substitution/regular_expresions/regular_expressions.md](03_searching_and_substitution/regular_expresions/regular_expressions.md) → Introducción a regex.
- [03_searching_and_substitution/regular_expresions/sed_command.md](03_searching_and_substitution/regular_expresions/sed_command.md) → Comando `sed`.
- [03_searching_and_substitution/regular_expresions/sed_operation.md](03_searching_and_substitution/regular_expresions/sed_operation.md) → Operaciones con `sed`.
- [03_searching_and_substitution/regular_expresions/substitution_details_sed.md](03_searching_and_substitution/regular_expresions/substitution_details_sed.md) → Detalles de sustitución.
- [03_searching_and_substitution/regular_expresions/what_is_regular_expression.md](03_searching_and_substitution/regular_expresions/what_is_regular_expression.md) → Qué es una expresión regular.
- [03_searching_and_substitution/regular_expresions/which_programs_use_regular_expression.md](03_searching_and_substitution/regular_expresions/which_programs_use_regular_expression.md) → Programas que usan regex.

**searching_for_text/**

- [03_searching_and_substitution/searching_for_text/searching_for_text.md](03_searching_and_substitution/searching_for_text/searching_for_text.md) → Búsqueda básica de texto.
- [03_searching_and_substitution/searching_for_text/simple_grep.md](03_searching_and_substitution/searching_for_text/simple_grep.md) → Uso básico de `grep`.

---

## Archivos sueltos

- [Readme_estructure.md](Readme_estructure.md) → Este índice.
- [simbolos_especiales.md](simbolos_especiales.md) → Referencia de símbolos especiales en shell scripting.
