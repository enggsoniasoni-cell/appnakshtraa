using Newtonsoft.Json.Linq;

namespace NakshatraaDiaries.Library;

/// <summary>
/// convertible to JSON
/// </summary>
public interface IToJson
{

    /// <summary>
    /// Converts Type to XML version of it
    /// </summary>
    /// <returns></returns>
    JObject ToJson();

}