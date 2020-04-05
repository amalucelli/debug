# debug

This is a small container that is useful for debugging things in a docker runtime.

## Building

Is simple as:

```sh
make build release
```

## Running

If you want to spin up a container for debugging things in a Kubernetes, do:

```sh
$ kubectl run -i --tty --rm debug --image=amalucelli/debug --restart=Never -- bash
```

Or, if you need to investigate some network issue, you can also attach the host's network namespace with:

```sh
$ kubectl run -i --tty --overrides='{"spec":{"hostNetwork":true}}' --image=amalucelli/debug --restart=Never -- bash
```
