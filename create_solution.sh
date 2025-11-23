#!/usr/bin/env bash
set -euo pipefail

# Creates a new solution named "Nakshatraa diaries" and adds all .csproj projects
# Usage: ./create_solution.sh

ROOT_DIR="$(cd "$(dirname "$0")" && pwd)"
SLN_NAME="Nakshatraa diaries"
SLN_FILE="$ROOT_DIR/$SLN_NAME.sln"

echo "Creating solution: $SLN_FILE"
cd "$ROOT_DIR"

if ! command -v dotnet >/dev/null 2>&1; then
  echo "dotnet CLI not found. Please install .NET SDK and ensure 'dotnet' is on PATH." >&2
  exit 2
fi

# Create or recreate the solution
if [ -f "$SLN_FILE" ]; then
  echo "Existing solution file found: $SLN_FILE"
  echo "Removing and recreating to ensure a clean solution file."
  rm -f "$SLN_FILE"
fi

dotnet new sln -n "$SLN_NAME"

# Find and add projects (*.csproj) - excludes packages and hidden folders
echo "Searching for .csproj files to add..."
while IFS= read -r -d '' proj; do
  echo "Adding: $proj"
  dotnet sln "$SLN_NAME.sln" add "$proj" || true
done < <(find . -type f -name '*.csproj' -not -path './.git/*' -print0)

echo "Solution created: $SLN_NAME.sln"

echo "Run: dotnet restore && dotnet build in $ROOT_DIR to verify."
exit 0
