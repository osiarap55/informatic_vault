# The Join command

- The **join** command lets you merge files, where the records in each file share a common _key_ thet is, the field which is the primary one for the record.
- Keys are often things such as usernames, personal last names, employee ID numbers, and so on.

- For example, you might have two files, one which lists how many items a salesperson sold and one which lists the salesperson's quota:

```

# Quota Data
# Name Quota
Alice Corp 1000
Beta Ltd 1100
Cyan Inc 1500
Delta LLC 800
Epsilon Co 1300
```

```

# Sales Data
# Name Amount of Sales
Alice Corp 1200
Beta Ltd 950
Cyan Inc 1580
Delta LLC 760
Epsilon Co 1340
```

Each record has two fields: the sales's person name and the corresponding amount.

- In order for **join** correctly, the inpout files must be **sorted**.

```sh

#! /bin/sh

# merge-sales.sh
#
# Combine quota and sales data
#
# Remove comments and sort datafiles
sed '/^#/d' quota | sort >quota.sorted
sed '/^#/d' sales | sort >sales.sorted

# Combine on first key, results to standard output
join quota.sorted sales.sorted

# Remove temporary datafiles
rm quota.sorted sales.sorted
```

- Here is what happens when it's run:

```
➜  working_with_fields git:(main) ✗ ./merge-sales.sh
 Corp 1200 1000
 Ltd 950 1100
 Inc 15801500
 LLC 760C 800
 Co 1340Co 1300
```

 #working_with_fields
