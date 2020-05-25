# Cauli Redirect Bug

This project was created to reproduce a bug were a redirect in a `UIWebView` caused the following page to not be able to load all resources while `Cauli` ([Cauli](https://github.com/cauliframework/cauli)) was active.

### Setup

In your terminal go to the project directory an run this command to start a PHP server with a index.php redirecting to another website:

```shell
sh server.sh
```