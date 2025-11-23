using System;
using Azure.Data.Tables;
using Azure;

namespace NakshatraaDiaries.Library
{

    public class CallStatusEntity : ITableEntity
    {
        public string PartitionKey { get; set; }
        public string RowKey { get; set; }
        public DateTimeOffset? Timestamp { get; set; }
        public ETag ETag { get; set; }
        public bool IsRunning { get; set; }
    }
}
