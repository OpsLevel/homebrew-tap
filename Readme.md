# Opslevel Tap

## What is Homebrew?

Package manager for macOS (or Linux), see more at https://brew.sh

## What is a Tap?

A third-party (in relation to Homebrew) repository providing installable
packages (formulae) on macOS and Linux.

See more at https://docs.brew.sh/Taps

## How do I install packages from here?

```sh
brew install opslevel/tap/<name>
```

You can also only add the tap which makes formulae within it
available in search results (`brew search` output):

```sh
brew tap opslevel/tap
```

## What packages are available?

With the following commands, you can install the latest version of each product:
```sh
# Formulae
brew install opslevel/tap/cli
brew install opslevel/tap/kubectl
```

## Why should I install packages from this tap?

Formulae _in this tap_ are maintained by OpsLevel.

 - macOS binaries are signed by OpsLevel and the signature can be verified
 - Teams maintaining OpsLevel software choose Go version and any build flags _deliberately_ while
 	factoring in support, security and other concerns. Binaries distributed through this tap reflect this.
 - Updating of formulae is automated, which means that updates become available as they're released.

#### Why doesn't OpsLevel maintain formulae in the homebrew-core (main tap)?

Homebrew's core team prefers to keep homebrew-core as community maintained and built from source to maintain consistency across vendors in terms of expectations around contents and updates. See relevant discussion for more information.