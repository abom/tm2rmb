# tm2rmb

Write apps for [Tendermint](https://github.com/tendermint/tendermint) in Javascript and V based on [RMB](https://github.com/threefoldtech/rmb).

It's simply a proxy app for Tendermint that read request replies from message bus. Examples are included for [Javascript](/js) and [V](/v).

Based on Tendermint `0.34.11`.

### Running the node

Assuming you have already installed Tendermint with the target version, you need to compile the Go proxy app.

```
go build
```

Create initial config files:

```
TMHOME=/path/to/config tendermint init
```

Then you can run node with our app and give it a twin id for RMB and an app name:

```
./tm2rmb -config /path/to/config/config.toml -twin 12 -app myapp
```

### Running examples

#### Javascript

#### V