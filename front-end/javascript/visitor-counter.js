var apiUrl = "https://ltmwupgync.execute-api.us-west-1.amazonaws.com/test/inject-api";

var newUrl = process.argv.slice(2);

if (apiUrl == newUrl) {
    console.log("New API URL has been successfully injected.")
    process.exit(0)
} else {
    console.error("URL's are not the same")
    console.error(`Old URL is ${apiUrl}`)
    console.error(`New URL is ${newUrl}`)
    process.exit(1)
}
