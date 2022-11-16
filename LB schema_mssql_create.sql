CREATE TABLE [Human] (
	No int(12) NOT NULL,
	ID int(11) NOT NULL,
	Name text(16) NOT NULL,
	Last_Name text(16) NOT NULL,
  CONSTRAINT [PK_HUMAN] PRIMARY KEY CLUSTERED
  (
  [No.] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Bank] (
	Bank_ID int(20) NOT NULL,
	Bank_Account ntext(20) NOT NULL UNIQUE,
	Balance money(32) NOT NULL,
  CONSTRAINT [PK_BANK] PRIMARY KEY CLUSTERED
  (
  [Bank ID] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Contacts] (
	No int(12) NOT NULL,
	Last_Name text(16) NOT NULL,
	Phone_Number int(9) NOT NULL,
  CONSTRAINT [PK_CONTACTS] PRIMARY KEY CLUSTERED
  (
  [No.] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Primary_keys] (
	No int(12) NOT NULL,
	ID int(11) NOT NULL,
	Bank_ID int(20) NOT NULL,
  CONSTRAINT [PK_PRIMARY_KEYS] PRIMARY KEY CLUSTERED
  (
  [No.] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
ALTER TABLE [Human] WITH CHECK ADD CONSTRAINT [Human_fk0] FOREIGN KEY ([No]) REFERENCES [Primary keys]([No.])
ON UPDATE CASCADE
GO
ALTER TABLE [Human] CHECK CONSTRAINT [Human_fk0]
GO
ALTER TABLE [Human] WITH CHECK ADD CONSTRAINT [Human_fk1] FOREIGN KEY ([ID]) REFERENCES [Primary keys]([ID])
ON UPDATE CASCADE
GO
ALTER TABLE [Human] CHECK CONSTRAINT [Human_fk1]
GO



ALTER TABLE [Primary_keys] WITH CHECK ADD CONSTRAINT [Primary_keys_fk0] FOREIGN KEY ([No]) REFERENCES [Contacts]([No.])
ON UPDATE CASCADE
GO
ALTER TABLE [Primary_keys] CHECK CONSTRAINT [Primary_keys_fk0]
GO
ALTER TABLE [Primary_keys] WITH CHECK ADD CONSTRAINT [Primary_keys_fk1] FOREIGN KEY ([ID]) REFERENCES [Bank]([Bank ID])
ON UPDATE CASCADE
GO
ALTER TABLE [Primary_keys] CHECK CONSTRAINT [Primary_keys_fk1]
GO

