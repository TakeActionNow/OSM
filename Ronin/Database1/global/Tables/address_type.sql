CREATE TABLE [global].[address_type] (
    [address_type_id]    INT           IDENTITY (1, 1) NOT NULL,
    [address_type_value] NVARCHAR (50) NOT NULL,
    [create_date]        DATETIME      NULL,
    [modify_date]        DATETIME      NULL,
    [delete_date]        DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([address_type_id] ASC)
);

