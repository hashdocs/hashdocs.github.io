# HashDocs Documentation

This repository contains the documentation for [HashDocs][hashdocs], which is hosted on [GitHub.io][hashdocs-docs].

A set of documentation is created for each major and minor version release, following [Semantic Versioning][semver]
standards. Any documentation changes for revisions are added to the minor version, with the expectation that users
of.

Pull Requests for contributing to this documentation should always be made to the `main` branch in the appropriate
version documentation folder. GitHub Release Tags are created on version cuts for convenience, but are not used in
documentation generation.

## Contributing Guidelines

Each functional change in HashDocs requires an update to this HashDocs documentation repository. Pull Requests on
HashDocs will not be accepted without a parallel Pull Request on this documentation repository in-place.

Documentation must follow a series of standards, as laid out in this project's
[Contributing Guidelines][contributing].

## Versioning

The HashDocs documentation repository follows in-line with the versioning for the main HashDocs project. To provide
the broadest level of support for users of various versions of HashDocs, the documentation repository includes _all_
prior versions of documentation under the URL pattern `/hashdocs/version/page`. For example:

```
https://github.io/hashdocs/v1.3/...
```

Where `v1.3` is replaced with whatever version of documentation is requested. All updates to documentation, with the
exception of revisions on prior versions (e.g., for security issues), must be made on the latest version of
documentation being created.

If a user is not viewing the most-current version of documentation, a special notification will display at the top of
the page inviting the user to view the most-current documentation.

### Stable Documentation

A special version identifier in the URL is provided for convenience in redirecting the user to the current, stable
version of the HashDocs documentation. For example:

```
https://github.io/hashdocs/stable/
```

This URL will redirect the user to the index page on the current stable version of HashDocs. If a page is provided
after the `/stable/` identifier, the user will be redirected to that page (whether it exists, or not) on the stable
branch.

Documentation should _always_ explicitly refer to its own version, unless there is an explicit reason to redirect the
user to the most-current documentation.

### Edge Documentation

A special version identifier in the URL is provided for convenience in redirecting the user to the development
documentation that has passed acceptance processes. For example:

```
https://github.io/hashdocs/edge/
```

This URL will redirect the user to the index page on the current, daily build of the HashDocs documentation. Similar
to other identifiers, any other pages will also be redirected.

## License

[![Creative Commons Attribution-ShareAlike 4.0 International License][img-cc-license]][cc-license]

HashDocs documentation is licensed under a
[Creative Commons Attribution-ShareAlike 4.0 International License][cc-license].

Full licensing requirements and agreements can be found in the [LICENSE.md][license] file.



<!-- Markdown Link Repository -->

[contributing]:     CONTRIBUTING.md

[cc-license]:       http://creativecommons.org/licenses/by-sa/4.0/

[hashdocs]:         https://github.com/hashdocs/hashdocs
[hashdocs-docs]:    https://github.io/hashdocs
[hashdocs-license]: https://github.com/hashdocs/hashdocs/master/blob/LICENSE.md

[img-cc-license]:   https://i.creativecommons.org/l/by-sa/4.0/88x31.png

[license]:          LICENSE.md

[semver]:           https://semver.org/
