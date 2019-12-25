alter table Students
Add constraint [DF_Students_DateOfBirth] default ('1990-01-01') for DateOfBirth;