module github.com/btcsuite/btcd

require (
	github.com/btcsuite/btcd/btcec/v2 v2.1.1
	github.com/btcsuite/btcd/btcutil v1.1.0
	github.com/btcsuite/btcd/chaincfg/chainhash v1.0.0
	github.com/btcsuite/btclog v0.0.0-20170628155309-84c8d2346e9f
	github.com/btcsuite/go-socks v0.0.0-20170105172521-4720035b7bfd
	github.com/btcsuite/websocket v0.0.0-20150119174127-31079b680792
	github.com/btcsuite/winsvc v1.0.0
	github.com/davecgh/go-spew v1.1.1
	github.com/decred/dcrd/lru v1.0.0
	github.com/jessevdk/go-flags v1.4.0
	github.com/jrick/logrotate v1.0.0
	github.com/syndtr/goleveldb v1.0.1-0.20210819022825-2ae1ddf74ef7
	golang.org/x/crypto v0.0.0-20200622213623-75b288015ac9
)

require (
	github.com/aead/siphash v1.0.1 // indirect
	github.com/decred/dcrd/dcrec/secp256k1/v4 v4.0.1 // indirect
	github.com/golang/snappy v0.0.4 // indirect
	github.com/kkdai/bstream v0.0.0-20161212061736-f391b8402d23 // indirect
)

replace github.com/btcsuite/btcd/btcutil => ./btcutil

// TODO(guggero): Remove this as soon as we have a tagged version of btcec/v2.
replace github.com/btcsuite/btcd/btcec/v2 => ./btcec

// We depend on chainhash as is, so we need to replace to use the version of
// chainhash included in the version of btcd we're building in.
// TODO(guggero): Remove this as soon as we have a tagged version of chainhash.
replace github.com/btcsuite/btcd/chaincfg/chainhash => ./chaincfg/chainhash

// The retract statements below fixes an accidental push of the tags of a btcd
// fork.
retract (
	v0.18.1
	v0.18.0
	v0.17.1
	v0.17.0
	v0.16.5
	v0.16.4
	v0.16.3
	v0.16.2
	v0.16.1
	v0.16.0

	v0.15.2
	v0.15.1
	v0.15.0

	v0.14.7
	v0.14.6
	v0.14.6
	v0.14.5
	v0.14.4
	v0.14.3
	v0.14.2
	v0.14.1

	v0.14.0
	v0.13.0-beta2
	v0.13.0-beta
)

go 1.17
