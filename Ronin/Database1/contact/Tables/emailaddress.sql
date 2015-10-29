CREATE TABLE [contact].[emailaddress] (
    [emailaddress_id]           INT            IDENTITY (1, 1) NOT NULL,
    [emailaddress_value]        NVARCHAR (MAX) NULL,
    [verified_date]             DATETIME       NULL,
    [verification_key]          NVARCHAR (MAX) NULL,
    [create_date]               DATETIME       NULL,
    [modify_date]               DATETIME       NULL,
    [delete_date]               DATETIME       NULL,
    [emailaddress_is_primary]   BIT            DEFAULT ((1)) NOT NULL,
    [verification_request_date] DATETIME       NULL,
    CONSTRAINT [PK_emailaddress] PRIMARY KEY CLUSTERED ([emailaddress_id] ASC) WITH (FILLFACTOR = 90)
);

