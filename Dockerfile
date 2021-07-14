FROM mcr.microsoft.com/dotnet/core/sdk:3.1
WORKDIR /app
COPY Devops/bin/Release/netcoreapp3.1/publish .
EXPOSE 5000
CMD ["dotnet", "Devops.dll"]
