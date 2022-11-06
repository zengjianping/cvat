---
title: 'Social account authentication'
linkTitle: 'Social account authentication'
weight: 50
description: 'Instructions on how to enable social accounts authentication.'
---

<!--lint disable heading-style-->

## About social accounts authentication

## Enable authentication with a Google account

There are 2 basic steps to enable Google account authentication.

1. Setup Google OAuth application:
  Go to the Google Cloud console, then create a project, select APIs & Services and the OAuth consent screen, submit `create` and choose the required `user type`. Fill required fields and on the second step of app registration select `auth/userinfo.email`, `auth/userinfo.profile`, and `openid` scopes.
  For more information please see [here](https://developers.google.com/workspace/guides/configure-oauth-consent).
  After you have configured the Google OAuth consent screen you need to go to `Credentials` tab and create `OAuth client ID` credentials. Select `Web application` type, set an application name, and configure authorized JavaScript origins & redirect URIs. (e.g. if you plan to deploy CVAT instance on https://localhost:8080, add `https://localhost:8080` to authorized JS origins and `https://localhost:8080/api/auth/google/login/callback/` to redirect URIs). Please make sure  this URL matches `GOOGLE_CALLBACK_URL` settings variable on the server.

1. Set environment variables and up CVAT (e.g use docker-compose.override.yml).

  ```yaml
    version: '3.3'

    services:
      cvat_server:
        environment:
          USE_ALLAUTH_SOCIAL_ACCOUNTS: "True"
          SOCIAL_AUTH_GOOGLE_CLIENT_ID: "<YOUR_GOOGLE_CLIENT_ID>"
          SOCIAL_AUTH_GOOGLE_CLIENT_SECRET: "<YOUR_GOOGLE_CLIENT_SECRET>"
  ```

  ```bash
  docker-compose -f docker-compose.yml -f docker-compose.override.yml up -d
  ```


## Enable authentication with a Github account

There are 2 basic steps to enable Github account authentication.

1. Register a new Github OAuth application:
  Go to developer settings -> OAuth apps -> New OAuth app. After that complete the registration form. Set homepage URL (e.g `https://localhost:8080`) and authorization callback URL (e.g `https://localhost:8080/api/auth/github/login/callback/`). Please make sure this URL matches `GITHUB_CALLBACK_URL` settings variable on the server.
  For more information please see [here](https://docs.github.com/en/developers/apps/building-oauth-apps/creating-an-oauth-app).

  Note, you can also configure [Github App](https://docs.github.com/en/developers/apps/building-github-apps/creating-a-github-app), but don't forget to add required permissions (permissions & events -> account permissions -> email addresses set to read).

1. Set environment variables and up CVAT (e.g use docker-compose.override.yml).

  ```yaml
    version: '3.3'

    services:
      cvat_server:
        environment:
          USE_ALLAUTH_SOCIAL_ACCOUNTS: "True"
          SOCIAL_AUTH_GITHUB_CLIENT_ID: "<YOUR_GITHUB_CLIENT_ID>"
          SOCIAL_AUTH_GITHUB_CLIENT_SECRET: "<YOUR_GITHUB_CLIENT_SECRET>"
  ```

  ```bash
  docker-compose -f docker-compose.yml -f docker-compose.override.yml up -d
  ```
