CREATE TABLE [global].[coordinate] (
    [coordinate_id]        INT              IDENTITY (1, 1) NOT NULL,
    [zipcode_id]           INT              NULL,
    [coordinate_latitude]  DECIMAL (17, 13) NOT NULL,
    [coordinate_longitude] DECIMAL (17, 13) NOT NULL,
    [create_date]          DATETIME         NULL,
    [modify_date]          DATETIME         NULL,
    [delete_date]          DATETIME         NULL,
    PRIMARY KEY CLUSTERED ([coordinate_id] ASC)
);

