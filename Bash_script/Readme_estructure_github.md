# 📂 Estructura del Proyecto — Bash Script Basics

Este índice muestra todos los archivos con enlaces estándar de Markdown, compatibles con **GitHub**.  
Cada sección incluye una breve explicación.  

---

## 01 — Background  
Conceptos fundamentales antes de escribir scripts.  

- [information_background.md](information_background.md) → Información general sobre el contexto.  
- [POSIX_and_XSI.md](POSIX_and_XSI.md) → Estándares POSIX y X/Open.  
- [sofare_tools_principles.md](sofare_tools_principles.md) → Principios de diseño de herramientas de software.  
- [unix_history.md](unix_history.md) → Breve historia de Unix y su evolución.  

---

## 02 — Getting Started  
Primeros pasos con shell scripting.  

- [accesing_shell_script_arguments.md](accesing_shell_script_arguments.md) → Cómo acceder a argumentos en scripts.  

**Basic_shell_constructs/**  
- [Basic_command_searching.md](Basic_shell_constructs/Basic_command_searching.md) → Búsqueda y localización de comandos.  
- [Basic_shell_constructs.md](Basic_shell_constructs/Basic_shell_constructs.md) → Construcciones básicas del shell.  
- [basics_I_O_redirections.md](Basic_shell_constructs/basics_I_O_redirections.md) → Redirecciones de entrada y salida.  
- [commands_and_arguments.md](Basic_shell_constructs/commands_and_arguments.md) → Manejo de comandos y argumentos.  
- [devnull_and_devtty.md](Basic_shell_constructs/devnull_and_devtty.md) → Uso de `/dev/null` y `/dev/tty`.  
- [devtty.sh](Basic_shell_constructs/devtty.sh) → Explicación de `/dev/tty`.  
- [echo_command.md](Basic_shell_constructs/echo_command.md) → Uso del comando `echo`.  
- [redirections_and_pipelines.md](Basic_shell_constructs/redirections_and_pipelines.md) → Redirecciones y tuberías.  
- [tr_command.md](Basic_shell_constructs/tr_command.md) → Transformaciones de texto con `tr`.  
- [variables.md](Basic_shell_constructs/variables.md) → Variables en el shell.  

Otros archivos:  
- [finduser](finduser) → Ejemplo de búsqueda de usuarios.  
- [information_getting_started.md](information_getting_started.md) → Conceptos básicos de arranque.  
- [Internationalization_and_localization.md](Internationalization_and_localization.md) → Internacionalización y localización.  
- [nusers](nusers) → Comando `nusers` para contar usuarios conectados.  
- [scripting_languages_vs_compiled_languages.md](scripting_languages_vs_compiled_languages.md) → Diferencias entre lenguajes interpretados y compilados.  
- [self_contained_scripts_First_line.md](self_contained_scripts_First_line.md) → Importancia del shebang en la primera línea.  
- [simple_executing_tracing.md](simple_executing_tracing.md) → Ejecución y trazado simple de scripts.  
- [simple_script.md](simple_script.md) → Ejemplo de script simple.  
- [why_use_shell_script.md](why_use_shell_script.md) → Razones para usar shell scripting.  

---

## 03 — Searching and Substitution  
Búsqueda de texto, expresiones regulares y sustituciones.  

- [info_searching_and_substitutions.md](info_searching_and_substitutions.md) → Introducción a búsquedas y sustituciones.  

**regular_expresions/**  
- [anchoring_text_matches.md](regular_expresions/anchoring_text_matches.md) → Uso de anclas en regex.  
- [backreferences_donnot_exits.md](regular_expresions/backreferences_donnot_exits.md) → Backreferences inexistentes.  
- [backreferences.md](regular_expresions/backreferences.md) → Uso de backreferences.  
- [BRE_basic_regular_expression.md](regular_expresions/BRE_basic_regular_expression.md) → Expresiones regulares básicas (BRE).  
- [BRE_operator_precedence.md](regular_expresions/BRE_operator_precedence.md) → Precedencia en BRE.  
- [ERE_alternation.md](regular_expresions/ERE_alternation.md) → Alternación en ERE.  
- [ERE_anchoring_text_matches.md](regular_expresions/ERE_anchoring_text_matches.md) → Anclaje en ERE.  
- [ERE_extended_regular_expression.md](regular_expresions/ERE_extended_regular_expression.md) → Expresiones regulares extendidas.  
- [ERE_grouping.md](regular_expresions/ERE_grouping.md) → Agrupación en ERE.  
- [ERE_matching_multiple_characters_with_one_expression.md](regular_expresions/ERE_matching_multiple_characters_with_one_expression.md) → Coincidencias múltiples con una expresión.  
- [ERE_matching_single_characters.md](regular_expresions/ERE_matching_single_characters.md) → Coincidencias de un solo carácter.  
- [ERE_operator_precedence.md](regular_expresions/ERE_operator_precedence.md) → Precedencia en ERE.  
- [grep_command.md](regular_expresions/grep_command.md) → Uso de `grep`.  
- [matching_multiple_characters_with_one_expression.md](regular_expresions/matching_multiple_characters_with_one_expression.md) → Coincidencias de múltiples caracteres.  
- [matching_single_characters.md](regular_expresions/matching_single_characters.md) → Coincidencias de un solo carácter.  
- [matching_specific_lines_sed.md](regular_expresions/matching_specific_lines_sed.md) → Coincidencia de líneas específicas con `sed`.  
- [POSIX_bracket_expressions.md](regular_expresions/POSIX_bracket_expressions.md) → Expresiones de corchetes POSIX.  
- [POSIX_BRE_ERE_metacharacters1.png](regular_expresions/POSIX_BRE_ERE_metacharacters1.png) → Metacaracteres BRE/ERE (imagen).  
- [POSIX_BRE_ERE_metacharacters.png](regular_expresions/POSIX_BRE_ERE_metacharacters.png) → Tabla de metacaracteres BRE/ERE.  
- [posix_character_classes.png](regular_expresions/posix_character_classes.png) → Clases de caracteres POSIX.  
- [regular_expression_extensions.md](regular_expresions/regular_expression_extensions.md) → Extensiones de regex.  
- [regular_expressions.md](regular_expresions/regular_expressions.md) → Introducción a expresiones regulares.  
- [sed_command.md](regular_expresions/sed_command.md) → Comando `sed`.  
- [sed_operation.md](regular_expresions/sed_operation.md) → Operaciones comunes con `sed`.  
- [substitution_details_sed.md](regular_expresions/substitution_details_sed.md) → Detalles de sustitución con `sed`.  
- [what_is_regular_expression.md](regular_expresions/what_is_regular_expression.md) → Qué son las expresiones regulares.  
- [which_programs_use_regular_expression.md](regular_expresions/which_programs_use_regular_expression.md) → Programas que usan regex.  

**searching_for_text/**  
- [searching_for_text.md](searching_for_text/searching_for_text.md) → Búsqueda básica de texto.  
- [simple_grep.md](searching_for_text/simple_grep.md) → Uso básico de `grep`.  

---

## Archivos sueltos  
- [Readme_estructure.md](Readme_estructure.md) → Índice general del proyecto.  
- [simbolos_especiales.md](simbolos_especiales.md) → Referencia de símbolos especiales en shell scripting.  

