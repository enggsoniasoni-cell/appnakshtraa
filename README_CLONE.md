Nakshatraa diaries - local helper

This folder is a fresh copy of a project renamed from VedAstro.

Quick start

1) Create the solution and add projects (requires dotnet SDK):

   ./create_solution.sh

2) Restore and build:

   dotnet restore
   dotnet build

Notes
- The repository here is a fresh git repo (no upstream). Add a remote if you need one.
- Code namespaces, RootNamespace and AssemblyName were changed to `NakshatraaDiaries`.
- Display strings were updated to "Nakshatraa diaries" in README/LICENSE and HTML files.

If you want me to also regenerate project GUIDs or create CI configs, tell me and I'll do it.
