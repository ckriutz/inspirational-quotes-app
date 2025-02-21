# Inspirational Quotes App

This is a simple Flask web application that displays a random inspirational quote fetched from an external API.

## Features

- Fetches a random inspirational quote from the [Quoterism API](https://www.quoterism.com/api/quotes/random)
- Displays the quote, author, and quote ID on a web page
- Uses Bootstrap for styling

## Requirements

- Python 3.9
- Flask 2.0.1
- Requests 2.25.1
- Werkzeug 2.0.1

## Setup

1. Clone the repository:
    ```sh
    git clone https://github.com/ckriutz/inspirational-quotes-app.git
    cd inspirational-quotes-app
    ```

2. Install the dependencies:
    ```sh
    pip install -r requirements.txt
    ```

## Running the App

1. Start the Flask development server:
    ```sh
    flask run
    ```

2. Open your web browser and go to `http://127.0.0.1:5000` to see the app in action.

## Development with Dev Containers

This project includes a [.devcontainer](http://_vscodecontentref_/1) configuration for development with Visual Studio Code Dev Containers.

1. Open the project in Visual Studio Code.
2. When prompted, reopen the project in the container.
3. The container will automatically install the required dependencies and start the Flask development server.

## License

This project is licensed under the MIT License. See the LICENSE file for details.