<div align="center">
<h1>doge</h1>

<a href="https://saythanks.io/to/Dj-Codeman">
    <img src="https://img.shields.io/badge/Say%20Thanks-!-1EAEDB.svg" alt="Say thanks!" />
</a>
<p align="center">
	<img src="https://img.shields.io/github/license/Dj-Codeman/doge?style=flat-square&logo=opensourceinitiative&logoColor=white&color=0080ff" alt="license">
	<img src="https://img.shields.io/github/last-commit/Dj-Codeman/doge?style=flat-square&logo=git&logoColor=white&color=0080ff" alt="last-commit">
	<img src="https://img.shields.io/github/languages/top/Dj-Codeman/doge?style=flat-square&color=0080ff" alt="repo-top-language">
	<img src="https://img.shields.io/github/languages/count/Dj-Codeman/doge?style=flat-square&color=0080ff" alt="repo-language-count">
<p>
<p align="center">
		<em>Developed with the software and tools below.</em>
</p>
<p align="center">
	<img src="https://img.shields.io/badge/YAML-CB171E.svg?style=flat-square&logo=YAML&logoColor=white" alt="YAML">
	<img src="https://img.shields.io/badge/PowerShell-5391FE.svg?style=flat-square&logo=PowerShell&logoColor=white" alt="PowerShell">
	<img src="https://img.shields.io/badge/Docker-2496ED.svg?style=flat-square&logo=Docker&logoColor=white" alt="Docker">
	<img src="https://img.shields.io/badge/GitHub%20Actions-2088FF.svg?style=flat-square&logo=GitHub-Actions&logoColor=white" alt="GitHub%20Actions">
	<img src="https://img.shields.io/badge/JSON-000000.svg?style=flat-square&logo=JSON&logoColor=white" alt="JSON">
	<img src="https://img.shields.io/badge/Rust-000000.svg?style=flat-square&logo=Rust&logoColor=white" alt="Rust">
</p>
</div>

![A screenshot of dog making a DNS request](doge-screenshot.jpg)

---

Doge _can_ look up!

