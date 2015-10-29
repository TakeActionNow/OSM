CREATE TABLE [product].[pattern_cycle_type] (
    [pattern_cycle_type_id]    INT           IDENTITY (1, 1) NOT NULL,
    [pattern_cycle_type_value] NVARCHAR (50) NOT NULL,
    [create_date]              DATETIME      NULL,
    [modify_date]              DATETIME      NULL,
    [delete_date]              DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([pattern_cycle_type_id] ASC)
);

