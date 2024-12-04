<h1>DOGE</h1>

<p align="center">
  <img src="https://img.shields.io/github/license/Dj-Codeman/doge?style=flat-square&logo=opensourceinitiative&logoColor=white&color=0080ff" alt="license">
  <img href="https://saythanks.io/to/Dj-Codeman" src="https://img.shields.io/badge/Say%20Thanks-!-1EAEDB.svg" alt="Say thanks!" />
  <img src="https://img.shields.io/github/last-commit/Dj-Codeman/doge?style=flat-square&logo=git&logoColor=white&color=0080ff" alt="last-commit">
  <img src="https://img.shields.io/github/languages/top/Dj-Codeman/doge?style=flat-square&color=0080ff" alt="repo-top-language">
  <img src="https://img.shields.io/github/languages/count/Dj-Codeman/doge?style=flat-square&color=0080ff" alt="repo-language-count">
<p>
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
    <h4>Doge <em>can</em> look up!</h4>
    <p><strong>doge</strong> is a command-line DNS client, like <code>dig</code> forked from the amazing work done <a href="https://github.com/ogham/dog">here</a>. It has colourful output, understands normal command-line argument syntax, supports the DNS-over-TLS and DNS-over-HTTPS protocols, and can emit JSON. I believe this is an amazing project and should be improved on.</p>
  </div>

<div>
  <h2>Examples</h2>
  <pre>
    <code>doge example.net</code>                          Query a domain using default settings
    <code>doge example.net MX</code>                       ...looking up MX records instead
    <code>doge example.net MX @1.1.1.1</code>              ...using a specific nameserver instead
    <code>doge example.net MX @1.1.1.1 -T</code>           ...using TCP rather than UDP
    <code>doge exapple.net MX @1.1.1.1 -p 69</code>        ...using a nonstandard port
    <code>doge -q example.net -t MX -n 1.1.1.1 -T</code>   As above, but using explicit arguments
  </pre>

  <h2>Command-line options</h2>
  <div>
    <h3>Query options</h3>
    <pre>
      <code>&lt;arguments&gt;</code>              Human-readable host names, nameservers, types, or classes
      <code>-q, --query=HOST</code>             Host name or domain name to query
      <code>-t, --type=TYPE</code>              Type of the DNS record being queried (A, MX, NS...)
      <code>-n, --nameserver=ADDR</code>        Address of the nameserver to send packets to
      <code>-p, --port=PORT</code>                Port options for sending queries on nonstandard ports
      <code>--class=CLASS</code>                 Network class of the DNS record being queried (IN, CH, HS)
    </pre>
  </div>

  <div>
    <h3>Sending options</h3>
    <pre>
      <code>--edns=SETTING           Whether to OPT in to EDNS (disable, hide, show)
      --txid=NUMBER            Set the transaction ID to a specific value
      -Z=TWEAKS                Set uncommon protocol-level tweaks</code>
    </pre>
  </div>

  <div>
    <h3>Protocol options</h3>
    <pre>
      <code>-U, --udp                Use the DNS protocol over UDP
      -T, --tcp                Use the DNS protocol over TCP
      -S, --tls                Use the DNS-over-TLS protocol
      -H, --https              Use the DNS-over-HTTPS protocol</code>
    </pre>
  </div>

  <div>
    <h3>Output options</h3>
    <pre>
      <code>-1, --short              Short mode: display nothing but the first result
      -J, --json               Display the output as JSON
      --color, --colour=WHEN   When to colourise the output (always, automatic, never)
      --seconds                Do not format durations, display them as seconds
      --time                   Print how long the response took to arrive</code>
    </pre>
  </div>
</div>


  <!-- more options -->

<h2>Installation</h2>
<div>
<h3>Current and Upcoming packages</h3>
    <pre>
        <code>Cargo: cargo install dns-doge
        ArchLinux: yay -S dns_doge
        Ubuntu/Debian: Comming Soon
        RHEL/Fedora/Cenos: Publishing rpm</code>
    </pre>
    
<h3>Docker/Podman</h3>    
    <p>To build the container image of doge, you can use Docker or Podman. Here an example using Docker:</p>
    <code>$ docker build -t doge .</code>
    <p>You can then run it using the following command:</p>
    <code>$ docker run -it --rm doge</code>

  <p>To run doge directly, you can then define the following alias:</p>
  
    <code>$ alias doge="docker run -it --rm doge"</code>

<h3>Notes</h3>
    <p>I am not a Rust expert at all, Honestly I'm the opposite, just learning coding. I used <a href="https://github.com/ogham/dog">dog</a> on my Arch system and a few random *nix Laptops that I perpetually fix and break. As such parts of maintaining and improving this project
    will be outside of my understanding. Learning packaging, docker stuff and CI/CD. I'm too broke for a mac book, and currently refuse to 
    install windows 10/11, Small fixes and improvements I'll try to fix timely but major things especially on my non target machines might
    take awhile - forever to fix ( please drop a PR ) in those cases :). </p>

<h4>Website</h4>
    <p> I will make a website at some point... for the time being nothing to drastic has changed from the dog <a href=" https://dns.lookup.dog">website</a>  
    </p> 
</div>
