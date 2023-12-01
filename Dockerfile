# Use the official .NET SDK for building
FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build-env

# Set the working directory in the container
WORKDIR /app

# Copy the .csproj file to the container
COPY main.csproj .

# Restore NuGet packages
RUN dotnet restore

# Copy the remaining source code to the container
COPY . .

# Build the application
RUN dotnet publish -c Release -o out

# Build runtime image
FROM mcr.microsoft.com/dotnet/runtime:6.0
WORKDIR /app
COPY --from=build-env /app/out .

# Specify the command to run on container start
CMD ["./main"]
