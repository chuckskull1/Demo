FROM mcr.microsoft.com/dotnet/core/sdk
COPY Devops/bin/Debug/netcoreapp3.1/ .
WORKDIR .
EXPOSE 8990
ENTRYPOINT ["dotnet", "Devops.dll"]
