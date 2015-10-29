CREATE TABLE [contract].[finished_hours] (
    [finished_hours_id]             INT      IDENTITY (1, 1) NOT NULL,
    [organizational_unit_id]        INT      NOT NULL,
    [planning_id]                   INT      NULL,
    [planning_hours_id]             INT      NULL,
    [hour_code_id]                  INT      NULL,
    [contact_id]                    INT      NULL,
    [contract_formation_id]         INT      NULL,
    [finished_hours_start_datetime] DATETIME NOT NULL,
    [finished_hours_end_datetime]   DATETIME NOT NULL,
    [create_date]                   DATETIME NULL,
    [delete_date]                   DATETIME NULL,
    CONSTRAINT [PK_finished_hours] PRIMARY KEY CLUSTERED ([finished_hours_id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_finished_hours_contact] FOREIGN KEY ([contact_id]) REFERENCES [contact].[contact] ([contact_id]),
    CONSTRAINT [FK_finished_hours_contract_formation] FOREIGN KEY ([contract_formation_id]) REFERENCES [contract].[contract_formation] ([contract_formation_id]),
    CONSTRAINT [FK_finished_hours_hour_code] FOREIGN KEY ([hour_code_id]) REFERENCES [planning].[hour_code] ([hour_code_id]),
    CONSTRAINT [FK_finished_hours_organisation] FOREIGN KEY ([organizational_unit_id]) REFERENCES [organisation].[organizational_unit] ([organizational_unit_id]),
    CONSTRAINT [FK_finished_hours_planning] FOREIGN KEY ([planning_id]) REFERENCES [planning].[planning] ([planning_id]),
    CONSTRAINT [FK_finished_hours_planning_hours] FOREIGN KEY ([planning_hours_id]) REFERENCES [planning].[planning_hours] ([planning_hours_id])
);

