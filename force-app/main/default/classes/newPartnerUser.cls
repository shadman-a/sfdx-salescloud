public with sharing class newPartnerUser {
    public newPartnerUser(Text uname, Text fname, Text lname, Text alias, Text email) {
        Id systemAdminProfileId = [SELECT Id FROM Profile WHERE Name = 'System Administrator' LIMIT 1].Id;

        User userExample = new User();
        userExample.Username = 'emailtest@test.com';
        userExample.FirstName = 'First';
        userExample.LastName = 'Last';
        userExample.Alias = 'Alias';
        userExample.Email = 'emailtest@test.com';
        userExample.TimeZoneSidKey = 'America/New_York';
        userExample.LocaleSidKey = 'en_US';
        userExample.EmailEncodingKey = 'ISO-8859-1';
        userExample.ProfileId = systemAdminProfileId;
        userExample.LanguageLocaleKey = 'en_US';

insert userExample;
    }
}
