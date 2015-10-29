CREATE TABLE [planning].[planning_contact_replacement] (
    [planning_contact_replacement_id] INT      IDENTITY (1, 1) NOT NULL,
    [contact_id]                      INT      NULL,
    [contract_formation_id]           INT      NULL,
    [planning_hours_id]               INT      NOT NULL,
    [hour_code_id]                    INT      NOT NULL,
    [replacement_start_time]          DATETIME NOT NULL,
    [replacement_end_time]            DATETIME NOT NULL,
    [create_date]                     DATETIME NULL,
    [delete_date]                     DATETIME NULL,
    CONSTRAINT [PK_planning_contact_replacement] PRIMARY KEY CLUSTERED ([planning_contact_replacement_id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_planning_contact_replacement_contact] FOREIGN KEY ([contact_id]) REFERENCES [contact].[contact] ([contact_id]),
    CONSTRAINT [FK_planning_contact_replacement_contract_formation] FOREIGN KEY ([contract_formation_id]) REFERENCES [contract].[contract_formation] ([contract_formation_id]),
    CONSTRAINT [FK_planning_contact_replacement_hour_code] FOREIGN KEY ([hour_code_id]) REFERENCES [planning].[hour_code] ([hour_code_id]),
    CONSTRAINT [FK_planning_contact_replacement_planning] FOREIGN KEY ([planning_hours_id]) REFERENCES [planning].[planning_hours] ([planning_hours_id])
);

