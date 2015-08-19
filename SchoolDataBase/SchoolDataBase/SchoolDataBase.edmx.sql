
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 08/19/2015 02:06:28
-- Generated from EDMX file: C:\Users\Nathan\Desktop\Entity Framework\SchoolDataBase\SchoolDataBase\SchoolDataBase.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [ModelFirst.School];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Students'
CREATE TABLE [dbo].[Students] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [StudentName] nvarchar(max)  NOT NULL,
    [StudentAge] int  NOT NULL,
    [Height] decimal(18,0)  NOT NULL,
    [Weight] float  NOT NULL,
    [SchoolId] int  NOT NULL
);
GO

-- Creating table 'Schools'
CREATE TABLE [dbo].[Schools] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [SchoolName] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Students'
ALTER TABLE [dbo].[Students]
ADD CONSTRAINT [PK_Students]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Schools'
ALTER TABLE [dbo].[Schools]
ADD CONSTRAINT [PK_Schools]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [SchoolId] in table 'Students'
ALTER TABLE [dbo].[Students]
ADD CONSTRAINT [FK_SchoolStudent]
    FOREIGN KEY ([SchoolId])
    REFERENCES [dbo].[Schools]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SchoolStudent'
CREATE INDEX [IX_FK_SchoolStudent]
ON [dbo].[Students]
    ([SchoolId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------