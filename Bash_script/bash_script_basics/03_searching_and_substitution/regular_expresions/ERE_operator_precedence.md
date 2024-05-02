## ERE operator precendence

 * Operator precedence applies to EREs as it does to BREs.

| OPERATOR      | MEANING |
|---------------|---------|
|[..] [==] [::] | Bracket symbols for character collation |
|\metacharacter | Escaped metacharacter |
| [  ]          | Bracket expressions |
| (  )          | Grouping |
| * + ? {  }    | Repetition of the preceding regular expression |
| *no symbol*   | Concatenation |
| ^ $           | Anchors |
| \|            | Alternation |


[[ERE_extended_regular_expression]]
