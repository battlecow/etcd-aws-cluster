package etcd

import (
	"os"
)

func env(name, defaults string) string {
	val := os.Getenv(name)
	if val == "" {
		return defaults
	}
	return val
}

func GetEnvConfig() Config {
	return Config{
		EnvFile:        env("ETCD_ENV_FILE", "/etc/etcd/config"),
		ClientScheme:   env("ETCD_CLIENT_SCHEME", "http"),
		ClientPort:     env("ETCD_CLIENT_PORT", "2379"),
		PeerScheme:     env("ETCD_PEER_SCHEME", "http"),
		PeerPort:       env("ETCD_PEER_PORT", "2380"),
	}
}