**doge** is a command-line DNS client, like `dig` forked from the amazing work done [here](https://github.com/ogham/dog).
It has colourful output, understands normal command-line argument syntax, supports the DNS-over-TLS and DNS-over-HTTPS protocols, and can emit JSON. I belive this is an amazing project and should be improved on.

## Examples

    doge example.net                          Query a domain using default settings
    doge example.net MX                       ...looking up MX records instead
    doge example.net MX @1.1.1.1              ...using a specific nameserver instead
    doge example.net MX @1.1.1.1 -T           ...using TCP rather than UDP
    doge exapple.net MX @1.1.1.1 -p 53        ...using a nonstandart port
    doge -q example.net -t MX -n 1.1.1.1 -T   As above, but using explicit arguments

---

## Command-line options

### Query options

    <arguments>              Human-readable host names, nameservers, types, or classes
    -q, --query=HOST         Host name or domain name to query
    -t, --type=TYPE          Type of the DNS record being queried (A, MX, NS...)
    -n, --nameserver=ADDR    Address of the nameserver to send packets to
    -p, --port=PORT            Port options for sending queries on nonstandart ports
    --class=CLASS            Network class of the DNS record being queried (IN, CH, HS)

### Sending options

    --edns=SETTING           Whether to OPT in to EDNS (disable, hide, show)
    --txid=NUMBER            Set the transaction ID to a specific value
    -Z=TWEAKS                Set uncommon protocol-level tweaks

### Protocol options

    -U, --udp                Use the DNS protocol over UDP
    -T, --tcp                Use the DNS protocol over TCP
    -S, --tls                Use the DNS-over-TLS protocol
    -H, --https              Use the DNS-over-HTTPS protocol

### Output options

    -1, --short              Short mode: display nothing but the first result
    -J, --json               Display the output as JSON
    --color, --colour=WHEN   When to colourise the output (always, automatic, never)
    --seconds                Do not format durations, display them as seconds
    --time                   Print how long the response took to arrive


---

<details closed><summary>completions</summary>

| File                                                                              | Summary                                                                                                                                                                                                                                                                                                                                            |
| ---                                                                               | ---                                                                                                                                                                                                                                                                                                                                                |
| [doge.bash](https://github.com/Dj-Codeman/doge/blob/master/completions/doge.bash) | The completions/doge.bash file extends Bash completions for the doge command, offering suggestions for options and their arguments. It handles various types of DNS queries and custom flags, enhancing user experience.                                                                                                                           |
| [doge.fish](https://github.com/Dj-Codeman/doge/blob/master/completions/doge.fish) | Unleash the power of Fish Shell completion for a DNS query tool with doge.fish. Configure query options like hostname, type, nameserver, and protocol (UDP, TCP, TLS, HTTPS), along with output preferences such as colorization, time display, and JSON format. Customize advanced settings for EDNS, transaction IDs, and protocol-level tweaks. |
| [doge.ps1](https://github.com/Dj-Codeman/doge/blob/master/completions/doge.ps1)   | Registers PowerShell completions for the doge command, providing suggested DNS type values and options based on preceding input. Adheres to PowerShell compatibility and supports option value completion.                                                                                                                                         |
| [doge.zsh](https://github.com/Dj-Codeman/doge/blob/master/completions/doge.zsh)   | Interprets user arguments for various options like type of record, server address, and protocol selection, ultimately executing the desired DNS query.                                                                                                                                                                                             |

</details>

## Installation

Currently:
    To install dog, you can download a pre-compiled binary, or you can compile it from source. You _**may**_ be able to install dog using your OS’s package manager, depending on your platform.

Issues: 
    I am not a rust expert at all, Honestly I'm the opposite, just learning codding. I used [`dog`](https://github.com/ogham/dog) on my arch system and a few random *nix Laptops that I perpetually fix and break . As such part of this progect will be outside of my skill set or ability to work on currently. 
    For **Windows** I don't intende on installing windows 11 anytime soon, So I most likely won't be adding new windows features
    For **Macos** Till i can afford to waste money on a mac, the workflow for building release packages is the only support macos is going to get
    For **Docker**, This is magic as far as I'm concerned. While I learn the spells to use it in a meaningful way expect things to be broken 
    
    If any of these are things you want to see make a PR and I'll read and merge it, Be on the lookout for some potentially dumb questions from me.

### Packages

    They exist now !!!

    $ cargo install dns-doge
    $ yay -S dns-doge
    
<!-- - For Homebrew on macOS, install the [`dog`](https://formulae.brew.sh/formula/dog) formula.
- For NixOS, install the [`dogdns`](https://search.nixos.org/packages?channel=unstable&show=dogdns&query=dogdns) package. -->


### Downloads

Binary downloads of doge are available from [the releases section on GitHub](https://github.com/Dj-Codeman/doge/releases/) for 64-bit Windows, macOS, and Linux targets. They contain the compiled executable, the manual page, and shell completions.


### Compilation

doge is written in [Rust](https://www.rust-lang.org).
I working on rustc version [1.76.0](https://blog.rust-lang.org/2024/02/08/Rust-1.76.0.html) you should be running this version or newer.
The recommended way to install Rust for development is from the [official download page](https://www.rust-lang.org/tools/install), using rustup.

To build, download the source code and run:

    $ cargo build
    $ cargo test


- If you are compiling a copy for yourself, be sure to run `cargo build --release` or `make build-release` to benefit from release-mode optimisations.
Copy the resulting binary, which will be in the `target/release` directory, into a folder in your `$PATH`.
`/usr/local/bin` is usually a good choice.

- To compile and install the manual pages, you will need [pandoc](https://pandoc.org/).
The `make man` command will compile the Markdown into manual pages, which it will place in the `target/man` directory.
To use them, copy them into a directory that `man` will read.
`/usr/local/share/man` is usually a good choice.


### Container image

To build the container image of doge, you can use Docker, Podman or Kaniko. Here an example using Docker:

    $ docker build -t doge .

You can then run it using the following command:

    $ docker run -it --rm doge

To run dog directly, you can then define the following alias:

    $ alias doge="docker run -it --rm doge"


### Feature toggles

doge has three Cargo features that can be switched off to remove functionality.
While doing so makes doge less useful, it results in a smaller binary that takes less time to build.

There are three feature toggles available, all of which are active by default:

- `with_idna`, which enables [IDNA](https://en.wikipedia.org/wiki/Internationalized_domain_name) processing
- `with_tls`, which enables DNS-over-TLS
- `with_https`, which enables DNS-over-HTTPS (requires `with_tls`)

Use `cargo` to build a binary that uses feature toggles. For example, to disable TLS and HTTPS support but keep IDNA support enabled, you can run:

    $ cargo build --no-default-features --features=with_idna

The list of features that have been disabled can be checked at runtime as part of the `--version` string.


---

## Documentation

For documentation on how to use doge, see the dog website: <https://dns.lookup.dog/>
Eventually I will make a new one

doge is a fork of [dog](https://github.com/ogham/dog).
