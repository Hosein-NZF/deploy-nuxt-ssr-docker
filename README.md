# Deploy Nuxt SSR with docker

Here are those changes to need to be made in the nuxt.config.js file.

```js
module.exports = {
  server: {
    host: process.env.NUXT_HOST,
    port: process.env.NUXT_PORT,
  },
};
```

Just add these files to your project and run this command:
```bash
docker compose up -d --build
```

## References

For more information, please see this 
 <a href="https://manascode.com/how-to-deploy-nuxt-ssr-to-digital-ocean-using-docker-compose-and-nginx/" target="_blank">tutorial </a>
