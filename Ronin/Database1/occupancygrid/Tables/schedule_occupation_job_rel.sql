CREATE TABLE [occupancygrid].[schedule_occupation_job_rel] (
    [organizational_unit_occupation_job_id] INT      IDENTITY (1, 1) NOT NULL,
    [day_of_week_id]                        INT      NOT NULL,
    [schedule_base_id]                      INT      NOT NULL,
    [job_id]                                INT      NOT NULL,
    [occupation_hours_id]                   INT      NULL,
    [contact_id]                            INT      NULL,
    [contract_formation_id]                 INT      NULL,
    [create_date]                           DATETIME NULL,
    [delete_date]                           DATETIME NULL,
    CONSTRAINT [PK_organizational_unit_occupation_job_rel] PRIMARY KEY CLUSTERED ([organizational_unit_occupation_job_id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_organizational_unit_occupation_job_rel_contact] FOREIGN KEY ([contact_id]) REFERENCES [contact].[contact] ([contact_id]),
    CONSTRAINT [FK_organizational_unit_occupation_job_rel_day_of_week] FOREIGN KEY ([day_of_week_id]) REFERENCES [global].[day_of_week] ([day_of_week_id]),
    CONSTRAINT [FK_organizational_unit_occupation_job_rel_job] FOREIGN KEY ([job_id]) REFERENCES [organisation].[job] ([job_id]),
    CONSTRAINT [FK_organizational_unit_occupation_job_rel_occupation_hours] FOREIGN KEY ([occupation_hours_id]) REFERENCES [occupancygrid].[occupation_hours] ([occupation_hours_id]),
    CONSTRAINT [FK_organizational_unit_occupation_job_rel_schedule_base] FOREIGN KEY ([schedule_base_id]) REFERENCES [occupancygrid].[schedule_base] ([schedule_base_id]),
    CONSTRAINT [FK_schedule_occupation_job_rel_contract_formation] FOREIGN KEY ([contract_formation_id]) REFERENCES [contract].[contract_formation] ([contract_formation_id])
);

