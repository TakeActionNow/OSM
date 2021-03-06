﻿CREATE TABLE [contact].[contact] (
    [contact_id]                INT            IDENTITY (1, 1) NOT NULL,
    [country_id]                INT            NULL,
    [marital_status_id]         INT            NULL,
    [birth_city_id]             INT            NULL,
    [contact_initials]          NVARCHAR (MAX) NULL,
    [contact_preamble]          NVARCHAR (50)  NULL,
    [contact_givenname]         NVARCHAR (MAX) NULL,
    [contact_surname_prefix]    NVARCHAR (50)  NULL,
    [contact_surname]           NVARCHAR (MAX) NULL,
    [contact_nickname]          NVARCHAR (MAX) NULL,
    [contact_gender]            NVARCHAR (50)  NULL,
    [contact_maidenname_prefix] NVARCHAR (50)  NULL,
    [contact_maidenname]        NVARCHAR (MAX) NULL,
    [contact_birth_date]        DATE           NULL,
    [contact_residence]         NVARCHAR (MAX) NULL,
    [contact_ssn]               NVARCHAR (MAX) NULL,
    [create_date]               DATETIME       NULL,
    [modify_date]               DATETIME       NULL,
    [delete_date]               DATETIME       NULL,
    CONSTRAINT [PK_contact] PRIMARY KEY CLUSTERED ([contact_id] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_contact_city] FOREIGN KEY ([birth_city_id]) REFERENCES [global].[city] ([city_id]),
    CONSTRAINT [FK_contact_country] FOREIGN KEY ([country_id]) REFERENCES [global].[country] ([country_id]),
    CONSTRAINT [FK_contact_marital_status] FOREIGN KEY ([marital_status_id]) REFERENCES [global].[marital_status] ([marital_status_id])
);

