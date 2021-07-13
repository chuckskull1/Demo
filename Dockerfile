FROM mcr.microsoft.com/dotnet/core/sdk
WORKDIR .
COPY Devops/bin/Release/netcoreapp3.1/ .
EXPOSE 8990
ENTRYPOINT ["dotnet run Devops.dll"]
