FROM mcr.microsoft.com/dotnet/core/sdk:3.1
COPY Devops/bin/Release/netcoreapp3.1/publish /app
WORKDIR /app
EXPOSE 5000
CMD ["dotnet", "Devops.dll"]
