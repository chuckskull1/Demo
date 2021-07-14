FROM mcr.microsoft.com/dotnet/core/sdk:3.1
WORKDIR .
COPY Devops/bin/Debug/netcoreapp3.1/ .
EXPOSE 5000
CMD ["dotnet", "Devops.dll"]
