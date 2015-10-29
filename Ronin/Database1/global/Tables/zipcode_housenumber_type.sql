CREATE TABLE [global].[zipcode_housenumber_type] (
    [zipcode_housenumber_type_id]    INT           IDENTITY (1, 1) NOT NULL,
    [zipcode_housenumber_type_value] NVARCHAR (50) NOT NULL,
    [create_date]                    DATETIME      NULL,
    [modify_date]                    DATETIME      NULL,
    [delete_date]                    DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([zipcode_housenumber_type_id] ASC)
);

