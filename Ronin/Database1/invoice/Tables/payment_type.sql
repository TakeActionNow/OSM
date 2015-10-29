CREATE TABLE [invoice].[payment_type] (
    [payment_type_id]    INT           IDENTITY (1, 1) NOT NULL,
    [payment_type_value] NVARCHAR (50) NOT NULL,
    [create_date]        DATETIME      NULL,
    [modify_date]        DATETIME      NULL,
    [delete_date]        DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([payment_type_id] ASC)
);

