using System;

namespace VideoStore.Common.Helper
{
    public class CommonConfiguration
    {
        public static CommonConfigurationHelper Configuration;

        static CommonConfiguration()
        {
            Configuration = new CommonConfigurationHelper();
        }
    }
    public class CommonConfigurationHelper
    {
        private const long _timeout = 60L * 60L * 10000000L; //Format: (# Minutes)*(Seconds Multiplier)*(10 000 000). Length of time in ticks (1 hour) reference: 1 tick = 100 nano seconds 
        public TimeSpan TransactionScope_Timeout
        {
            get
            {
                TimeSpan result = new TimeSpan(_timeout);
                return result;
            }
        }
    }
}
