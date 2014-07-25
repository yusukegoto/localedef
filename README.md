localedef Cookbook
==================
Add localedef LWRP very Simply.
This is training for the use of chef test suites.

### Support

CentOS

LWRPs
----------

### default

#### Actions

- `add` (Default Action) - Add a locale

#### Attributes

- `lang` (Default Name) - locale name shown on `locale -a` e.g. ja_JP.utf8
- `locale`  - e.g. ja_JP
- `charmap`  - charmap name seen in `/usr/share/i18n/charmaps`. e.g. UTF-8

Usage
-----
Add localedef dependency into your metadata file.

Contributing
------------
TODO: (optional) If this is a public cookbook, detail the process for contributing. If this is a private cookbook, remove this section.

e.g.
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: TODO: List authors

TODO
-------------------
I don't know how to decide locale name.
e.g. got _ja_JP.utf8_ despite of executing localedef with *ja_JP.UTF_8* .

