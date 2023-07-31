# gm

## Starting this starter rollup in Gitpod

1. Click this link: https://gitpod.io/new/#/https://github.com/rollkit/gm-starter
2. Set up the Gitpod project
3. Open the terminal in Gitpod
4. Run the following to start the devnet:

```bash
make init
```

5. Keep an eye on the logs for the auth token. When passing the --rollkit.da_config flag later in the tutorial, it will require `auth_token`` to be passed in. The auth token with write permission is required to submit blobs and can be obtained from the logs on local-celestia-devnet before the bridge node starts.

```bash
WARNING: Keep this auth token secret **DO NOT** log this auth token outside of development. CELESTIA_NODE_AUTH_TOKEN=

WARNING: Celestia custom network specified. Only use this option if the node is freshly created and initialized.
**DO NOT** run a custom network over an already-existing node store!

eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJBbGxvdyI6WyJwdWJsaWMiLCJyZWFkIiwid3JpdGUiLCJhZG1pbiJdfQ.a_-CStbScoe_ot8Z1K9YaccvhngeieiSBdgO4uObuvI 
```

6. Open another terminal and set the auth token to the one from your logs:

```bash
export AUTH_TOKEN=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJBbGxvdyI6WyJwdWJsaWMiLCJyZWFkIiwid3JpdGUiLCJhZG1pbiJdfQ.a_-CStbScoe_ot8Z1K9YaccvhngeieiSBdgO4uObuvI 
```

7. Start the rollup with:

```bash
make start
```

8. Shut down the rollup with:

```bash
make stop
```

The auth token is the last string, which you can now set as a variable. (It's long, so don't forget to copy the whole thing!):

**gm** is a blockchain built using Cosmos SDK and Tendermint and created with [Ignite CLI](https://ignite.com/cli).

## Get started

```
ignite chain serve
```

`serve` command installs dependencies, builds, initializes, and starts your blockchain in development.

### Configure

Your blockchain in development can be configured with `config.yml`. To learn more, see the [Ignite CLI docs](https://docs.ignite.com).

### Web Frontend

Ignite CLI has scaffolded a Vue.js-based web app in the `vue` directory. Run the following commands to install dependencies and start the app:

```
cd vue
npm install
npm run serve
```

The frontend app is built using the `@starport/vue` and `@starport/vuex` packages. For details, see the [monorepo for Ignite front-end development](https://github.com/ignite/web).

## Release
To release a new version of your blockchain, create and push a new tag with `v` prefix. A new draft release with the configured targets will be created.

```
git tag v0.1
git push origin v0.1
```

After a draft release is created, make your final changes from the release page and publish it.

### Install
To install the latest version of your blockchain node's binary, execute the following command on your machine:

```
curl https://get.ignite.com/username/gm@latest! | sudo bash
```
`username/gm` should match the `username` and `repo_name` of the Github repository to which the source code was pushed. Learn more about [the install process](https://github.com/allinbits/starport-installer).

## Learn more

- [Ignite CLI](https://ignite.com/cli)
- [Tutorials](https://docs.ignite.com/guide)
- [Ignite CLI docs](https://docs.ignite.com)
- [Cosmos SDK docs](https://docs.cosmos.network)
- [Developer Chat](https://discord.gg/ignite)
