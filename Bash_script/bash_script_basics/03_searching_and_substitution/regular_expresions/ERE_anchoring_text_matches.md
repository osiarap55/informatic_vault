## Anchoring text matches

*^* and *$* have the same meaning as in **BRE**

### different BRE and ERE anchoring text matches

In ERE's. ^ and $ are *always* metacharacte. Thus, regular expressions such as **ab^cd** and **ef$gh** are valid, but cannont match anything, since the text preceding thr ^ and the $ prevent them from matching.

[[ERE_extended_regular_expression]]


