FROM mcr.microsoft.com/dotnet/framework/sdk:4.8

WORKDIR /app

COPY . .
RUN nuget restore .
RUN msbuild WarpPro.sln /p:Configuration=Release /p:Platform=x64
CMD dir /s
