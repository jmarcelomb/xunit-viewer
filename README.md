# XUnit Viewer Docker Container

This Dockerfile creates a container based on Node.js Alpine Linux, specifically version 21.6.2-alpine3.18, with the XUnit Viewer installed globally. XUnit Viewer is a tool for visualizing XUnit test results.

## Version: **0.0.1**

## Getting Started

To use this Docker container, you'll need Docker installed on your machine. Once installed, you can build and run this container to keep it running indefinitely, making it ideal for continuous integration environments or as part of a larger application stack.

### Prerequisites

- Docker

### Building the Docker Image

Clone this repository and navigate to the directory containing the Dockerfile. Build the Docker image using:

```bash
docker build -t xunit-viewer:latest .
```

### Running the Container

To run the container, use:

```bash
docker run -d xunit-viewer:latest
```

The container will start and execute the command to sleep indefinitely. This setup is useful for keeping the container running while using `docker exec` to interact with it as needed.

## Usage

Once the container is running, you can execute XUnit Viewer commands within the container. For example, to generate a report:

```bash
docker cp $file_to_convert_name $container_id:/app/$random_dir
docker exec -it xunit-viewer sh -c "xunit-viewer -r $file_to_convert_name -o $filename.html"
docker cp $container_id:/app/$filename.html .
```

Replace `<container_id>` with your container's ID, and adjust the paths as necessary.

## Built With

- [Node.js](https://nodejs.org/) - The runtime environment
- [XUnit Viewer](https://www.npmjs.com/package/xunit-viewer) - The tool for visualizing XUnit test results

## Authors

- **Your Name**

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Acknowledgments

- Thanks to the creators of Node.js and XUnit Viewer for their fantastic tools.
```

This README.md template provides a basic overview, instructions for building and running the Docker container, and how to use it for XUnit Viewer. Modify the `**Your Name**` and any specific paths or commands according to your project's requirements.