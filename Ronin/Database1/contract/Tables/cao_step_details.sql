CREATE TABLE [contract].[cao_step_details] (
    [cao_step_details_id]      INT             IDENTITY (1, 1) NOT NULL,
    [cao_step_id]              INT             NOT NULL,
    [cao_step_valid_startdate] DATETIME        NOT NULL,
    [cao_step_valid_enddate]   DATETIME        NULL,
    [cao_step_monthly_salary]  DECIMAL (10, 2) NULL,
    [create_date]              DATETIME        NULL,
    [modify_date]              DATETIME        NULL,
    [delete_date]              DATETIME        NULL,
    PRIMARY KEY CLUSTERED ([cao_step_details_id] ASC),
    CONSTRAINT [FK_cao_step_details_cao_step] FOREIGN KEY ([cao_step_id]) REFERENCES [contract].[cao_step] ([cao_step_id])
);

