CREATE TABLE [contact].[contact_organizational_unit_job_rel] (
    [contact_organizational_unit_job_id] INT      IDENTITY (1, 1) NOT NULL,
    [contact_service_role_id]            INT      NOT NULL,
    [organizational_unit_id]             INT      NOT NULL,
    [job_id]                             INT      NULL,
    [create_date]                        DATETIME NULL,
    [modify_date]                        DATETIME NULL,
    [delete_date]                        DATETIME NULL,
    CONSTRAINT [PK_contact_organisation_role_rel] PRIMARY KEY CLUSTERED ([contact_organizational_unit_job_id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_contact_organisation_job_rel_job1] FOREIGN KEY ([job_id]) REFERENCES [organisation].[job] ([job_id]),
    CONSTRAINT [FK_contact_organisation_rel_contact_service_role_rel] FOREIGN KEY ([contact_service_role_id]) REFERENCES [service].[contact_service_role_rel] ([contact_service_role_id]),
    CONSTRAINT [FK_contact_organisation_rel_organisation] FOREIGN KEY ([organizational_unit_id]) REFERENCES [organisation].[organizational_unit] ([organizational_unit_id])
);

