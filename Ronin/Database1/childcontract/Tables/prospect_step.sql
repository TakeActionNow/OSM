CREATE TABLE [childcontract].[prospect_step] (
    [prospect_step_id]              INT            IDENTITY (1, 1) NOT NULL,
    [prospect_step_value]           NVARCHAR (100) NOT NULL,
    [prospect_step_sequence_number] INT            NOT NULL,
    [create_date]                   DATETIME       NULL,
    [modify_date]                   DATETIME       NULL,
    [delete_date]                   DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([prospect_step_id] ASC)
);

