# Flights

Flights is a command-line utility application written in Ruby to scrape selected web pages for the best flight deals of the day. It helps you avoid browsing countless websites for flight information by providing a simple command-line interface that will curate the best deals for you.

![screenshot](./app_screenshot.png)

## How it works

The application is highly configurable through command-line arguments. It uses passed-in options such as Location and Destination to filter search results scraped from web pages. The result is sorted in ascending order of price before display, and the user can navigate between them by issuing pre-configured commands.

## Built With

- Ruby

## Installation

Requirements:

- Ruby >= 2.7.2
- JRuby >= 9.2.0.0
- Nokogiri

Clone the repository to your local machine and run the application from its root directory

```bash

  $ git clone git@github.com:chasscepts/flights.git
  $ cd <flights>
  $ bundle install
  $ bin/main

```

## Command Line options

Flights currently accept the following command-line arguments

- `-from`  -  User Location. Search result will include only flights from the given location.
- `-to`   -  Flight Destination.
- `-today`  -  Include only today's flights

>Examples
```bash

  bin/main Lagos Abuja # Search for flights from Lagos to Abuja
  bin/main Lagos Abuja -today # Search for flights from Lagos to Abuja with a take-off date of today
  bin/main -from Lagos -to Abuja -today # Same as above
  bin/main Abuja -today # Same as above (from defaults to Lagos)

```

## Testing
> Rspec is used for the test.
```bash
  $ rspec
```

## Author Details

👤 **Obetta Francis**

[![](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/chasscepts) [![](https://img.shields.io/badge/Twitter-1DA1F2?style=for-the-badge&logo=twitter&logoColor=white)](https://twitter.com/chasscepts) [![](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/chasscepts/)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](https://github.com/chasscepts/flights/issues).

## Show your support

Give ⭐ Star me on GitHub — it helps!

## Acknowledgments

- Microverse Community.
- All whose codes were used

## 📝 License

This project is [MIT](./LICENSE) licensed.
