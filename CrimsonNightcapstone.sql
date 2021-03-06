USE [master]
GO
/****** Object:  Database [CrimsonNight]    Script Date: 9/4/2018 9:46:27 AM ******/
CREATE DATABASE [CrimsonNight]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CrimsonNight', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\CrimsonNight.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CrimsonNight_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\CrimsonNight_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [CrimsonNight] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CrimsonNight].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CrimsonNight] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CrimsonNight] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CrimsonNight] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CrimsonNight] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CrimsonNight] SET ARITHABORT OFF 
GO
ALTER DATABASE [CrimsonNight] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CrimsonNight] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [CrimsonNight] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CrimsonNight] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CrimsonNight] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CrimsonNight] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CrimsonNight] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CrimsonNight] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CrimsonNight] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CrimsonNight] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CrimsonNight] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CrimsonNight] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CrimsonNight] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CrimsonNight] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CrimsonNight] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CrimsonNight] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CrimsonNight] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CrimsonNight] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CrimsonNight] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CrimsonNight] SET  MULTI_USER 
GO
ALTER DATABASE [CrimsonNight] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CrimsonNight] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CrimsonNight] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CrimsonNight] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [CrimsonNight]
GO
/****** Object:  StoredProcedure [dbo].[Sp_CreateAbility]    Script Date: 9/4/2018 9:46:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Matthew Powell
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_CreateAbility]
	-- Add the parameters for the stored procedure here
	@AbilityName varchar(255),
	@Effect varchar(255)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into Abilities (AbilityName, Effect)
		values (@AbilityName, @Effect)
END

GO
/****** Object:  StoredProcedure [dbo].[Sp_CreateCharacter]    Script Date: 9/4/2018 9:46:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Matthew Powell
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_CreateCharacter]
	-- Add the parameters for the stored procedure here
	@CharacterName varchar(255),
	@Age int,
	@Culture varchar(255),
	@Race varchar(255),
	@Health int,
	@Experience int,
	@Wisdom int,
	@Purity int,
	@Wickedness int,
	@Virtue int,
	@Vir1 int,
	@Vir2 int,
	@Vice Varchar(255),
	@Vic1 int,
	@Vic2 int,
	@Might int,
	@Psyche int,
	@Guile int,
	@Presence int,
	@Dexterity int,
	@Armament int,
	@Intimidate int,
	@Resilience int,
	@Brawn int,
	@Athletics int,
	@Linguistics int,
	@Disipline int,
	@Lore int,
	@Forteana int,
	@Sorcery int,
	@Appraise int,
	@Looting int,
	@Wilder int,
	@Trickery int,
	@Stealth int,
	@Charm int,
	@Composure int,
	@Leadership int,
	@Perform int,
	@Alchemy int,
	@Perception int,
	@Husbandry int,
	@Prowess int,
	@Survival int,
	@Proficiency int,
	@Soulbound_Weapon int,
	@AbilityOne int,
	@AbilityTwo int,
	@AbilityThree int,
	@AbilityFour int,
	@OwningPLayer int

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into [Character] (CharacterName, Age, Culture, Race, Health, Experience, Wisdom, Purity, Wickedness,
	Virtue, Vir1, Vir2, Vice, Vic1, Vic2, Might, Psyche, Guile, Presence, Dexterity, Armament, Intimidate, Resilience,
	Brawn, Athletics, Linguistics, Disipline, Lore, Forteana, Sorcery, Appraise, Looting, Wilder, Trickery, Stealth,
	Charm, Composure, Leadership, Perform, Alchemy, Perception, Husbandry, Prowess, Survival, Proficiency, Soulbound_Weapon,
	AbilityOne, AbilityTwo, AbilityThree, AbilityFour, OwningPLayer) 
		values (@CharacterName, @Age, @Culture, @Race, @Health, @Experience, @Wisdom, @Purity, @Wickedness,
	@Virtue, @Vir1, @Vir2, @Vice, @Vic1, @Vic2, @Might,	@Psyche, @Guile, @Presence,	@Dexterity,	@Armament,
	@Intimidate, @Resilience, @Brawn, @Athletics, @Linguistics,	@Disipline,	@Lore, @Forteana, @Sorcery,
	@Appraise, @Looting, @Wilder, @Trickery, @Stealth, @Charm, @Composure, @Leadership,	@Perform, @Alchemy,	@Perception,
	@Husbandry,	@Prowess, @Survival, @Proficiency, @Soulbound_Weapon, @AbilityOne, @AbilityTwo,	@AbilityThree, @AbilityFour,
	@OwningPLayer)
END

GO
/****** Object:  StoredProcedure [dbo].[Sp_CreateGroup]    Script Date: 9/4/2018 9:46:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Matthew Powell
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_CreateGroup]
	-- Add the parameters for the stored procedure here
	@GroupName varchar(255),
	@Oracle int,
	@CharacterOne int,
	@CharacterTwo int,
	@CharacterThree int,
	@CharacterFour int,
	@CharacterFive int,
	@CharacterSix int,
	@CharacterSeven int,
	@CharacterEight int,
	@CharacterNine int

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into [Group] (GroupName, Oracle, CharacterOne, CharacterTwo, CharacterThree, CharacterFour, CharacterFive, CharacterSix, CharacterSeven, CharacterEight, CharacterNine)
		values (@GroupName, @Oracle, @CharacterOne, @CharacterTwo, @CharacterThree, @CharacterFour, @CharacterFive, @CharacterSix, @CharacterSeven, @CharacterEight, @CharacterNine)
END

GO
/****** Object:  StoredProcedure [dbo].[Sp_CreateUserOracle]    Script Date: 9/4/2018 9:46:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Matthew Powell
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_CreateUserOracle]
	-- Add the parameters for the stored procedure here
	@UserName varchar(255),
	@Password varchar(255)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into Users (Username, [Password], Role_ID)	
		values (@Username, @Password, 3)
END

GO
/****** Object:  StoredProcedure [dbo].[Sp_CreateUserPlayer]    Script Date: 9/4/2018 9:46:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Matthew Powell
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_CreateUserPlayer]
	-- Add the parameters for the stored procedure here
	@UserName varchar(255),
	@Password varchar(255)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into Users (Username, [Password], Role_ID)	
		values (@Username, @Password, 4)
END

GO
/****** Object:  StoredProcedure [dbo].[Sp_CreateWeapon]    Script Date: 9/4/2018 9:46:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Matthew Powell
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_CreateWeapon]
	-- Add the parameters for the stored procedure here
	@WeaponName varchar(255),
	@Soulbound varchar(255)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into Weapons (WeaponName, Soulbound)
		values (@WeaponName, @Soulbound)
END

GO
/****** Object:  StoredProcedure [dbo].[Sp_DeleteAbilities]    Script Date: 9/4/2018 9:46:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Matthew Powell
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_DeleteAbilities] 
	-- Add the parameters for the stored procedure here
	@Ability_ID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Delete From Abilities
		where Ability_ID = @Ability_ID 
END

GO
/****** Object:  StoredProcedure [dbo].[Sp_DeleteCharacter]    Script Date: 9/4/2018 9:46:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Matthew Powell
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_DeleteCharacter]
	-- Add the parameters for the stored procedure here
	@Character_ID int

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Delete From [Character]
		where Character_ID = @Character_ID


END

GO
/****** Object:  StoredProcedure [dbo].[Sp_DeleteGroup]    Script Date: 9/4/2018 9:46:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Matthew Powell
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_DeleteGroup]
	-- Add the parameters for the stored procedure here
	@Group_ID int

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Delete From [Group]
		where Group_ID = @Group_ID


END

GO
/****** Object:  StoredProcedure [dbo].[Sp_DeleteUser]    Script Date: 9/4/2018 9:46:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Matthew Powell
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_DeleteUser]
	-- Add the parameters for the stored procedure here
	@User_ID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Delete from Users
		where User_ID = @User_ID
END

GO
/****** Object:  StoredProcedure [dbo].[Sp_DeleteWeapon]    Script Date: 9/4/2018 9:46:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Matthew Powell
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_DeleteWeapon] 
	-- Add the parameters for the stored procedure here
	@Weapon_ID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Delete From Weapons
		where Weapon_ID = @Weapon_ID 
END

GO
/****** Object:  StoredProcedure [dbo].[Sp_Login]    Script Date: 9/4/2018 9:46:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Matthew Powell
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_Login]
	-- Add the parameters for the stored procedure here
	@UserName varchar(255)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Select Users.User_ID, Users.Username, Users.[Password], Roles.Role_ID, Roles.RoleName
	from Users
		left join Roles on Users.Role_ID = Roles.Role_ID
		where UserName = @UserName
END

GO
/****** Object:  StoredProcedure [dbo].[Sp_UpdateAbility]    Script Date: 9/4/2018 9:46:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Matthew Powell
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_UpdateAbility]
	-- Add the parameters for the stored procedure here
	@Ability_ID int,
	@AbilityName varchar(255),
	@Effect varchar(255)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update Abilities
		set	AbilityName = @AbilityName, Effect = @Effect
		where Ability_ID = @Ability_ID
END

GO
/****** Object:  StoredProcedure [dbo].[Sp_UpdateCharacter]    Script Date: 9/4/2018 9:46:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Matthew Powell
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_UpdateCharacter]
	-- Add the parameters for the stored procedure here
	@Character_ID int,
	@CharacterName varchar(255),
	@Age int,
	@Culture varchar(255),
	@Race varchar(255),
	@Health int,
	@Experience int,
	@Wisdom int,
	@Purity int,
	@Wickedness int,
	@Virtue int,
	@Vir1 int,
	@Vir2 int,
	@Vice Varchar(255),
	@Vic1 int,
	@Vic2 int,
	@Might int,
	@Psyche int,
	@Guile int,
	@Presence int,
	@Dexterity int,
	@Armament int,
	@Intimidate int,
	@Resilience int,
	@Brawn int,
	@Athletics int,
	@Linguistics int,
	@Disipline int,
	@Lore int,
	@Forteana int,
	@Sorcery int,
	@Appraise int,
	@Looting int,
	@Wilder int,
	@Trickery int,
	@Stealth int,
	@Charm int,
	@Composure int,
	@Leadership int,
	@Perform int,
	@Alchemy int,
	@Perception int,
	@Husbandry int,
	@Prowess int,
	@Survival int,
	@Proficiency int,
	@Soulbound_Weapon int,
	@AbilityOne int,
	@AbilityTwo int,
	@AbilityThree int,
	@AbilityFour int,
	@OwningPLayer int

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update [Character]
	set CharacterName = @CharacterName, Age = @Age, Culture = @Culture, Race = @Race, Health = @Health, Experience = @Experience, Wisdom = @Wisdom, Purity = @Purity, Wickedness = @Wickedness,
	Virtue = @Virtue, Vir1 = @Vir1, Vir2 = @Vir2, Vice = @Vice, Vic1 = @Vic1, Vic2 = @Vic2, Might = @Might, Psyche = @Psyche, Guile = @Guile, Presence = @Presence, Dexterity = @Dexterity, Armament = @Armament, Intimidate = @Intimidate, Resilience = @Resilience,
	Brawn = @Brawn, Athletics = @Athletics, Linguistics = @Linguistics, Disipline = @Disipline, Lore = @Lore, Forteana = @Forteana, Sorcery = @Sorcery, Appraise = @Appraise, Looting = @Looting, Wilder = @Wilder, Trickery = @Trickery, Stealth = @Stealth,
	Charm = @Charm, Composure = @Composure, Leadership = @Leadership, Perform = @Perform, Alchemy = @Alchemy, Perception = @Perception, Husbandry = @Husbandry, Prowess = @Prowess, Survival = @Survival, Proficiency = @Proficiency, Soulbound_Weapon = @Soulbound_Weapon,
	AbilityOne = @AbilityOne, AbilityTwo = @AbilityTwo, AbilityThree = @AbilityThree, AbilityFour = @AbilityFour, OwningPLayer = @OwningPlayer
		where Character_ID = @Character_ID
END

GO
/****** Object:  StoredProcedure [dbo].[Sp_UpdateGroup]    Script Date: 9/4/2018 9:46:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_UpdateGroup] 
	-- Add the parameters for the stored procedure here
	@Group_Id int,
	@GroupName varchar(255),
	@Oracle int,
	@CharacterOne int,
	@CharacterTwo int,
	@CharacterThree int,
	@CharacterFour int,
	@CharacterFive int,
	@CharacterSix int,
	@CharacterSeven int,
	@CharacterEight int,
	@CharacterNine int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update [Group]
	set GroupName = @GroupName, Oracle = @Oracle, CharacterOne = @CharacterOne, CharacterTwo = @CharacterTwo, CharacterThree = @CharacterThree,
	CharacterFour = @CharacterFour, CharacterFive = @CharacterFive, CharacterSix = @CharacterSix, CharacterSeven = @CharacterSeven,
	CharacterEight = @CharacterEight, CharacterNine = @CharacterNine
		where Group_ID = @Group_ID
END

GO
/****** Object:  StoredProcedure [dbo].[Sp_UpdateUser]    Script Date: 9/4/2018 9:46:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Matthew Powell
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_UpdateUser]
	-- Add the parameters for the stored procedure here
	@User_ID int,
	@Username varchar(255),
	@Password varchar(255),
	@Role_ID int

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Update Users
		set Username = @Username, [Password] = @Password, Role_ID = @Role_ID	
		where User_ID = @User_ID


END

GO
/****** Object:  StoredProcedure [dbo].[Sp_UpdateWeapon]    Script Date: 9/4/2018 9:46:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Matthew Powell
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_UpdateWeapon]
	-- Add the parameters for the stored procedure here
	@Weapon_ID int,
	@WeaponName varchar(255),
	@Soulbound varchar(255)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update Weapons
		set	WeaponName = @WeaponName, Soulbound = @Soulbound
		where Weapon_ID = @Weapon_ID
END

GO
/****** Object:  StoredProcedure [dbo].[Sp_ViewAbilities]    Script Date: 9/4/2018 9:46:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Matthew Powell
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_ViewAbilities]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select Abilities.Ability_ID, Abilities.AbilityName, Abilities.Effect
		from Abilities
END

GO
/****** Object:  StoredProcedure [dbo].[Sp_ViewCharacters]    Script Date: 9/4/2018 9:46:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Matthew Powell
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_ViewCharacters]
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Select [Character].Character_ID, [Character].CharacterName, [Character].Culture, [Character].Race 
		from [Character]
END

GO
/****** Object:  StoredProcedure [dbo].[Sp_ViewGroups]    Script Date: 9/4/2018 9:46:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Matthew Powell
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_ViewGroups]
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Select [Group].Group_ID, [Group].GroupName, Users.Username
		from [Group]
		left join Users on [Group].Oracle = Users.User_ID
END

GO
/****** Object:  StoredProcedure [dbo].[Sp_ViewSingleAbility]    Script Date: 9/4/2018 9:46:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Matt p
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_ViewSingleAbility] 
	-- Add the parameters for the stored procedure here
	@Ability_ID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT Abilities.AbilityName, Abilities.Effect
		from Abilities
			where Ability_ID = @Ability_ID
END

GO
/****** Object:  StoredProcedure [dbo].[Sp_ViewSingleCharacter]    Script Date: 9/4/2018 9:46:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Matthew Powell
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_ViewSingleCharacter]
	-- Add the parameters for the stored procedure here
	@Character_ID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Select [Character].Character_ID, [Character].CharacterName, [Character].Age, [Character].Culture, [Character].Race, [Character].Health,
	[Character].Experience, [Character].Wisdom, [Character].Purity, [Character].Wickedness, [Character].Virtue, [Character].Vir1, [Character].Vir2,
	[Character].Vice, [Character].Vic1, [Character].Vic2, [Character].Might, [Character].Psyche, [Character].Guile, [Character].Presence, [Character].Dexterity,
	[Character].Armament, [Character].Intimidate, [Character].Resilience, [Character].Brawn, [Character].Athletics, [Character].Linguistics, [Character].Disipline,
	[Character].Lore, [Character].Forteana, [Character].Sorcery, [Character].Appraise, [Character].Looting, [Character].Wilder, [Character].Trickery, [Character].Stealth,
	[Character].Charm, [Character].Composure, [Character].Leadership, [Character].Perform, [Character].Alchemy, [Character].Perception, [Character].Husbandry, [Character].Prowess,
	[Character].Survival, [Character].Proficiency, Weapons.WeaponName, AOne.AbilityName, ATwo.AbilityName, AThree.AbilityName, AFour.AbilityName, 
	Users.Username
		from [Character]
			left join Weapons on [Character].Soulbound_Weapon = Weapons.Weapon_ID
			left join Abilities as AOne on [Character].AbilityOne = AOne.Ability_ID
			left join Abilities as ATwo on [Character].AbilityTwo = ATwo.Ability_ID
			left join Abilities as AThree on [Character].AbilityThree = AThree.Ability_ID
			left join Abilities as AFour on [Character].AbilityFour = AFour.Ability_ID
			left join Users on [Character].OwningPlayer = Users.User_ID
				where Character_ID = @Character_ID

END

GO
/****** Object:  StoredProcedure [dbo].[Sp_ViewSingleGroup]    Script Date: 9/4/2018 9:46:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_ViewSingleGroup]
	-- Add the parameters for the stored procedure here
	@Group_ID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select [Group].Group_ID, [Group].GroupName, A.Username, B.Username, C.Username, D.Username, E.Username,
	F.Username, G.Username, H.Username, I.Username, J.Username
		from [Group]
		left join Users as A on [Group].Oracle = A.User_ID
		left join Users as B on [Group].CharacterOne = B.User_ID
		left join Users as C on [Group].CharacterTwo = C.User_ID
		left join Users as D on [Group].CharacterThree = D.User_ID
		left join Users as E on [Group].CharacterFour = E.User_ID
		left join Users as F on [Group].CharacterFive = F.User_ID
		left join Users as G on [Group].CharacterSix = G.User_ID
		left join Users as H on [Group].CharacterSeven = H.User_ID
		left join Users as I on [Group].CharacterEight = I.User_ID
		left join Users as J on [Group].CharacterNine = J.User_ID
		where Group_ID = @Group_ID
END

GO
/****** Object:  StoredProcedure [dbo].[Sp_ViewSingleUser]    Script Date: 9/4/2018 9:46:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Matt p
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_ViewSingleUser]
	-- Add the parameters for the stored procedure here
	@User_ID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT Users.User_ID, Users.Username, Users.[Password], Users.Role_ID
		from Users
			left join Roles on Users.Role_ID = Roles.Role_ID
			where User_ID = @User_ID
END

GO
/****** Object:  StoredProcedure [dbo].[Sp_ViewSingleWeapon]    Script Date: 9/4/2018 9:46:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Matt p
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_ViewSingleWeapon] 
	-- Add the parameters for the stored procedure here
	@Weapon_ID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT Weapons.WeaponName, Weapons.Soulbound
		from Weapons
			where Weapon_ID = @Weapon_ID
END

GO
/****** Object:  StoredProcedure [dbo].[Sp_ViewUsers]    Script Date: 9/4/2018 9:46:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Matthew Powell
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_ViewUsers]
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select Users.User_ID, Users.Username, Users.[Password], Users.Role_ID
		from Users
			left join Roles on Users.Role_ID = Roles.Role_ID


END

GO
/****** Object:  StoredProcedure [dbo].[Sp_ViewWeapons]    Script Date: 9/4/2018 9:46:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Matthew Powell
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_ViewWeapons]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select Weapons.Weapon_ID, Weapons.Weapon_ID, Weapons.Soulbound
		from Weapons
END

GO
/****** Object:  Table [dbo].[Abilities]    Script Date: 9/4/2018 9:46:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Abilities](
	[Ability_ID] [int] IDENTITY(1,1) NOT NULL,
	[AbilityName] [varchar](255) NULL,
	[Effect] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Ability_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Character]    Script Date: 9/4/2018 9:46:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Character](
	[Character_ID] [int] IDENTITY(1,1) NOT NULL,
	[CharacterName] [varchar](255) NULL,
	[Age] [int] NULL,
	[Culture] [varchar](255) NULL,
	[Race] [varchar](255) NULL,
	[Health] [int] NULL,
	[Experience] [int] NULL,
	[Wisdom] [int] NULL,
	[Purity] [int] NULL,
	[Wickedness] [int] NULL,
	[Virtue] [varchar](255) NULL,
	[Vir1] [int] NULL,
	[Vir2] [int] NULL,
	[Vice] [varchar](255) NULL,
	[Vic1] [int] NULL,
	[Vic2] [int] NULL,
	[Might] [int] NULL,
	[Psyche] [int] NULL,
	[Guile] [int] NULL,
	[Presence] [int] NULL,
	[Dexterity] [int] NULL,
	[Armament] [int] NULL,
	[Intimidate] [int] NULL,
	[Resilience] [int] NULL,
	[Brawn] [int] NULL,
	[Athletics] [int] NULL,
	[Linguistics] [int] NULL,
	[Disipline] [int] NULL,
	[Lore] [int] NULL,
	[Forteana] [int] NULL,
	[Sorcery] [int] NULL,
	[Appraise] [int] NULL,
	[Looting] [int] NULL,
	[Wilder] [int] NULL,
	[Trickery] [int] NULL,
	[Stealth] [int] NULL,
	[Charm] [int] NULL,
	[Composure] [int] NULL,
	[Leadership] [int] NULL,
	[Perform] [int] NULL,
	[Alchemy] [int] NULL,
	[Perception] [int] NULL,
	[Husbandry] [int] NULL,
	[Prowess] [int] NULL,
	[Survival] [int] NULL,
	[Proficiency] [int] NULL,
	[Soulbound_Weapon] [int] NULL,
	[AbilityOne] [int] NULL,
	[AbilityTwo] [int] NULL,
	[AbilityThree] [int] NULL,
	[AbilityFour] [int] NULL,
	[OwningPlayer] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Character_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Group]    Script Date: 9/4/2018 9:46:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Group](
	[Group_ID] [int] IDENTITY(1,1) NOT NULL,
	[GroupName] [varchar](255) NULL,
	[Oracle] [int] NULL,
	[CharacterOne] [int] NULL,
	[CharacterTwo] [int] NULL,
	[CharacterThree] [int] NULL,
	[CharacterFour] [int] NULL,
	[CharacterFive] [int] NULL,
	[CharacterSix] [int] NULL,
	[CharacterSeven] [int] NULL,
	[CharacterEight] [int] NULL,
	[CharacterNine] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Group_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 9/4/2018 9:46:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Roles](
	[Role_ID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [varchar](255) NULL,
	[RoleDescription] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Role_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Users]    Script Date: 9/4/2018 9:46:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[User_ID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](255) NULL,
	[Password] [varchar](255) NULL,
	[Role_ID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[User_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Weapons]    Script Date: 9/4/2018 9:46:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Weapons](
	[Weapon_ID] [int] IDENTITY(1,1) NOT NULL,
	[WeaponName] [varchar](255) NULL,
	[Soulbound] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Weapon_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

GO
INSERT [dbo].[Roles] ([Role_ID], [RoleName], [RoleDescription]) VALUES (1, N'Admin', N'Top User')
GO
INSERT [dbo].[Roles] ([Role_ID], [RoleName], [RoleDescription]) VALUES (2, N'Moderator', N'Power User')
GO
INSERT [dbo].[Roles] ([Role_ID], [RoleName], [RoleDescription]) VALUES (3, N'Oracle', N'User Who has Groups and Group CRUD')
GO
INSERT [dbo].[Roles] ([Role_ID], [RoleName], [RoleDescription]) VALUES (4, N'Player', N'General PLayer Profile')
GO
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

GO
INSERT [dbo].[Users] ([User_ID], [Username], [Password], [Role_ID]) VALUES (1, N'Testplayer', N'Hello', 4)
GO
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Character]  WITH CHECK ADD FOREIGN KEY([AbilityOne])
REFERENCES [dbo].[Abilities] ([Ability_ID])
GO
ALTER TABLE [dbo].[Character]  WITH CHECK ADD FOREIGN KEY([AbilityTwo])
REFERENCES [dbo].[Abilities] ([Ability_ID])
GO
ALTER TABLE [dbo].[Character]  WITH CHECK ADD FOREIGN KEY([AbilityThree])
REFERENCES [dbo].[Abilities] ([Ability_ID])
GO
ALTER TABLE [dbo].[Character]  WITH CHECK ADD FOREIGN KEY([AbilityFour])
REFERENCES [dbo].[Abilities] ([Ability_ID])
GO
ALTER TABLE [dbo].[Character]  WITH CHECK ADD FOREIGN KEY([OwningPlayer])
REFERENCES [dbo].[Users] ([User_ID])
GO
ALTER TABLE [dbo].[Character]  WITH CHECK ADD FOREIGN KEY([Soulbound_Weapon])
REFERENCES [dbo].[Weapons] ([Weapon_ID])
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD FOREIGN KEY([CharacterOne])
REFERENCES [dbo].[Character] ([Character_ID])
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD FOREIGN KEY([CharacterTwo])
REFERENCES [dbo].[Character] ([Character_ID])
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD FOREIGN KEY([CharacterThree])
REFERENCES [dbo].[Character] ([Character_ID])
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD FOREIGN KEY([CharacterFour])
REFERENCES [dbo].[Character] ([Character_ID])
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD FOREIGN KEY([CharacterFive])
REFERENCES [dbo].[Character] ([Character_ID])
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD FOREIGN KEY([CharacterSix])
REFERENCES [dbo].[Character] ([Character_ID])
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD FOREIGN KEY([CharacterSeven])
REFERENCES [dbo].[Character] ([Character_ID])
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD FOREIGN KEY([CharacterEight])
REFERENCES [dbo].[Character] ([Character_ID])
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD FOREIGN KEY([CharacterNine])
REFERENCES [dbo].[Character] ([Character_ID])
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD FOREIGN KEY([Oracle])
REFERENCES [dbo].[Users] ([User_ID])
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD FOREIGN KEY([Role_ID])
REFERENCES [dbo].[Roles] ([Role_ID])
GO
USE [master]
GO
ALTER DATABASE [CrimsonNight] SET  READ_WRITE 
GO
