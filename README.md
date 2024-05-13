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

  <img src="doge-screenshot.jpg" alt="A screenshot of dog making a DNS request">

  <hr>

  <div>
    <p>Doge <em>can</em> look up!</p>
    <p><strong>doge</strong> is a command-line DNS client, like <code>dig</code> forked from the amazing work done <a href="https://github.com/ogham/dog">here</a>. It has colourful output, understands normal command-line argument syntax, supports the DNS-over-TLS and DNS-over-HTTPS protocols, and can emit JSON. I believe this is an amazing project and should be improved on.</p>
  </div>

  <h2>Examples</h2>
  <pre>
    <code>doge example.net</code>                          Query a domain using default settings
    <code>doge example.net MX</code>                       ...looking up MX records instead
    <code>doge example.net MX @1.1.1.1</code>              ...using a specific nameserver instead
    <code>doge example.net MX @1.1.1.1 -T</code>           ...using TCP rather than UDP
    <code>doge exapple.net MX @1.1.1.1 -p 53</code>        ...using a nonstandard port
    <code>doge -q example.net -t MX -n 1.1.1.1 -T</code>   As above, but using explicit arguments
  </pre>

  <h2>Command-line options</h2>
  <h3>Query options</h3>
  <pre>
    <code>&lt;arguments&gt;</code>              Human-readable host names, nameservers, types, or classes
    <code>-q, --query=HOST</code>             Host name or domain name to query
    <code>-t, --type=TYPE</code>              Type of the DNS record being queried (A, MX, NS...)
    <code>-n, --nameserver=ADDR</code>        Address of the nameserver to send packets to
    <code>-p, --port=PORT</code>                Port options for sending queries on nonstandard ports
    <code>--class=CLASS</code>                 Network class of the DNS record being queried (IN, CH, HS)
  </pre>

  <!-- more options -->

  <h2>Installation</h2>
  <div>
    <p>Currently:</p>
    <p>To install dog, you can download a pre-compiled binary, or you can compile it from source. You <em>may</em> be able to install dog using your OS’s package manager, depending on your platform.</p>
    <p>Issues:</p>
    <p>I am not a Rust expert at all, Honestly I'm the opposite, just learning coding. I used <a href="https://github.com/ogham/dog">dog</a> on my Arch system and a few random *nix Laptops that I perpetually fix and break. As such part of this project will be outside of my skill set or ability to work on currently.</p>
    <p>For <strong>Windows</strong> I don't intend on installing Windows 11 anytime soon, So I most likely won't be adding new Windows features.</p>
    <p>For <strong>MacOS</strong> Till I can afford to waste money on a Mac, the workflow for building release packages is the only support macOS is going to get.</p>
    <p>For <strong>Docker</strong>, This is magic as far as I'm concerned. While I learn the spells to use it in a meaningful way expect things to be broken.</p>
    <p>If any of these are things you want to see make a PR and I'll read and merge it, Be on the lookout for some potentially dumb questions from me.</p>
    <p>Packages:</p>
    <p>They exist now !!!</p>
    <pre><code>$ cargo install dns-doge
$ yay -S dns-doge</code></pre>
    <!-- more installation info -->
  </div>