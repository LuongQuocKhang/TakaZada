USE [TakaZada]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 12/1/2018 12:37:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ActivityLog]    Script Date: 12/1/2018 12:37:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActivityLog](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Action] [nvarchar](50) NULL,
	[UserId] [int] NULL,
	[IP] [nvarchar](50) NULL,
	[UserAgent] [nvarchar](255) NULL,
	[ActionTime] [datetime] NULL,
 CONSTRAINT [PK_dbo.ActivityLog] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Case]    Script Date: 12/1/2018 12:37:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Case](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Image] [nvarchar](255) NULL,
	[Description] [nvarchar](4000) NULL,
	[WarrantyPeriod] [int] NULL,
	[TradeMark] [nvarchar](25) NULL,
	[Model] [nvarchar](25) NULL,
	[Color] [nvarchar](25) NULL,
	[Size] [nvarchar](255) NULL,
	[MainSupport] [nvarchar](255) NULL,
	[USB] [nvarchar](255) NULL,
	[DriverBays] [nvarchar](255) NULL,
	[Slots] [nvarchar](255) NULL,
	[IsDelete] [bit] NULL,
	[Price] [nvarchar](50) NULL,
 CONSTRAINT [PK_Case] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Computer]    Script Date: 12/1/2018 12:37:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Computer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](1000) NULL,
	[Image] [nvarchar](255) NULL,
	[CPU] [nvarchar](1000) NULL,
	[RAM] [nvarchar](255) NULL,
	[VideoCard] [nvarchar](255) NULL,
	[Hardware] [nvarchar](255) NULL,
	[SlotSupport] [nvarchar](255) NULL,
	[Display] [nvarchar](255) NULL,
	[Port] [nvarchar](255) NULL,
	[Extra] [nvarchar](255) NULL,
	[OS] [nvarchar](255) NULL,
	[Type] [nchar](10) NULL,
	[Trademark] [nchar](10) NULL,
	[Feature] [nvarchar](100) NULL,
	[Color] [nvarchar](30) NULL,
	[CPUSeries] [nchar](255) NULL,
	[ScreenSize] [nvarchar](20) NULL,
	[Resolution] [nvarchar](255) NULL,
	[StandardOfScreen] [nvarchar](50) NULL,
	[Size] [nvarchar](255) NULL,
	[Mass] [nchar](10) NULL,
	[WarrantyPeriod] [int] NULL,
	[IsDeleted] [bit] NULL,
	[Price] [nvarchar](50) NULL,
	[Description] [nvarchar](4000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CPU]    Script Date: 12/1/2018 12:37:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CPU](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Image] [nvarchar](255) NULL,
	[WarrantyPeriod] [int] NULL,
	[TradeMark] [nchar](10) NULL,
	[CPUType] [nvarchar](30) NULL,
	[CPULine] [nvarchar](30) NULL,
	[CoreNum] [int] NULL,
	[ThreadNum] [int] NULL,
	[CoreCPU] [nvarchar](30) NULL,
	[BasicPulse] [nvarchar](30) NULL,
	[MaxPulse] [nvarchar](30) NULL,
	[CacheCPU] [nvarchar](30) NULL,
	[Size] [nvarchar](30) NULL,
	[Description] [nvarchar](4000) NULL,
	[IsDeleted] [bit] NULL,
	[Price] [nvarchar](50) NULL,
 CONSTRAINT [PK_CPU] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hardware]    Script Date: 12/1/2018 12:37:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hardware](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Image] [nvarchar](255) NULL,
	[Description] [nvarchar](4000) NULL,
	[WarrantyPeriod] [int] NULL,
	[TradeMark] [nvarchar](25) NULL,
	[Memory] [nchar](10) NULL,
	[Label] [nchar](10) NULL,
	[ReadSpeed] [nvarchar](255) NULL,
	[WriteSpeed] [nvarchar](255) NULL,
	[Size] [nvarchar](255) NULL,
	[IsDeleted] [bit] NULL,
	[Price] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Keyboard]    Script Date: 12/1/2018 12:37:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Keyboard](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Image] [nvarchar](255) NULL,
	[Description] [nvarchar](4000) NULL,
	[TradeMark] [nvarchar](25) NULL,
	[WarrantyPeriod] [int] NULL,
	[IsDeleted] [bit] NULL,
	[Price] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MainBoard]    Script Date: 12/1/2018 12:37:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MainBoard](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Image] [nvarchar](255) NULL,
	[Description] [nvarchar](4000) NULL,
	[TradeMark] [nvarchar](25) NULL,
	[Type] [nchar](10) NULL,
	[Model] [nvarchar](255) NULL,
	[Chipset] [nvarchar](255) NULL,
	[MaxRamMemory] [nchar](10) NULL,
	[RamType] [nvarchar](255) NULL,
	[RamNum] [int] NULL,
	[HDMINum] [nvarchar](25) NULL,
	[WarrantyPeriod] [int] NULL,
	[IsDeleted] [bit] NULL,
	[Price] [nvarchar](50) NULL,
 CONSTRAINT [PK_MainBoard] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Radiator]    Script Date: 12/1/2018 12:37:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Radiator](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Image] [nvarchar](255) NULL,
	[Description] [nvarchar](4000) NULL,
	[TradeMark] [nvarchar](25) NULL,
	[Label] [nvarchar](25) NULL,
	[Material] [nvarchar](25) NULL,
	[Speed] [nvarchar](255) NULL,
	[Size] [nvarchar](255) NULL,
	[FanSize] [nvarchar](25) NULL,
	[Socket] [nvarchar](1000) NULL,
	[IsDeleted] [bit] NULL,
	[Price] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RAM]    Script Date: 12/1/2018 12:37:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RAM](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Image] [nvarchar](255) NULL,
	[Description] [nvarchar](4000) NULL,
	[TradeMark] [nvarchar](25) NULL,
	[Color] [nchar](10) NULL,
	[RamType] [nchar](10) NULL,
	[Memory] [nchar](10) NULL,
	[BusSpeed] [nvarchar](25) NULL,
	[WarrantyPeriod] [int] NULL,
	[IsDeleted] [bit] NULL,
	[Price] [nvarchar](50) NULL,
 CONSTRAINT [PK_RAM] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserAccount]    Script Date: 12/1/2018 12:37:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAccount](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[Sex] [nvarchar](max) NULL,
	[DateOfBirth] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.UserAccount] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VGA]    Script Date: 12/1/2018 12:37:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VGA](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Image] [nvarchar](255) NULL,
	[TradeMark] [nchar](10) NULL,
	[Label] [nvarchar](30) NULL,
	[ChipsetManufacturer] [nvarchar](30) NULL,
	[Model] [nvarchar](255) NULL,
	[VGA] [nvarchar](255) NULL,
	[BoostClock] [nvarchar](255) NULL,
	[VGAMemory] [nvarchar](10) NULL,
	[RamType] [nvarchar](25) NULL,
	[MaxResolution] [nvarchar](255) NULL,
	[Directx] [nvarchar](25) NULL,
	[Size] [nvarchar](25) NULL,
	[WarrantyPeriod] [int] NULL,
	[IsDeleted] [bit] NULL,
	[Price] [nvarchar](25) NULL,
	[Description] [nvarchar](4000) NULL,
 CONSTRAINT [PK_VGA] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201811290432540_user', N'TakaZada.Core.Migrations.Configuration', 0x1F8B0800000000000400ED5D5B6FE3B8157E2FD0FF60F8A90566E35CBA403B7076E1D893DD60E3891127B340DF18894984D1C5D56536E95FEB437F52FF42495D498ABA1C8994138FB0C062722C7E87A4C873A178CEF9DF7FFE3BFFF9C5B127DFB01F589E7B3E3D393A9E4EB06B78A6E53E9D4FA3F0F187BF4F7FFEE9CF7F9A7F329D97C997ECB933FA1C69E906E7D3E730DC7D9CCD02E3193B2838722CC3F702EF313C323C67864C6F767A7CFC8FD9C9C90C138829C19A4CE6B7911B5A0E8EFF207F2E3DD7C0BB3042F6DA33B11DA474F2CB36469D7C460E0E76C8C0E7D33BF415FD1399E868E9F9F828797E3A59D816227DD962FB713A41AEEB8528243DFD781FE06DE87BEED3764708C8BE7BDD61F2DC23B2039C8EE063F178DBC11C9FD2C1CC8A8619941105A1E700014FCED2D99989CD3BCDF1349F3D327F9FC83C87AF74D4F11C9E4F1746687D23A46BEF693A11F97D5CDA3E7D563ECB474CDB0F13EE890FF9D2202B88FEF761B28CEC30F2F1B98BA3D047F687C9267AB02DE337FC7AE77DC5EEB91BD936DB55D259F21B4720A48DEFEDB01FBEDEE2C7740057ABE964C6B79B890DF3664C9B645C576E78763A9D7C26CCD1838DF395C0CCC1362403FA05BBD847213637280CB14F5EE49589E3B92C711778D149A26F2EE147161FD949D3C91ABD5C63F7297C3E9FFE48B6CEA5F582CD8C9076E1DEB5C8BE236D423FC24D5CC8BAF6AF4C6154F54DAE3643746AF144A6A986D1E98F3F2AE0944CF21D112119AB157959C9DF6CCBF9ACD800B5DB6289681F80FB8136DAE346303B6C0471C968DC08F4FFDA17C295839EF47359E1C0F0AD5DC3C6FEDBF1B18A5DF43BF27DE486AF1BEC5B1E6C8BDFF9C8C46BE47FAD9D11057D8C37806E264BCFF67CDD4CB6D6BFF5AF9F35B2DC6DB4DB79BE7ED178BFBDD0BF1F7C8B988C17E835D0CE6A6B7BA17E2E57C10ADB38CC57C285E7D918B94DCD36BE65D4AD9E0E5AB5BDC6F29C5D4424325C6BA50D47CD55C5AB41739DA891F3C3A8AEE5E65EFF506E176BED03F96299D85B22DFD4CEE957C2E40FE4EB7F3754B60DA5165656B0B3D1AB763E9B2106F3E985C823ED5C6EB6DA5950F8DAED29F04830612CA84DE8D4DB842AF85C62449545BDB019C02A3C53C26473BF25E63786591E1D666D6BF818BB4D46A812198D03CF8E1A5C1845722D44AE4984E8CD63323CDDE70E03D9F041DD6A50B1857A787E99016BEEDF821DD47D6E6F2E533B086A296FEE4723B98AD7011DEF683E7151211AC8526CB01554E9BD6BCBD5CF86ACBCCF91039BE9671F2313DA8A72AA7781940CE8020596B189E2867A3911BC41F82C91F13CC4CC35E86E253C063DBE7D439AB8B5722C3C5EA086CC1A8E6AB28AD701A9C9F12B88288BB1E3F975472A2A34FF357AA8FDD4A282C72DD1ACDB1DC6FACFD67EF7AD100FC36A10AFF03D4A7B221E1FBCF8201528EDB386A3B4AFE2354AFB8EE7A04389ECC3386269BDD5E987E78B4E7B3D6F396EF671B3BFD3CD3EC0D795E68B304A3EE23E5BBB00EBFFAE46006F913388594BF834BC1E3543227CA06746BFAED6574C9B5115295145B7C8B450E8C1EFAB640D474554C56B54446F5C1135F9F06A4E23C8DAF12DA49DCF0179EF97A8F1D3BB92B178C6D75AEDADEA46D97B540BF4EA1854232CD6A332A8E2352A8337AE0C9A2E300D635D2B717E8670142EA2A059E38CE6782E8B5ACADD3856CB30BC88466B01E52FD37694C355BC3E39C8AAB3C5C83F555CB74541F087577B295A0DA34BCB0FC206DDA286D3351A88D1E6D973E93594075C278ED5F0DAE217ED3C6808E4CDE385E587CFE5A8C8D24AEF2435BEFCB2004B0BD266941255BC0EC85A1BEA2A5C9333ADE6FA5372E2BA466EF4880CBA34B5DF391FE62899ECC613ED4C88FD13844B9BB8BD438C076E86763C486E3CB05674043FDC4DFD95E56323AC534DC304D91EA6FDAE645C7BBB3CBFF4DC105944B1651DB9A014FC22F3178847901A0141CA881F5382B8C5618AC5641209A693A217E7710697232E49C9AC1E8A2661906124191D9A1AA7B1B052803CC0B60964732F6D4F2FCF3634CDEE4FCADA1797321B40B26B393290E2AE4F0348FEBD5F86C25C236880C93ED6C8508A2F404D208BB5B43D3D2A6C68CAB8A63208CEEB6D80229A4506119BC0B25D94EF97FCB7F92C495F9412E6B38A3C47F335DAEDC88E66F21EA594C936497AB4FC610BCF05E42418332390A404CA7B9B73226F869889C2AF748B983876FE882F811EE24DB5349DD2638574A898D58C8F440088667C31E75923FAEFD4CA6C484C24821573794986E710AB3C1E29CEFBC5A7442AB59ED01C54C846BEA83356641E889A76DCE2EF59EBD65992201621A3B547C99200B12819AD3D0ACD0BC48D6403ED439AF347EC464A86CE4AE2AF9667A69CDD27C59A092F585C4EB3D27A121C42718DB65AC189DEE9BD746335055FB3F26695AF585824B00592F8A86CFB840258628903CA752121B5C7E0EC201689FBA13D9E682FB290E26FED511927980564C8EDB1528790C54949ED31D28F0D2C464A6A8F9158EF2C4442018C84CD7FC38D87FD012074688E1B4EDC5002602D31F96BB8A5C4D001F393A4A8E12628210176489E8086DB2439B53D52EA94B03029E9ED88CEDCEAEE2F3E3323BD8308AD6C7AC86234F64A3871507653EADAC74638DB5E6295D7B567D2B8B0280CB93D56E121B150557E531D12978945DCC81D04549E6D85932E1911B0994B1DDA007B92A64A612152527B0C9A088505A07F0354627C6AC669C3980254AA8E5CA93A40A59AA729619172E2B08A95C93222ECC88C0C58C14C22116E013374C02E678E20B9CDCED0017D2BE503E17A58FA7558D32408449B2400CDBC1E43923993945904202C8849A0DAFCDE978941CFE4FA5B17443776302C64AD0ED9A678FBAE549E3E4390B3504D94E7C710701222447BA4093078FD911201735424C5E0E6A820C3FA54B60E33627B1C3617060BC5D221F2F94582555001E3CB335A7003CCA9436A1DD58719FBD2167B92EEC56793DE223EF716E072BEBAE9210BFBEFF01C2EBD5FC009A094D61E25BDB6C282A42488599EE769E0ADF29C0C987726130337E70C7D4891F89D89B0E2A36D6F11967FE3858BB0EAA6A308DB8FB0392C6F724F9B8BB9CCD07B7715771FE0DBABA6EDB8BFF6B3BFFA9F462AF92C9705F473AE48460479474CC0BEE02131BF004C8CEC9A2367606444104EC92DCD688013FE2C149F3BE0CF88A3541D54AA1677BB7A0BD5FC2A185CA656371D45EA7E44AA0ACFA6085EE78558460578226597660FDE4C1E59CE7D6642E00F3159E838D79794360AAA2A4145EF8FF697518B7517F1246B354AA63D1DFB2BF848ABCA2052738A5444437347EB39753489069534DC75F3DE1287BD9D0E973CB5ADF548A034C699BB5C9290006F398F60E65E744E05E8DC224499D3BA051962D3C8A00A2A607C6C94313744F60780454023893973801200F29A8D12E6E435FBC39BD961711446EF9D458336E03B4ADAEA9075F95BF30AA451B8922313FE81618F7292805AEE2EA31821540FC006CB724A9DA183BA23B33418F21E4C1F3EA6553CA6EA74A72C8F5CE56F58A6C4215DBDC332A4549BF95AD54629F44E7C24E79E52F2BFF3D0BB34EC8D8BC78BE78046D7C5630FD2103C310E2E79643A2113F5CD32690CDCF63508B173441F38DAFECB5EDA561C00953D40A494F5888330C968313D3D3E399D4E16B6858224B4308DF0FB2846D7B60AF93B39A3217FD87466627378E020450902934BB851CE05521936D73233472960AE45668E5516026DD1896DCCBD519BF4A40C9F45E0252CDC6FC8379E915F4AC954A0B6AAC79C06E431FD8601D0783CE53D4A63F36A70E304033060364E2F4136C98B0985FC337D8AB895A2DE86C802A365AD25E69DDAF9E7F2BCA80295E41F904227190860D8F29C0D1DF64829F74CC5E8A1B85C4E1645984B36FF9F224C36C186AA172F295AAF0A9AA951AF6C99964AD2AB42E62AD02BDBAA42C1F9070BBCE6B9EC239D5403BCD6FC77227B4F3AC8322DC29729C0A7ACA34CB17655DD2CD56657052C966257B9A735C936A1D0BA2AD88D86AE7265D455811655D35521B269B75CC916E8642CB015D155800AE5CFAB76AB7A63E10C8E2916372F8FBFCB962A553297BF7FB8BC2AA5435326052AEA942BF2B3F4186541CD6B832F5B6516782987DA5E2C1A9DEE0BA8D4F8776228BD152755A323A9609309C5BBD58971B656B72A54BE34779729140B7577C010CA762B1A5BB94AB722E0B550945BD5BB106A702B826DD44B70489D87446F43B3C06B698F2AA0B2CBE339A5EA734A2E05B20A9DC565D9560158AA31AD4CF7974A4A2BF30F3418F0EF4C9AC903044769F69EA5992E217460BE648722CBE3261937C9C087996DBE50C23F3BF0F586D51D5E95CB0B2B312DF8D20CAABACB970EEE20C78442C2A398ED5729521AF8374AD951CA36792F8A7C2CA1BEAEAAAB1BEFC573118AE5AA1A3E571B57DDD7F87726DBC4A8C151AC8D62ADE96BB006CB498541AADCBC132BC08E76542F59531927F86E650E576A359BBCBF38E8E5AFE0D7209453ED05562A99DA0B4D2C8BDA6F9CE5D2A7BDF098F2A6BD7024254C6557C8FB96303D8C65FF6E54AD968FEACD267E870FAED5553F557D29D6715C13071CAA852C57F054D859C14490DBFC7A0E81BA1C5969BB7F2654DF1C2E16E0C04D25F80087BA2526D6D42C17D7E3BB29D624E40A63964A1372BF26E189447F3E7864484977A175352BCB6ACAC04105376BEB6D4AD101D538AB8A714A7101553A6B8B74CAC0C1253C6B2B78CA38C0EB7BD697F794F18057FFAC2DFE296301290D5A5519548A0B2B19DA543154C6025852B4AAA2A80CBA4FA9D1725CF37C764BFA482CE9E42F22F2ACA702624E305D1C077016A0D93357EEA397494C321AB647D923A553801011CB1D2DFCD0A2A614F9D9C04110972DFE82EC28F6DA1EB079E5DE4421D9D88B20C0CE83CDA52798CFEAF9C7F554F93ECF6F62191EA81802E9A6459D8F1BF722B26C33EFF7A5C4F9A880A0E23D35F849AFB62135FC9F5E73A4CF9E5835A20A289DBE15DE6197BA0B77D8D9D9042CB871B7E81BEED237B26EAFF113325E3769787A3548F38BE0A77DBEB2D0938F9C20C528DA933FC91A369D979FFE0F344520D77CC00000, N'6.2.0-61023')
SET IDENTITY_INSERT [dbo].[ActivityLog] ON 

INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (1, N'admin Login', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-09T13:54:15.717' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (49, N'admin Login', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-10T09:36:37.950' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (50, N'Delete hardware', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-10T09:36:47.397' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (51, N'Restore hardware', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-10T09:36:48.473' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (52, N'Restore hardware', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-10T09:36:50.193' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (53, N'Restore hardware', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-10T09:36:50.523' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (54, N'Restore hardware', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-10T09:36:51.577' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (55, N'admin Login', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-10T10:01:35.143' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (56, N'admin Login', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-10T10:12:12.897' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (57, N'Update Hardware', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-10T10:13:38.080' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (58, N'admin Login', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-10T10:27:33.573' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (59, N'admin Login', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-10T10:29:35.360' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (60, N'Update Hardware', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-10T10:29:56.723' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (61, N'Update Hardware', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-10T10:31:13.903' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (62, N'Delete hardware', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-10T10:31:26.663' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (63, N'Delete hardware', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-10T10:31:27.873' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (64, N'Restore hardware', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-10T10:31:28.780' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (65, N'Restore hardware', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-10T10:31:30.647' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (66, N'Insert hardware', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-10T10:31:51.920' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (67, N'admin Login', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-10T15:08:05.240' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (68, N'admin Login', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-10T15:11:14.773' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (69, N'Update keyboard', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-10T15:11:34.203' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (70, N'Update keyboard', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-10T15:11:42.610' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (71, N'Update keyboard', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-10T15:11:47.053' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (72, N'Delete keyboard', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-10T15:12:14.613' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (73, N'Restore keyboard', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-10T15:12:15.817' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (74, N'admin Login', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-10T15:14:31.067' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (75, N'admin Login', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-10T15:17:57.360' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (76, N'admin Login', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-10T15:20:18.397' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (77, N'admin Login', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-10T15:22:16.773' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (78, N'Insert keyboard', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-10T15:22:29.630' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (79, N'Delete keyboard', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-10T15:22:33.327' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (80, N'Restore keyboard', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-10T15:22:35.070' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (81, N'admin Login', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-10T15:44:37.173' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (82, N'Update Mainboard', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-10T15:45:00.033' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (83, N'Update Mainboard', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-10T15:45:08.143' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (84, N'admin Login', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-10T15:52:57.037' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (85, N'admin Login', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-10T15:57:46.877' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (86, N'admin Login', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-10T15:58:36.107' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (87, N'admin Login', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-10T15:58:42.597' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (88, N'admin Login', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-10T16:01:11.030' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (89, N'Insert keyboard', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-10T16:01:59.147' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (90, N'admin Login', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-10T16:05:57.060' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (91, N'Insert Mainboard', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-10T16:06:21.953' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (92, N'admin Login', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-10T16:07:08.243' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (93, N'Insert Mainboard', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-10T16:07:24.957' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (94, N'Delete Mainboard', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-10T16:07:27.857' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (95, N'Restore Mainboard', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-10T16:07:29.590' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (96, N'admin Login', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-11T09:35:14.307' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (97, N'Delete Case', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-11T09:35:24.230' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (98, N'Delete Case', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-11T09:35:26.663' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (99, N'admin Login', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-11T09:41:12.440' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (100, N'admin Login', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-11T09:52:18.863' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (101, N'Delete cpu', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-11T09:56:06.833' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (102, N'Restore cpu', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-11T09:56:11.120' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (103, N'Insert cpu', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-11T09:56:22.907' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (104, N'admin Login', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-11T09:58:16.080' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (105, N'Delete cpu', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-11T09:58:21.713' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (106, N'Delete cpu', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-11T09:58:23.860' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (107, N'Insert hardware', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-11T09:58:42.357' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (108, N'Delete hardware', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-11T10:00:20.067' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (109, N'admin Login', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-11T10:35:32.177' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (110, N'admin Login', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-11T10:39:15.203' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (111, N'Delete Mainboard', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-11T10:39:29.027' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (112, N'Restore Mainboard', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-11T10:39:30.123' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (113, N'Restore Radiator', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-11T10:39:34.003' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (114, N'Delete Radiator', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-11T10:39:35.657' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (115, N'Restore Radiator', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-11T10:39:37.123' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (116, N'Delete Radiator', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-11T10:40:08.757' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (117, N'Restore Radiator', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-11T10:40:10.890' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (118, N'Update Radiator', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-11T10:40:22.870' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (119, N'Update Radiator', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-11T10:41:48.940' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (120, N'Update Radiator', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-11T10:41:54.193' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (121, N'admin Login', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-11T10:46:35.503' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (122, N'admin Login', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-11T10:53:05.710' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (123, N'admin Login', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-11T10:53:08.877' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (124, N'admin Login', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-11T10:56:02.737' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (125, N'admin Login', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-11T10:56:02.737' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (126, N'Insert Radiator', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-11T10:56:16.363' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (127, N'Delete Radiator', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-11T10:56:49.233' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (128, N'admin Login', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-11T10:57:11.163' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (129, N'Insert Radiator', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-11T10:57:27.990' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (130, N'Delete Radiator', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-11T10:57:35.233' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (131, N'Delete Radiator', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-11T10:57:37.700' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (132, N'admin Login', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-12T13:13:48.790' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (133, N'admin Login', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', CAST(N'2018-11-12T14:50:30.310' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (134, N'admin Login', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', CAST(N'2018-11-13T14:58:24.283' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (135, N'Update RAM', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', CAST(N'2018-11-13T14:58:56.050' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (136, N'admin Login', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', CAST(N'2018-11-13T15:02:28.583' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (137, N'Update RAM', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', CAST(N'2018-11-13T15:02:53.673' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (138, N'Update RAM', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', CAST(N'2018-11-13T15:03:00.883' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (139, N'admin Login', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', CAST(N'2018-11-13T15:13:22.543' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (140, N'Insert Ram', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', CAST(N'2018-11-13T15:14:11.370' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (141, N'admin Login', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', CAST(N'2018-11-13T15:15:27.507' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (142, N'Insert Ram', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', CAST(N'2018-11-13T15:15:50.633' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (143, N'Delete Ram', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', CAST(N'2018-11-13T15:15:53.727' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (144, N'Restore Ram', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', CAST(N'2018-11-13T15:15:55.907' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (145, N'Delete Ram', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', CAST(N'2018-11-13T15:15:58.210' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (146, N'Delete Ram', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', CAST(N'2018-11-13T15:15:59.720' AS DateTime))
GO
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (147, N'Update RAM', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', CAST(N'2018-11-13T15:16:22.493' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (148, N'admin Login', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', CAST(N'2018-11-13T15:27:41.130' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (149, N'Delete VGA', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', CAST(N'2018-11-13T15:27:50.573' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (150, N'Restore VGA', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', CAST(N'2018-11-13T15:27:52.440' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (151, N'Delete VGA', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', CAST(N'2018-11-13T15:28:18.573' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (152, N'Restore VGA', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', CAST(N'2018-11-13T15:28:20.413' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (153, N'admin Login', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', CAST(N'2018-11-13T16:21:32.437' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (154, N'Insert VGA', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', CAST(N'2018-11-13T16:22:26.260' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (155, N'admin Login', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', CAST(N'2018-11-13T16:25:10.970' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (156, N'Insert VGA', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', CAST(N'2018-11-13T16:25:20.620' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (157, N'Delete VGA', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', CAST(N'2018-11-13T16:26:45.160' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (158, N'Delete VGA', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', CAST(N'2018-11-13T16:26:47.237' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (159, N'admin Login', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', CAST(N'2018-11-13T16:27:22.527' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (160, N'Insert VGA', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', CAST(N'2018-11-13T16:27:50.240' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (161, N'Update VGA', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', CAST(N'2018-11-13T16:28:11.880' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (162, N'admin Login', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', CAST(N'2018-11-19T15:14:06.403' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (163, N'Delete cpu', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', CAST(N'2018-11-19T15:16:17.530' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (164, N'Restore cpu', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', CAST(N'2018-11-19T15:16:21.080' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (165, N'admin Login', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', CAST(N'2018-11-19T15:23:06.333' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (166, N'admin Login', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', CAST(N'2018-11-19T15:31:05.923' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (167, N'admin Login', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', CAST(N'2018-11-22T08:09:54.333' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (168, N'admin Login', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', CAST(N'2018-11-22T08:42:16.977' AS DateTime))
INSERT [dbo].[ActivityLog] ([ID], [Action], [UserId], [IP], [UserAgent], [ActionTime]) VALUES (169, N'admin Login', 1, N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', CAST(N'2018-12-01T10:22:23.413' AS DateTime))
SET IDENTITY_INSERT [dbo].[ActivityLog] OFF
SET IDENTITY_INSERT [dbo].[Case] ON 

INSERT [dbo].[Case] ([Id], [Name], [Image], [Description], [WarrantyPeriod], [TradeMark], [Model], [Color], [Size], [MainSupport], [USB], [DriverBays], [Slots], [IsDelete], [Price]) VALUES (1, N'Case Corsair Crystal Series 570X RGB ATX Mid-Tower Red (CC-9011111-WW)', N'Case Corsair Crystal Series 570X RGB ATX Mid-Tower Red.png', N'Về thương hiệu Corsair, không có quá nhiều điều cần phải giới thiệu. Corsair đã trở thành một cái tên quá quen thuộc với người dùng máy tính ở Việt Nam, nhà sản xuất này bán RAM, nguồn máy tính, gaming gears nhưng nổi tiếng nhất có lẽ phải là dòng sản phẩm vỏ case của họ. 

Thương hiệu này đặc biệt luôn thể hiện được tham vọng dẫn đầu thị trường, dễ dàng nhận thấy điều đó qua Logo của hãng, những cánh buồm căng gió. Mới đây, Corsair chính thức tung ra thị trường bộ vỏ case mang tên Crystal Series, với điểm chung của các sản phẩm là sử dụng mặt kính cường lực cực bền bỉ cũng như tích hợp sẵn các quạt tản nhiệt đèn LED RGB.



Corsair muốn trở thành thương hiệu đi đầu trong việc sử dụng kính cường lực làm chất liệu cho các vỏ case của họ. Thời gian gần đây, chúng ta có thể dễ dàng bắt gặp các vỏ case trong suốt, với nhiều mặt làm từ kính hoặc chất liệu trong suốt. Điểm chung của chúng là cho phép người dùng phô diễn các phần cứng bên trong, nhưng cũng rất dễ bị vỡ nếu va chạm mạnh. Bởi vậy, Corsair tìm tới chất liệu kính cường lực, giúp giải quyết vấn đề nêu trên.

Thông số kỹ thuật Crystal 570X:

- Kích thước: 480 x 234 x 512mm
- Kích thước VGA tối đa: 370mm
- Kích thước tản nhiệt CPU tối đa: 170mm
- Khay gắn ổ cứng: SSD x2, HDD x2
- Quạt tản nhiệt phía trên: tối đa Radiator 240mm
- Quạt tản nhiệt phía trước: tối đa Radiator 360mm', 12, N'Corsair', N'Crystal Series 570X RGB', N'Đỏ', N'480mm x 234mm x 512m', N'Mini-ITX, MicroATX, ATX (Up to 272mm)', N'USB3.0 x 1 / USB2.0 x 2', N'(x2) 3.5", (x2) 2.5"', N'7', 0, N'4.655.000')
INSERT [dbo].[Case] ([Id], [Name], [Image], [Description], [WarrantyPeriod], [TradeMark], [Model], [Color], [Size], [MainSupport], [USB], [DriverBays], [Slots], [IsDelete], [Price]) VALUES (2, N'Case PC CoolerMaster MasterBox 5 White', N'Case PC CoolerMaster MasterBox 5 White.jpg', N'Mô tả
- Thiết kế khung thép chắc chắn, lớp sơn tĩnh điện mịn đẹp. 
- Bên trong case to rộng gắn được các main cỡ lớn chạy 2 chip. 
- Có sẵn cover nguồn và khoang đi dây rộng. 
- Hỗ trợ rất tốt các giải pháp tản nhiệt khí và tản nhiệt nước custom. 
- Là sản phẩm phù hợp với dòng máy hiend, gaming, ws', 12, N'Cooler Master', N'BOX 5', N'Đen', N'468.8 x 200 x 454.5 mm', N'ATX, Micro-ATX, Mini-ITX', N'USB3.0 x 1 / USB2.0 x 2', N'3.5" x 2 / 2.5" x 1', N'2', 0, N'1.670.000')
INSERT [dbo].[Case] ([Id], [Name], [Image], [Description], [WarrantyPeriod], [TradeMark], [Model], [Color], [Size], [MainSupport], [USB], [DriverBays], [Slots], [IsDelete], [Price]) VALUES (3, N'Thùng máy/ Case Golden field G1 - Black', N'Thùng máy Case Golden field G1 - Black.png', N'Mô tả
- Vỏ máy tính chống bức xạ Golden Field G1- White( 21+, DIY, 2 Led Red, ATX, ITX)
- Vỏ máy tính Golden Field thế hệ mới, kiểu dáng đẹp,
- Khung chắc chắn,
- Tản nhiệt tốt,
- Nút bấn nhậy độ bền cao', 12, N'Golden Field', N'G1', N'Đen', N'Không', N'ATX, M-ATX', N'USB3.0 x 1 / USB2.0 x 2', N'Không', N'Không', 0, N'685.000')
INSERT [dbo].[Case] ([Id], [Name], [Image], [Description], [WarrantyPeriod], [TradeMark], [Model], [Color], [Size], [MainSupport], [USB], [DriverBays], [Slots], [IsDelete], [Price]) VALUES (4, N'Thùng máy/ Case Erosi X11 (No power)', N'Thùng máy Case Erosi X11.jpg', N'                                        Mô tả
- Màu: Đen
- Chất liệu: Black coating 0.4mm
- 410 (D) * 176 (W) * 410 (H) mm, 2.65kg
- Hỗ trợ Mainboard: ATX, Micro ATX
- Kết nối: USB 3.0, USB 2.0
- Khe CD-DVD: 3, SSD: 2, HDD: 3. Khe PCI: 7
        
        
        
        ', 12, N'Erosi', N'X11', N'Đen', N'410 (D) * 176 (W) * 410 (H) mm', N'Hỗ trợ Mainboard: ATX, Micro ATX', N'USB3.0 x 1 / USB2.0 x 2', N'Không', N'Khe CD-DVD: 3, SSD: 2, HDD: 3. Khe PCI: 7', 0, N'320.000')
INSERT [dbo].[Case] ([Id], [Name], [Image], [Description], [WarrantyPeriod], [TradeMark], [Model], [Color], [Size], [MainSupport], [USB], [DriverBays], [Slots], [IsDelete], [Price]) VALUES (5, N'Thùng máy/ Case Golden field Gaming G20', N'Thùng máy Case Golden field Gaming G20.jpg', N'Mô tả
- Form case: Full-Tower
- Chất liệu vỏ: Khung Thép (SECC) + Mặt lưới sắt tản nhiệt siêu mạnh
- Cửa sổ case: Kính cường lực
- Hỗ trợ khay 2x 3.5", 2x 2.5"
- Cổng USB: 1x USB 3.0, 1x USB 2.0
- Quạt đi kèm: 2 quạt', 1, N'Golden Field', N'G20', N'Bạc', N'(Dài x Rộng x Cao) 558mm x 261mm x 531mm', N'ATX, m-ATX', N'USB3.0 x 1 / USB2.0 x 2', N'Đang cập nhật', N'Đang cập nhật', 0, N'4.200.000')
INSERT [dbo].[Case] ([Id], [Name], [Image], [Description], [WarrantyPeriod], [TradeMark], [Model], [Color], [Size], [MainSupport], [USB], [DriverBays], [Slots], [IsDelete], [Price]) VALUES (6, N'Thùng máy/ Case CM-N200 (No power)', N'Thùng máy Case CM-N200.jpg', N'Mô tả
- Thiết kế bất đối xứng Edgy với lưới đầy đủ trên bảng điều khiển phía trước
- Tháp đôi với khả năng mở rộng tuyệt vời có thể hỗ trợ lên đến ba HDD 3.5 "và 4 SSD 2.5"
- Hỗ trợ bộ tản nhiệt làm lạnh chất lỏng 240mm ở mặt trước
- Hỗ trợ card đồ họa cao cấp với chiều dài lên đến 355mm / 14inch
- Hỗ trợ độ cao làm mát CPU không khí lên đến 160mm / 6.3inch
- Hỗ trợ SuperSpeed USB 3.0
- Bộ lọc bụi tháo lắp theo PSU để bảo trì dễ dàng', 12, N'Cooler Master', N'N200', N'Đen', N'202 x 378 x 445 mm', N'Micro ATX, Mini-ITX', N'	USB 3.0 x 2, USB 2.0 x 2, Audio In & Out', N'5.25" x 1 / 3.5" x 4 / 2.5" x 3', N'4', 0, N'960.000')
INSERT [dbo].[Case] ([Id], [Name], [Image], [Description], [WarrantyPeriod], [TradeMark], [Model], [Color], [Size], [MainSupport], [USB], [DriverBays], [Slots], [IsDelete], [Price]) VALUES (7, N'Thùng máy/ Case Corsair 450D (No power)', N'Thùng máy Case Corsair 450D.jpg', N'Mô tả
- Form case: Mid-Tower
- Chất liệu vỏ: Thép, Nhôm
- Cửa sổ case: Acrylic
- Hỗ trợ 3x 3.5", 2x 2.5"
- Cổng USB: 2x USB 3.0', 0, N'Corsair', N'450D', N'Đen', N'Đang cập nhật', N'ATX, Micro-ATX, ITX', N'USB3.0 x 1 / USB2.0 x 2', N'Không', N'2', 0, N'2.810.000')
INSERT [dbo].[Case] ([Id], [Name], [Image], [Description], [WarrantyPeriod], [TradeMark], [Model], [Color], [Size], [MainSupport], [USB], [DriverBays], [Slots], [IsDelete], [Price]) VALUES (8, N'Thùng máy/ Case Sahara P07', N'Thùng máy Case Sahara P07.jpg', N'Mô tả
- Màu: Đen
- Kích thước: 505 x 240 x 510 mm
- Hỗ trợ Mainboard: ATX, Micro ATX
- Kết nối: 2x USB 2.0, USB 3.0, HD Audio, Vị trí lắp quạt 120mm ( x7), Khe SSD: 2, Khe HDD: 2', 0, N'Sahara', N'Sahara P07', N'Đen', N'505 x 240 x 510 mm', N'ATX, Micro ATX', N'USB3.0 x 1 / USB2.0 x 2', N'Không', N'2', 0, N'750.000')
INSERT [dbo].[Case] ([Id], [Name], [Image], [Description], [WarrantyPeriod], [TradeMark], [Model], [Color], [Size], [MainSupport], [USB], [DriverBays], [Slots], [IsDelete], [Price]) VALUES (9, N'Thùng máy / Case Corsair 500D RGB SE Aluminum Tempered Glass (CC-9011139-WW)', N'Thùng máy Case Corsair 500D RGB SE Aluminum Tempered Glass.jpg', N'Mô tả
- Form case: Mid-Tower
- Chất liệu vỏ: Thép
- Cửa sổ case: Kính cường lực
- Khay ổ cứng hỗ trợ: 2x 3.5", 3x 2.5"
- Cổng USB: 2x USB 3.0, 1x USB 3.1 Type-C
- Quạt đi kèm: 3 fan led RGB', 24, N'Corsair', N'500D', N'Đen', N'500 x 237 x 507 mm', N'ATX, micro ATX', N'USB3.0 x 1 / USB2.0 x 2', N'2x 3.5", 3x 2.5"', N'7x PCI-e', 0, N'6.290.000')
INSERT [dbo].[Case] ([Id], [Name], [Image], [Description], [WarrantyPeriod], [TradeMark], [Model], [Color], [Size], [MainSupport], [USB], [DriverBays], [Slots], [IsDelete], [Price]) VALUES (10, N'Thùng máy/ Case Deluxe Erosi X3 (No power)', N'Thùng máy Case Deluxe Erosi X3.jpg', N'Mô tả
- Thiết kế làm mát đối lưu
- Thiết kế bảng điều khiển phía trước độc đáo & tinh tế
- Thép SECC, bảo vệ bức xạ', 0, N'Delux', N'Erosi X3', N'Đen', N'415 x 180 x 416mm', N'Micro-ATX, ATX', N'USB2.0 x 2', N'5.25" x 2 / 3.5" x 2 / 2.5" x 2', N'2', 0, N'300.000')
SET IDENTITY_INSERT [dbo].[Case] OFF
SET IDENTITY_INSERT [dbo].[Computer] ON 

INSERT [dbo].[Computer] ([Id], [Name], [Image], [CPU], [RAM], [VideoCard], [Hardware], [SlotSupport], [Display], [Port], [Extra], [OS], [Type], [Trademark], [Feature], [Color], [CPUSeries], [ScreenSize], [Resolution], [StandardOfScreen], [Size], [Mass], [WarrantyPeriod], [IsDeleted], [Price], [Description]) VALUES (11, N'Máy tính xách tay Laptop MacBook Air MQD32HNA', N'Máy tính xách tay Laptop MacBook Air MQD32HNA.jpg', N'Intel Core i5, Dual - Core, 1.8GHz', N'8GB', N'Intel HD Graphics 6000, Share', N'SSD 128GB', N'2', N'LED Backlit', N'4', NULL, N'macOS', N'Laptop    ', N'Apple     ', N'Multimedia', N'Bạc', N'Intel Core i5, Dual - Core, 1.8GHz                                                                                                                                                                                                                             ', N'13.3"', N'1440 x 900', N'Full HD', N'13.3"', N'1.3kg     ', 12, 0, N'23.890.000đ', N'Máy tính xách tay Apple MacBook Air MQD32HN / A



Tự hào có một sự kết hợp tuyệt vời của vẻ và hiệu suất.

Với một thân máy siêu mỏng và mỏng, chiếc MacBook thời trang này nhẹ và xách tay. Nó được thiết kế với bộ vi xử lý Intel Core i5 Dual-Core 1.8Ghz đảm bảo hiệu suất không bị gián đoạn bất cứ lúc nào.

Bộ nhớ RAM 8GB cung cấp trải nghiệm đa tác vụ liền mạch. Ngoài ra, bộ nhớ SSD 128GB cung cấp khả năng truy cập dữ liệu tốc độ cao và hiệu suất cực kỳ mạnh mẽ. Nó giúp bạn nhập các tập tin lớn hoặc khởi chạy nhiều ứng dụng trong một đèn flash.

Được trang bị tiện ích Intel HD Graphics 6000, máy tính xách tay này làm cho các buổi chơi game thú vị hơn với đồ họa nâng cao.

MacBook này có màn hình 13inch với độ phân giải màn hình tuyệt đẹp 1440 x 900 pixel. Pin mạnh mẽ cho phép bạn tự do tiếp tục và tiếp tục trong 12 giờ với một lần sạc duy nhất.

Máy tính xách tay Apple MacBook Air có kết cấu bạc tuyệt đẹp làm cho nó trông thanh lịch và sang trọng')
INSERT [dbo].[Computer] ([Id], [Name], [Image], [CPU], [RAM], [VideoCard], [Hardware], [SlotSupport], [Display], [Port], [Extra], [OS], [Type], [Trademark], [Feature], [Color], [CPUSeries], [ScreenSize], [Resolution], [StandardOfScreen], [Size], [Mass], [WarrantyPeriod], [IsDeleted], [Price], [Description]) VALUES (2, N'Laptop Acer Predator Helios 300 G3-572-79S6 (NH.Q2BSV.002)', N'Máy tính xách tay Laptop Acer Predator Helios 300 G3-572-79S6.jpg', N'Core i7, 7700HQ, 2.8GHz, 6M, Up to: 3.8GHz', N'8GB', N'NVIDIA GeForce GTX 1060 // Intel HD Graphics 630, 6GB', N'1x8GB, DDR4, 2666MHz, 2 Slots, 128GB M.2 + 1TB 5400rpm', N'2', N'Led_KB', N'4', NULL, N'Linux', N'Laptop    ', N'Acer      ', N'Gaming', N'Đen', N'Intel Core i7 7th Gen                                                                                                                                                                                                                                          ', N'15.6"', N'1920 x 1080', N'Full HD', NULL, N'2.57 Kg   ', 12, 0, N'30.990.000', N'          Laptop Acer Predator Helios G3-572-79S6
may-tinh-xach-tay-laptop-acer-g3-572-79s6-nh-q2bsv-002-den

Thiết kế máy tính xách tay Acer G3-572-79S6
Thiết kế vỏ kim loại mang lại cảm giác chắc chắn kết hợp logo Predator vô cùng mạnh mẽ thu hút mọi ánh nhìn. 

may-tinh-xach-tay-laptop-acer-g3-572-79s6-nh-q2bsv-002-den
Hệ thông làm mát
Hệ thống 2 quạt tản nhiệt bằng thép của máy tính xách tay Acer G3-572-79S6 có tới 59 cánh quạt áp dụng công nghệ AeroBlade 3D độc quyền của Acer tăng luồng gió thêm 25%, đảm bảo hệ thống luôn mát mẻ khi chơi game trong thời gian dài. 

 

may-tinh-xach-tay-laptop-acer-g3-572-79s6-nh-q2bsv-002-den
        ')
INSERT [dbo].[Computer] ([Id], [Name], [Image], [CPU], [RAM], [VideoCard], [Hardware], [SlotSupport], [Display], [Port], [Extra], [OS], [Type], [Trademark], [Feature], [Color], [CPUSeries], [ScreenSize], [Resolution], [StandardOfScreen], [Size], [Mass], [WarrantyPeriod], [IsDeleted], [Price], [Description]) VALUES (4, N'Laptop Asus FX503VM-E4087T (I5-7300HQ) ', N'Máy tính xách tay Laptop Asus FX503VM-E4087T.jpg', N'Intel Core i5-7300HQ (2.50 Ghz up to 3.50 Ghz, 6M Cache)', N'8GB', N'NVIDIA GeForce GTX 1060 6GB + Intel HD Graphics 630', N'HDD 1TB 5400rpm', N'2', N'Led', N'3', NULL, N'Win 10 Home', N'Laptop    ', N'Asus      ', N'Gaming', N'Đen', N'Intel Core i5 7th Gen                                                                                                                                                                                                                                          ', N'15.6"', N'1920 x 1080', N'Full HD', N'15.6"', N'2.6 Kg    ', 24, 0, N'25.990.000', N'Thông số kĩ thuật
- CPU: Intel Core i5-7300HQ (2.50 Ghz up to 3.50 Ghz, 6M Cache)
- RAM: 8GB DDR4 2400 MHz (2 slots - max 32GB)
- VGA: NVIDIA GeForce GTX 1060 6GB + Intel HD Graphics 630
- Ổ cứng: HDD 1TB 5400rpm
- Khe mở rộng M2 SATA
- Màn hình: 15.6" (1920 x 1080)
- Cổng giao tiếp: HDMI, 2x USB 3.0, USB 2.0
- Wifi AC, LAN 1Gbit, Bluetooth 4.2, Webcam HD, Card reader, Led Keyboard
- Khối lượng: 2.6 Kg, pin 4 cell
- Hệ điều hành: Win 10 Home

Mô tả')
INSERT [dbo].[Computer] ([Id], [Name], [Image], [CPU], [RAM], [VideoCard], [Hardware], [SlotSupport], [Display], [Port], [Extra], [OS], [Type], [Trademark], [Feature], [Color], [CPUSeries], [ScreenSize], [Resolution], [StandardOfScreen], [Size], [Mass], [WarrantyPeriod], [IsDeleted], [Price], [Description]) VALUES (5, N'Laptop Dell Inspiron 13 7373-C3TI501OW ', N'Máy tính xách tay Laptop Dell Inspiron 13 7373-C3TI501OW.jpg', N'Core i5, 8250U, 1.6GHz, 6M, Up to: 3.4GHz', N'8GB', N'Intel UHD Graphics 620, SHARE', N'256GB M.2 2280', N'2', N'Led_KB', N'2', NULL, N'Windows 10 Home SL 64bit', N'Laptop    ', N'Dell      ', N'Multimedia', N'Xám', N'Intel Core i5 8th Gen                                                                                                                                                                                                                                          ', N'13.3"', N'1920 x 1080', N'Full HD', N'13.3"', N'1.63 Kg   ', 12, 0, N'26.190.000', N'Hình ảnh cực kì sắc nét , âm thanh cực hay .
Làm đẹp làm sáng hơn: Thiết kế mỏng mờ giúp bạn thêm không gian màn hình cho những hình ảnh tuyệt đẹp, trong khi màn hình cảm ứng Full HD IPS cho phép bạn xem màn hình từ nhiều góc độ khác nhau mà không ảnh hưởng đến chất lượng hình ảnh. Ngoài ra, một bảng điều khiển 300-nit sáng rõ ràng làm việc ở ngoài trời dễ dàng hơn và luồng thú vị hơn.

Waves MaxxAudio® Pro cung cấp âm thanh chuyên nghiệp, hoàn thành trải nghiệm nhập vai của bạn. Nó tự động điều chỉnh âm thanh của bạn với độ cao rõ nét hơn, tăng âm trầm và tăng âm lượng để mọi thứ mà bạn nghe đều chính xác theo cách của nó.')
INSERT [dbo].[Computer] ([Id], [Name], [Image], [CPU], [RAM], [VideoCard], [Hardware], [SlotSupport], [Display], [Port], [Extra], [OS], [Type], [Trademark], [Feature], [Color], [CPUSeries], [ScreenSize], [Resolution], [StandardOfScreen], [Size], [Mass], [WarrantyPeriod], [IsDeleted], [Price], [Description]) VALUES (14, N'Máy tính xách tay Laptop MacBook MR9U2', N'Máy tính xách tay Laptop MacBook MR9U2.jpg', N'Core i5, 2.3GHz', N'16GB', N'Intel Iris Plus Graphics 655, Share', N'SSD, 256GB', N'2', N'LED Backlit', N'4', NULL, N'Mac OS High Sierra', N'Laptop    ', N'Apple     ', N'Multimedia', N'Bạc', N'Intel Core thế hệ thứ 8                                                                                                                                                                                                                                        ', N'13.2"', N'2560 x 1600', N'Full HD', N'13.3"', N'1.4kg     ', 12, 0, N'47.490.000đ', N'Đang cập nhật')
INSERT [dbo].[Computer] ([Id], [Name], [Image], [CPU], [RAM], [VideoCard], [Hardware], [SlotSupport], [Display], [Port], [Extra], [OS], [Type], [Trademark], [Feature], [Color], [CPUSeries], [ScreenSize], [Resolution], [StandardOfScreen], [Size], [Mass], [WarrantyPeriod], [IsDeleted], [Price], [Description]) VALUES (8, N'Laptop HP Probook 450 G5-2XR66PA', N'Máy tính xách tay Laptop HP Probook 450 G5-2XR66PA.jpg', N'Core i7, 8550U, 1.8GHz, 8M, Up to: 4GHz', N'8GB', N'NVIDIA GeForce 930MX // Intel UHD Graphics 620, 2GB', N'8 GB, DDR4, 2400 MHz, 2 Slots, 1TB 5400rpm, Khe mở rộng: M.2 2280 (Sata / PCIe 3 x4)', N'2', N'Led_KB', N'2', NULL, N'No OS', N'Laptop    ', N'HP        ', N'Multimedia', N'Bạc', N'Intel Core i7 8th Gen                                                                                                                                                                                                                                          ', N'15.6"', N'1920 x 1080', N'Full HD', N'15.6"', N'2.1 Kg    ', 12, 0, N'21.690.000', N'Màu sắc chân thực
Laptop HP Probook 450 G5 (2XR66PA) với màn hình rộng 15.6 inch cùng với độ tương phản cao 1920x1080 pixel cho chất lượng hình ảnh sắc nét, hoàn hảo.

Laptop HP Probook 450 G5-2XR66PA

Bàn phím dễ thao tác
Bàn phím của laptop HP Probook 450 G5 (2XR66PA) cho độ êm ái hoàn hảo cùng với tiêu chuẩn hoàn hảo giúp bạn thao tác dễ dàng, nhanh chóng.

Laptop HP Probook 450 G5-2XR66PA')
INSERT [dbo].[Computer] ([Id], [Name], [Image], [CPU], [RAM], [VideoCard], [Hardware], [SlotSupport], [Display], [Port], [Extra], [OS], [Type], [Trademark], [Feature], [Color], [CPUSeries], [ScreenSize], [Resolution], [StandardOfScreen], [Size], [Mass], [WarrantyPeriod], [IsDeleted], [Price], [Description]) VALUES (20, N'Máy tính xách tay Laptop Dell Vostro 5568', N'Máy tính xách tay Laptop Dell Vostro 5568.png', N'Core i5, 7200U, 2.5GHz, 3M, Up to: 3.1GHz', N'4GB', N'Intel HD Graphics 620, SHARE', N'1TB 5400rpm', N'2', N'Led_KB', N'2', NULL, N'Win 10 Home', N'Laptop    ', N'Dell      ', N'Multimedia', N'Vang', N'Intel Core i5-7200U ( 2.5 GHz - 3.1 GHz / 3MB / 2 nhân, 4 luồng )                                                                                                                                                                                             ', N'15.6"', N'1366 x 768', N'Full HD', N'15.6"', N'2.0Kg     ', 12, 0, N'14.990.000đ', N'Đánh giá Laptop Dell Vostro 5568 (F5568-70134546)


Dòng laptop Dell Vostro từ lâu đã được định hình để dành cho giới doanh nhân, IT với những tiện ích như màn hình lớn, hiệu năng khá, bảo mật vân tay, và cả những phiên bản sử dụng hệ điều hành mã nguồn mở Linux cực thích hợp cho lập trình viên. Chiếc laptop được giới thiệu trong bài viết này cũng có những tính năng tương tự, đó là Dell Vostro 5568')
INSERT [dbo].[Computer] ([Id], [Name], [Image], [CPU], [RAM], [VideoCard], [Hardware], [SlotSupport], [Display], [Port], [Extra], [OS], [Type], [Trademark], [Feature], [Color], [CPUSeries], [ScreenSize], [Resolution], [StandardOfScreen], [Size], [Mass], [WarrantyPeriod], [IsDeleted], [Price], [Description]) VALUES (6, N'Laptop Dell Inspiron 15 5570-N5570B', N'Máy tính xách tay Laptop Dell Inspiron 15 5570-N5570B.png', N'Core i7, 8550U, 1.8GHz, 8M, Up to: 4.0GHz', N'8GB', N'AMD Radeon(R) 530 // Intel UHD Graphics 620, 4GB', N'1x8GB, DDR4, 2400MHz, 2 Slots, 2TB 5400rpm, Khe mở rộng: M.2 2280 (Sata/PCIe 3 x4)', N'2', N'Led_KB', N'2', NULL, N'Windows 10 Home SL 64bit', N'Laptop    ', N'Dell      ', N'Multimedia', N'Bạc', N'Intel Core i7 8th Gen                                                                                                                                                                                                                                          ', N'15.6"', N'1920 x 1080', N'Full HD', N'15.6"', N'2.12 Kg   ', 12, 0, N'23.790.000', N'Đánh giá Laptop Dell Inspiron 15 5570-N5570B
Sơ lược sản phẩm

Với hơn 30 năm kinh nghiệm, Dell là một ông lớn trong làng công nghệ thế giới. Riêng về sản xuất laptop, Dell chưa bao giờ chịu lép vế trước các ông lớn khác như MSI, Asus hay HP nhờ vào những sản phẩm chất lượng cao, mẫu mã đẹp mà giá thành lại rất hợp lý và mang phong cách riêng của hãng.

Dell Inspiron 5570-N5570B hình ảnh


Dell sở hữu nhiều dòng sản phẩm khác nhau. Mỗi dòng sản phẩm đều nhắm tới tập khách hàng riêng, tùy thuộc vào nhu cầu của người sử dụng. Ví dụ dòng ROG và Alienware được Dell sản xuất để nhắm đến những khách hàng có đam mê to lớn về giải trí nói chung, đặc biệt là chơi game. Dòng Insprion là dòng máy tính xách tay có giá thành vừa phải, phù hợp dành cho tập khách hàng là  nhân viên văn phòng với cấu hình ở mức khá và chất lượng hoàn thiện tốt. Nếu như Dell 15 5570 - N5570A được coi như là người anh cả của tất cả những chiếc laptop thuộc 15 5000 Series, thì sản phẩm Phong Vũ muốn giới thiệu sau đây mang mã N5570B chính là người anh thứ. Tất nhiên, tất cả những đặc điểm đáng nói giống với những người anh em khác ở series laptop này đều có thể dễ dàng nhận thấy tại Dell 15 5570 - N5570B như thiết kế sang trọng, hiệu năng ổn định cùng với Windows 10 Home Single Language bản quyền tới hết đời. Bên cạnh màn card màn hình rời AMD 530 4GB GDDR5 được trang bị bên trong sản phẩm thì Dell còn ưu ái dành cho N5570B tới 2TB ổ cứng HDD, thay vì chỉ 1TB như hầu hết những sản phẩm trong đại gia đình Dell. Hãy cùng Phong Vũ tìm hiểu sản phẩm này nhé!')
INSERT [dbo].[Computer] ([Id], [Name], [Image], [CPU], [RAM], [VideoCard], [Hardware], [SlotSupport], [Display], [Port], [Extra], [OS], [Type], [Trademark], [Feature], [Color], [CPUSeries], [ScreenSize], [Resolution], [StandardOfScreen], [Size], [Mass], [WarrantyPeriod], [IsDeleted], [Price], [Description]) VALUES (1, N'Laptop Lenovo Ideapad 320-15IKB 80XL009YVN (i5-7200U) (Đen)', N'Máy tính xách tay Laptop Lenovo Ideapad 320-15IKB 80XL009YVN.jpg', N'i5-7200U', N'4GB', N'NVIDIA GeForce 940MX', N'HDD 1TB HDD 5400rpm', N'2', N'15.6” LED FHD', N'2', N'Multimedia', N'Free DOS', N'Laptop    ', N'Lenovo    ', N'Multimedia', N'Đen', N'Intel Core i5 7th Gen                                                                                                                                                                                                                                          ', N'15.6"', N'1366 x 768', N'HD', N'15.6"', N'1.93kg    ', 12, 0, N'11.990.000', N'Thiết kế đơn giản
Lenovo IdeaPad 320-15IKB được thiết kế theo phong cách quen thuộc của Lenovo cho dòng IdeaPad với chất liệu nhựa cứng giúp máy nhẹ hơn so với những chiếc laptop sử dụng kim loại.

Các chi tiết trên máy như bản lề, các cổng kết nối được gia công chắc chắn, độ hoàn thiện cao.

Màn hình sắc nét
Máy sở hữu kích thước màn hình lên tới 15.6 inch cùng độ phân giải Full HD cho bạn không gian lớn với chất lượng hình ảnh sắc nét để làm việc và giải trí.

Hiệu năng mạnh mẽ
Cung cấp sức mạnh cho máy là con chip Intel Core i5 Kabylake 7200U với xung nhịp 2.50 GHz kết hợp cùng card đồ họa rời, NVIDIA GeForce 940MX, 2 GB giúp bạn có thể chơi game hay sử dụng các ứng dụng đòi hỏi đồ họa một cách khá mượt mà.

Ngoài ra với RAM 4 GB DDR4 giúp máy có tốc độ đọc ghi nhanh hơn, đem lại trải nghiệm mượt mà hơn nhưng vẫn đảm bảo tiết kiệm điện năng tiêu thụ.

Bàn phím bấm thoải mái
Với cụm bàn phím dạng chiclet thông dụng, cùng cách bố trí khoa học và hành trình phím hợp lý, bàn phím này sẽ giúp người dùng thực hiện thao tác đánh máy nhanh chóng, chính xác và thoải mái.

Touchpad thông minh
Touchpad trên máy rất nhạy, diện tích rộng rãi, cho phép thực hiện các thao tác chuột dễ dàng.
Đầy đủ các kết nối
Máy trang bị đầy đủ các cổng kết nối, trong đó có cổng HDMI để trình chiếu lên màn hình lớn như tivi hoặc máy chiếu.

Viên pin 2 cell, với vi xử lý tiết kiệm năng lượng, cho thời lượng sử dụng đảm bảo nhiều giờ sau mỗi lần sạc lại. Thiết kế pin của máy thuộc loại pin liền.')
INSERT [dbo].[Computer] ([Id], [Name], [Image], [CPU], [RAM], [VideoCard], [Hardware], [SlotSupport], [Display], [Port], [Extra], [OS], [Type], [Trademark], [Feature], [Color], [CPUSeries], [ScreenSize], [Resolution], [StandardOfScreen], [Size], [Mass], [WarrantyPeriod], [IsDeleted], [Price], [Description]) VALUES (3, N'Laptop Asus UX430UN-GV091T (I7-8550U) ', N'Máy tính xách tay Laptop Asus UX430UN-GV091T.jpg', N' Intel Core i7-8550U (1.80 Ghz up to 4.00 Ghz, 8M Cache)', N'8GB', N'NVIDIA GeForce MX150 2GB + Intel HD Graphics 620', N'SSD 512GB ', N'2', N'Led ', N'3', NULL, N'Win 10 Home', N'Laptop    ', N'Asus      ', N'Multimedia', N'Vàng đồng', N'Intel Core i7 8th Gen                                                                                                                                                                                                                                          ', N'14"', N'1920 x 1080', N'Full HD', N'14"', N'1.3 Kg    ', 24, 0, N'29.490.000', N'Đang cập nhật')
INSERT [dbo].[Computer] ([Id], [Name], [Image], [CPU], [RAM], [VideoCard], [Hardware], [SlotSupport], [Display], [Port], [Extra], [OS], [Type], [Trademark], [Feature], [Color], [CPUSeries], [ScreenSize], [Resolution], [StandardOfScreen], [Size], [Mass], [WarrantyPeriod], [IsDeleted], [Price], [Description]) VALUES (7, N'Laptop LG 13ZD970-G.AX51A5 (I5-7200U) ', N'Máy tính xách tay Laptop LG 13ZD970-G.AX51A5.jpg', N'Core i5, 7200U, 2.5 GHz, 3M, Up to: 3.1 GHz', N'8GB', N'Intel HD Graphics 620, Share', N'8 GB, DDR4, 2133 MHz, 1 Slot, 256GB M.2 2280', N'2', N'Led_KB', N'2', NULL, N'No OS', N'Laptop    ', N'LG        ', N'Multimedia', N'Trắng', N'Intel Core i5 7th Gen                                                                                                                                                                                                                                          ', N'13.3"', N'1920 x 1080', N'Full HD', N'13.3"', N'940 G     ', 12, 0, N'24.000.000', N'Đánh giá sản phẩm Laptop LG 13ZD970-G.AX51A5
Sơ lược sản phẩm
Hướng tới phục vụ khách hàng cao cấp với các tiêu chí sử dụng như cấu hình mạnh, thiết kế đẹp, mỏng, nhẹ thuận tiện cho việc di chuyển. Mới đây ông trùm hiển thị xứ Kim Chi cho ra đời chiếc laptop LG Gram 13ZD970-G.AX51A5 là dòng sản phẩm cao cấp đáp ứng tuyệt vời các yêu cầu trên với thiết kế sang trọng, đẹp mắt và cấu hình cao. Máy phù hợp cho các doanh nhân những người thích sự nhỏ gọn và tiện ích, thường xuyên phải đi gặp khách hàng đi máy bay hay những người thường xuyên phải di chuyển .
Máy xách tay/ Laptop LG 13ZD970-G.AX51A5 (I5-7200U) (Trắng)

Tổng quan thiết kế
Laptop LG Gram 13ZD970-G.AX51A5 sở hữu màn hình 13,3 inch nhỏ gọn. Đường viền mỏng giúp màn hình trông lớn hơn và vừa "khít" với phần thân nhỏ gọn. Toàn bộ vỏ máy được thiết trên chất liệu hợp kim trắng bóng sáng láng. Sự kết hợp của đường viền mảnh mai cùng kiểu dáng gọn nhẹ giúp bạn dễ dàng mang theo ở bất cứ đâu. Để có được tầm nhìn rộng hoàn hảo, Laptop LG Gram 13ZD970-G.AX51A5 được trang bị màn hình "tràn viền" với đường viền siêu mỏng mỏng ở tất cả các cạnh cho trải nghiệm hiển thị rất đã mắt. Để làm được điều đó nhà sản xuất đã bố trí camera xuống dưới bản lề khá độc đáo. Bên cạnh đó, dù có thiết kế khung thân nhỏ, sản phẩm vẫn tạo ra cảm giác màn hình lớn hơn, đem lại trải nghiệm hình ảnh thỏa mãn hơn.

Máy tính xách tay LG Gram 13ZD970-G.AX51A5 siêu nhẹ với 0.94kg. Mặc dù được nhà sản xuất nhét bao nhiêu thứ cho hiệu năng cao hơn như CPU, SSD, RAM, cộng thêm khung kim loại bền hơn cùng thời lượng pin khủng, Laptop LG Gram 13ZD970-G.AX51A5 vẫn là ')
INSERT [dbo].[Computer] ([Id], [Name], [Image], [CPU], [RAM], [VideoCard], [Hardware], [SlotSupport], [Display], [Port], [Extra], [OS], [Type], [Trademark], [Feature], [Color], [CPUSeries], [ScreenSize], [Resolution], [StandardOfScreen], [Size], [Mass], [WarrantyPeriod], [IsDeleted], [Price], [Description]) VALUES (9, N'Laptop Acer A7 A715-71G-57LL (NX.GP8SV.006)', N'Máy tính xách tay Laptop Acer A7 A715-71G-57LL.jpg', N'Core i5, 7300HQ, 2.5GHz, 6M, Up to: 3.5GHz', N'8GB', N'NVIDIA GeForce GTX 1050 // Intel HD Graphics 630, 2GB', N'1x8GB, DDR4, 2133MHz, 2 Slots, 1TB 5400rpm, Khe mở rộng: M.2 2280 (PCIe Gen3 x4, Sata)', N'2', N'Led_KB', N'2', NULL, N'Windows 10 Home SL 64bit', N'Laptop    ', N'Acer      ', N'Multimedia', N'Đen', N'Intel Core i5 7th Gen                                                                                                                                                                                                                                          ', N'15.6"', N'1920 x 1080', N'HD', N'15.6"', N'2.37 Kg   ', 12, 0, N'19.790.000', N'Kiểu thiết kế kẻ sọc tinh xảo cung cấp một kết thúc tinh tế kết thúc nhấn mạnh vỏ bọc nhôm cao cấp.



Cấu hình :

Cpu Core i5-7300HQ - Ram 8GB - HDD 1 TB - NVIDIA GeForce GTX 1050 // Intel HD Graphics 630 - 15.6" - fingerprint - Led KB .

Tính năng  Laptop Acer A715-71G-57LL

Offline Charging - USB 3.1 Type-C™

Cổng USB 3.0 cho phép bạn nạp tiền một cách tiện lợi các thiết bị bên ngoài ngay cả khi máy tính xách tay tắt hoặc ngủ .

Chuẩn USB mới nhất có tốc độ 5Gbps cung cấp truyền dữ liệu và truyền dữ liệu nhanh hơn.



Giao tiếp với tính rõ ràng
Thưởng thức các cuộc gọi điện video chất lượng cao đến gia đình và bạn bè bằng máy ảnh HD và hệ thống microphone kép được tích hợp sẵn với công nghệ giảm tiếng ồn. Có thể nâng cấp dễ dàng , tháo rời tiện lợi cho phép thêm bộ nhớ RAM  nhanh chóng và nâng cấp ổ cứng với việc chỉ tháo nắp thôi.

')
INSERT [dbo].[Computer] ([Id], [Name], [Image], [CPU], [RAM], [VideoCard], [Hardware], [SlotSupport], [Display], [Port], [Extra], [OS], [Type], [Trademark], [Feature], [Color], [CPUSeries], [ScreenSize], [Resolution], [StandardOfScreen], [Size], [Mass], [WarrantyPeriod], [IsDeleted], [Price], [Description]) VALUES (10, N'Laptop Dell Inspiron 13 5378-26W972', N'Máy tính xách tay Laptop Dell Inspiron 13 5378-26W972.jpg', N'Core i5, 7200U, 2.5 GHz, 3M, Up to: 3.1 GHz', N'4GB', N'Intel HD Graphics 620, SHARE', N'4 GB, DDR4, 2133(2400) MHz, 2 Slots, 500GB 5400rpm', N'2', N'Led_KB', N'2', NULL, N'Windows 10 Home SL 64bits', N'Laptop    ', N'Dell      ', N'Multimedia', N'Xám', N'Intel Core i5 7th Gen                                                                                                                                                                                                                                          ', N'13.3"', N'1920 x 1080', N'Full HD', N'13.3"', N'1.68 KG   ', 12, 0, N'18.490.000', N'Máy xách tay/ Laptop Dell Inspiron 13 5378-26W972

Dell Inspiron 5378 được tạo nên từ chất liệu nhựa với các cạnh thiết kế vuông vức và được phủ một lớp xám .


dell inspiron 5378

Máy được thiết kế với màn hình 13.3 inch Full HD (1920 x 1080)  với công nghệ tấm nền IPS cho góc nhìn rộng, độ sáng cao, màu sắc chân thật và sắc nét. Ngoài ra, màn hình cảm ứng giúp hỗ trợ sâu hơn các thao tác của người dùng trên Windows 10 dễ dàng hơn, máy được thiết kế với độ dày chỉ 20,4 mm và trọng lượng là 1,7 kg.

 

')
INSERT [dbo].[Computer] ([Id], [Name], [Image], [CPU], [RAM], [VideoCard], [Hardware], [SlotSupport], [Display], [Port], [Extra], [OS], [Type], [Trademark], [Feature], [Color], [CPUSeries], [ScreenSize], [Resolution], [StandardOfScreen], [Size], [Mass], [WarrantyPeriod], [IsDeleted], [Price], [Description]) VALUES (15, N'Máy tính xách tay Laptop MSI GS65 8RE 242VN', N'Máy tính xách tay Laptop MSI GS65 8RE 242VN.jpg', N'Intel Core i7-8750H', N'16GB', N'NVIDIA GeForce GTX 1060 6GB + Intel UHD Graphics 630', N'SSD M.2 NVMe 256GB ', N'2', N'Led_KB', N'2', NULL, N'Win 10 Home', N'Laptop    ', N'MSI       ', N'Multimedia', N'Đen', N'Intel Core i7-8750H ( 2.2 GHz - 4.1 GHz / 9MB / 6 nhân, 12 luồng )                                                                                                                                                                                            ', N'15.6"', N'1920 x 1080', N'Full HD', N'15.6"', N'1.88Kg    ', 24, 0, N'51.290.000đ', N'Review Laptop MSI GS65 8RE-242VN, Laptop Cao cấp hiệu rồng vàng MSI
Nhắc đến  Laptop thương hiệu MSI chúng ta luôn luôn có một sự tin tưởng nhất định cho những sản phẩm của cái tên này, tuy luôn có những ý kiến bất đồng về những sản phẩm của các thương hiệu khác nhau. Thế nhưng MSI vẫn luôn chứng minh được lí do đáng để chọn Laptop của họ cho dù là nhu cầu sử dụng chơi game hay làm việc cường độ cao. Và để chiều lòng được những người luôn muốn làm mọi thứ có thể trên chiếc Laptop của chính họ, MSI đã cung cấp cho chúng ta một dòng sản phẩm Laptop Cao cấp mang tên MSI GS65 8RE-242VN Stealth.

')
INSERT [dbo].[Computer] ([Id], [Name], [Image], [CPU], [RAM], [VideoCard], [Hardware], [SlotSupport], [Display], [Port], [Extra], [OS], [Type], [Trademark], [Feature], [Color], [CPUSeries], [ScreenSize], [Resolution], [StandardOfScreen], [Size], [Mass], [WarrantyPeriod], [IsDeleted], [Price], [Description]) VALUES (16, N'Máy tính xách tay Laptop MSI GE73 8RF 428VN', N'Máy tính xách tay Laptop MSI GE73 8RF 428VN.jpg', N'Intel Core i7-8750H', N'16GB', N'NVIDIA GeForce GTX 1070 8GB + Intel UHD Graphics 630', N'HDD 1TB 7200rpm + SSD 256GB', N'2', N'Led_KB', N'4', NULL, N'Win 10 Home', N'Laptop    ', N'MSI       ', N'Multimedia', N'Đen', N'Intel Core i7-8750H ( 2.2 GHz - 4.1 GHz / 9MB / 6 nhân, 12 luồng )                                                                                                                                                                                            ', N'17.3"', N'1920 x 1080', N'Full HD', N'17.3"', N'2.89Kg    ', 24, 0, N'55.490.000đ', N'Mô tả
MSI là thương hiệu dẫn đầu về sản xuất laptop gaming, các sản phẩm của hãng luôn được rất nhiều người dùng ưa chuộng và lựa chọn. Mới đây, hãng đã cho ra mắt mẫu laptop MSI GE73 8RF Raider RGB Edition với nhiều nâng cấp và cải tiến đáng giá, hứa hẹn sẽ làm khuynh đảo thị trường laptop gaming trong thời gian tới.

MSI GE73 8RF Raider RGB Edition sở hữu thiết kế mang hơi hướng của những chiếc xe thể thao với màu sắc RGB đầy cá tính. Phần nắp máy được trang bị hệ thống đèn chiếu sáng mới với chế độ tối ưu hóa Mystic Light và Gaming Mode mang lại ánh sáng rực rỡ nhất từ trước tới nay. Thỏa sức tận hưởng những trận chiến gay cấn trong không gian gaming đầy màu sắc.

Thực hiện một bước tiến lớn trong hiệu năng hoạt động với bộ xử lý Hexa Core đầu tiên dành cho máy tính xách tay! Trải nghiệm trò chơi trên MSI GE73 8RF Raider RGB Edition được tăng cường và hiển thị nhanh hơn lên tới 40% so với chip xử thế thế hệ trước.
Laptop MSI GE73 8RF-428VN')
INSERT [dbo].[Computer] ([Id], [Name], [Image], [CPU], [RAM], [VideoCard], [Hardware], [SlotSupport], [Display], [Port], [Extra], [OS], [Type], [Trademark], [Feature], [Color], [CPUSeries], [ScreenSize], [Resolution], [StandardOfScreen], [Size], [Mass], [WarrantyPeriod], [IsDeleted], [Price], [Description]) VALUES (17, N'Máy tính xách tay Laptop Lenovo Yoga 520 14IKB 81C80088VN', N'Máy tính xách tay Laptop Lenovo Yoga 520 14IKB 81C80088VN.jpg', N'Intel Core i5-8250U', N'4GB', N'Intel HD Graphics 620', N'HDD 1TB 5400rpm', N'2', N'Led_KB', N'2', NULL, N'Win 10 Home', N'Laptop    ', N'Lenovo    ', N'Multimedia', N'Vàng', N'Intel Core i5-8250U ( 1.6 GHz - 3.4 GHz / 6MB / 4 nhân, 8 luồng )                                                                                                                                                                                             ', N'14"', N'1920 x 1080', N'HD', N'14"', N'1.74Kg    ', 12, 0, N'15.500.000đ', N'Mô tả
Lenovo Yoga 520-14IKB là dòng laptop trung cấp có thiết kế đa năng của Lenovo với khả năng xoay gập 360 để tạo ra nhiều tư thế làm việc, được hoàn thiện với chất liệu kim loại, máy vừa sang trọng, bền bỉ đi kèm viền màn hình mỏng đẹp ấn tượng.

Laptop Lenovo Yoga 520-14IKB-81C80088VN 

Lớp sơn phủ bóng bẩy, sang trọng và cũng cực kì chắc chắn theo thời gian, những khớp nối, đường cắt được làm chắc chắn và tinh tế, độ hoàn thiện sản phẩm cao.

Màn hình 14 inch của Yoga 520 cũng rất ấn tượng với độ phân giải FullHD tích hợp công nghệ hình ảnh của Acer cho màu sắc đẹp, viền mỏng cũng là một điểm nổi bật, dễ gây ấn tượng nhất với vẻ hiện đại đặc biệt.

Laptop Lenovo Yoga 520-14IKB-81C80088VN 

Yoga 520 cũng sở hữu hiệu năng máy mạnh mẽ với vi xử lý Core i5 Kabylake mới, RAM 4GB và bộ nhớ ổ cứng 1 TB tha hồ lưu trữ dữ liệu, cấu hình này phù hợp nhiều đối tượng như văn phòng, học tập, doanh nhân, chơi được một số game nặng.

Bộ loa âm thanh cực chuẩn từ Harman Kardon và có đèn bàn phím tích hợp dùng cho điều kiện thiếu sáng.

Laptop Lenovo được tích hợp Windows Hello mở khóa bằng khuôn mặt cực kì hiện đại như các smartphone hiện nay, máy cũng có khu vực cảm biến vân tay tùy theo nhu cầu người sử dụng.

Về kết nối máy có hầu hết cổng như USB 2.0, USB 3.0, USB Type C, LAN, HDMI hay đầu đọc thẻ nhớ...')
INSERT [dbo].[Computer] ([Id], [Name], [Image], [CPU], [RAM], [VideoCard], [Hardware], [SlotSupport], [Display], [Port], [Extra], [OS], [Type], [Trademark], [Feature], [Color], [CPUSeries], [ScreenSize], [Resolution], [StandardOfScreen], [Size], [Mass], [WarrantyPeriod], [IsDeleted], [Price], [Description]) VALUES (18, N'Máy tính xách tay Laptop HP Probook 440 G5 2XR74PA', N'Máy tính xách tay Laptop HP Probook 440 G5 2XR74PA.JPG', N'Core i5, 8250U, 1.6GHz, 6M, Up to: 3.4GHz', N'8GB', N'Intel UHD Graphics 620, SHARE', N'1TB 5400rpm', N'2', N'Led_KB', N'2', NULL, N'Win 10 Home', N'Laptop    ', N'HP        ', N'Multimedia', N'Bạc', N'Intel Core i5-8250U ( 1.6 GHz - 3.4 GHz / 6MB / 4 nhân, 8 luồng )                                                                                                                                                                                             ', N'14"', N'1366 x 768', N'Full HD', N'14"', N'1.63Kg    ', 12, 0, N'16.690.000đ', N'Hiệu năng ổn định
HP Probook 440 G5 2XR74PA được trang bị bộ vi xử lý thế hệ mới Intel Core i5-8250U cùng RAM 8 GB, HP Probook 430 chạy mượt mà hầu hết các ứng dụng văn phòng và các game thông dụng. Tốc độ xử lý đa nhiệm của máy cũng khá ổn định. Ngoài ra, thiết bị này còn được tích hợp chip đồ họa Intel HD Graphics để đáp ứng các chương trình đồ họa nhẹ.

Laptop HP Probook 440 G5-2XR74PA

Màn hình HD 14 inch sáng rõ
HP Probook 440 G5 2XR74PA được trang bị màn hình 14 inch với độ phân giải HD 1366 x 768 pixels cho chất lượng hình ảnh ổn định. Ngoài ra, công nghệ LED BrightView được tích hợp giúp tối ưu hóa màn hình hiển thị, cho bạn thưởng thức những bộ phim HD một cách sống động và chân thực nhất.

Kết nối tối ưu
Chỉ trong một thiết bị nhỏ gọn, HP Probook 440 G5 2XR74PA mang đến cho bạn hầu như đầy đủ các kết nối cần thiết như Wifi, HDMI, USB 3.0, USB 2.0, Ethernet, jack cắm headphone. Giúp bạn tiết kiệm và thuận tiện hơn trong công việc cũng như các nhu cầu giải trí.

Thỏa sức lưu trữ với ổ cứng 1TB
Không gian lưu trữ lên đến 1TB từ Laptop HP Probook 440 G5 2XR74PA giúp bạn thoải mái lưu trữ các bộ phim, bài hát yêu thích cũng như các dữ liệu cần thiết. Giờ đây bạn có thể dễ dàng làm việc cũng như giải trí chỉ với một thiết bị nhỏ gọn.')
INSERT [dbo].[Computer] ([Id], [Name], [Image], [CPU], [RAM], [VideoCard], [Hardware], [SlotSupport], [Display], [Port], [Extra], [OS], [Type], [Trademark], [Feature], [Color], [CPUSeries], [ScreenSize], [Resolution], [StandardOfScreen], [Size], [Mass], [WarrantyPeriod], [IsDeleted], [Price], [Description]) VALUES (12, N'Máy tính xách tay Laptop MacBook MPXQ2', N'Máy tính xách tay Laptop MacBook MPXQ2.png', N'Intel Core i5 Dual-core 2.3 GHz', N'8GB', N'Intel Iris Plus Graphics 640', N'128 GB PCIe', N'2', N'LED Backlit', N'2', NULL, N'OS X Sierra', N'Laptop    ', N'Apple     ', N'Multimedia', N'Xám', N'Intel Core thế hệ thứ 7                                                                                                                                                                                                                                        ', N'13.3"', N'2560 x 1600', N'Full HD', N'13.3"', N'1.3kg     ', 24, 0, N'31.700.000đ', N'Apple MacBook Pro 13 inch 128GB MPXQ2 (2017)
Apple MacBook Pro 13 inch 128GB MPXQ2 nói riêng và dòng MacBook nói chung đến từ Apple luôn là sự lựa chọn hàng đầu của những khách hàng ưa thích sự sang trọng và đẳng cấp. Với phiên bản Apple MacBook Pro 2017 càng gây nên sự chú ý đặc biệt với người dùng, hứa hẹn mở ra trào lưu mới cho thế hệ MacBook.

Thiết kế và ngoại hình Apple MacBook Pro 13 inch 128GB MPXQ2
Sở hữu thiết kế mỏng và nhẹ với màn hình LED-backlit IPS LCD, 2560 x 1600 pixels, 13.3 inches làm cho hình ảnh hiển thị cực kì sắc nét và thực tế.

Máy được tạo nên từ kim loại nguyên khối, tuy nhiên chúng còn mỏng và nhẹ hơn rất nhiều so với phiên bản cũ với trọng lượng chỉ 1.37kg.

Hiệu suất cực khủng của Apple MacBook Pro 13 inch 128GB MPXQ2
Với phiên bản Apple MacBook Pro 13 inch 2017 này, người dùng đảm bảo hài lòng với tốc độ xử lí Intel Core i5 Dual-core 2.3 GHz, Turbo Boost lên đến 3.6 GHz, 64MB eDRAM, bộ RAM 8GB, bộ nhớ lưu trữ 128 GB PCIe, đồ họa Intel Iris Plus Graphics 640 xử lí đồ họa nhanh hơn 130% thực sự đã chinh phục toàn bộ người dùng.

Apple MacBook Pro 13 inch 128GB MPXQ2 lưu lượng pin cực bền
Lượng pin của Apple MacBook Pro 13 inch 128GB MPXQ2 được sử dụng liên tục lên đến 10 giờ đáp ứng được các yêu cầu của người dùng như chơi game, làm việc với thời gian lâu, làm việc bất cứ nơi đâu, …mà không phải lo hết pin.

Apple MacBook Pro 13 inch 128GB MPXQ2 tính năng cải tiến
Ở chiếc MacBook Pro 13 inch 2017 phiên bản mới này, Apple đã cải tiến hiện đại với công nghệ mới nhất giúp cho tốc độ cải thiện của máy nhanh hơn 21% trong tác vụ lõi đơn và tác vụ lõi đa nhanh hơn 30%. Bên cạnh đó, so với phiên bản trước, MacBook Pro 2017 này được thiết kế với 4 cổng Thunderbolt 3 giúp cho việc kết nối cắm sạc, truyền dữ liệu, kết nối với các thiết bị khác với chuẩn tốc độ 40GB/s.

Với nhiều tính năng cải tiến hoàn hảo cùng với thiết kế trang nhã, hiệu suất cực khủng như vậy, cho đến thời điểm hiện tại Apple MacBook Pro 13 inch 128GB MPXQ2 vẫn là một trong các sản phẩm hiện đại và sang trọng bậc nhất của dòng MacBook')
INSERT [dbo].[Computer] ([Id], [Name], [Image], [CPU], [RAM], [VideoCard], [Hardware], [SlotSupport], [Display], [Port], [Extra], [OS], [Type], [Trademark], [Feature], [Color], [CPUSeries], [ScreenSize], [Resolution], [StandardOfScreen], [Size], [Mass], [WarrantyPeriod], [IsDeleted], [Price], [Description]) VALUES (13, N'Máy tính xách tay Laptop MacBook MR9Q2', N'Máy tính xách tay Laptop MacBook MR9Q2.jpg', N'Core i5, 2.3GHz', N'16GB', N'Intel Iris Plus Graphics 655, Share', N'SSD, 256GB', N'2', N'LED Backlit', N'4', NULL, N'Mac OS High Sierra', N'Laptop    ', N'Apple     ', N'Multimedia', N'Xám', N'Intel Core thế hệ thứ 8                                                                                                                                                                                                                                        ', N'13.3"', N'2560 x 1600', N'Full HD', N'13.3"', N'1.4kg     ', 12, 0, N'46.990.000đ', N'Đang cập nhật')
INSERT [dbo].[Computer] ([Id], [Name], [Image], [CPU], [RAM], [VideoCard], [Hardware], [SlotSupport], [Display], [Port], [Extra], [OS], [Type], [Trademark], [Feature], [Color], [CPUSeries], [ScreenSize], [Resolution], [StandardOfScreen], [Size], [Mass], [WarrantyPeriod], [IsDeleted], [Price], [Description]) VALUES (19, N'Máy tính xách tay Laptop Asus S410UA EB003T', N'Máy tính xách tay Laptop Asus S410UA EB003T.jpg', N'Core i5, 8250U, 1.6GHz, 6M, Up to: 3.4GHz', N'4GB', N'Intel UHD Graphics 620, SHARE', N'1TB 5400rpm', N'2', N'Led_KB', N'2', NULL, N'Win 10 Home', N'Laptop    ', N'Asus      ', N'Multimedia', N'Vàng đồng', N'Intel Core i5-8250U ( 1.6 GHz - 3.4 GHz / 6MB / 4 nhân, 8 luồng )                                                                                                                                                                                             ', N'14"', N'1920x1080', N'Full HD', N'14"', N'1.43Kg    ', 12, 0, N'16.190.000đ', N'Tính năng – Bổ trợ trải nghiệm nghe – nhìn rất xuất sắc!
Ngoài NanoEdge và bảo mật vân tay, máy còn được trang bị thêm cả tá công nghệ hỗ trợ hiển thị như:
- ASUS Splendid, cho máy khả năng điều chỉnh màu – độ sáng – độ tương phản hiển thị dựa trên bốn chế độ có sẵn: Giúp tối ưu hiệu suất hàng ngày là chế độ Thường. Trong khi chế độ Sống Động giúp tối ưu tương phản video thì chế độ Eye Care lại giảm thiểu bớt ánh sáng xanh dương để làm dịu mắt lại. Cuối cùng là chế độ Chỉnh Tay để bạn điều chỉnh mọi thứ theo nhu cầu sử dụng.
- ASUS Tru2Life khiến mọi video trở nên sắc nét hơn nhờ các ứng dụng thuật toán thông minh, công nghệ này tối ưu độ sắc nét và tương phản của từng điểm ảnh trong mỗi khung hình đến 150% để cho ra những hình ảnh vô cùng sống động và thực tế.Tác dụng dễ cảm nhận được nhất của Tru2Life là trong việc xem hoạt hình 2D và 3D, màu sắc sẽ được thể hiện còn nịnh mắt hơn cả các mẫu TV tầm trung hay laptop được trang bị màn IPS.

 

may-xach-tay-laptop-asus-s410ua-eb003t-i5-8250u-vang-dong-1

Bổ trợ cho các công nghệ màn hình là các công nghệ tăng cường âm thanh khá đặc sắc như:
- ASUS SonicMaster là một tổ hợp gồm phần cứng, phần mềm và kỹ thuật hiệu chỉnh âm thanh, được thiết kế để bạn có thể thẩm âm tốt hơn và trải nghiệm từng cung điệu âm thanh. Một bộ codec chuyên nghiệp để đảm bảo chức năng mã hóa và giải mã âm thanh chuẩn xác, còn bộ khuếch đại âm thanh, loa và khoang tạo tiếng vang lớn sẽ mang đến những âm thanh mạnh mẽ hơn và âm bass trầm hơn. Theo ASUS, Laptop Asus VivoBook S410UA-EB003T đã được hiệu chỉnh và xử lý tín hiệu để từng chi tiết nhỏ nhất đều được xử lý tốt, lọc bỏ tiếng ồn và cải thiện độ rõ nét âm thanh để làm bạn như được đắm chìm vào bài nhạc khi nghe nhạc bằng tai nghe.
- ASUS Audio Wizard là một bộ phần mềm mạnh mẽ có thể giúp bạn dễ dàng đạt được sự cân bằng lý tưởng về âm thanh cho mọi loại nội dung. Phần mềm này cung cấp các tùy chọn thiết lập chỉnh tay, để bạn có thể chủ động kiểm soát bản phối âm của mình. Chế độ m nhạc sẽ đưa những bài hát ưa thích của bạn ra cuộc sống; chế độ Phim sẽ cho những âm thanh như ngoài rạp; chế độ Ghi âm tối ưu thiết lập cho các bản ghi âm trong như pha lê; chế độ Chơi Game cho những âm thanh thật sự đắm chìm trong game; còn chế độ Lời nói sẽ tăng cường độ rõ nét của cuộc hội thoại trong thời gian thực cho bất cứ môi trường nào.

may-xach-tay-laptop-asus-s410ua-eb003t-i5-8250u-vang-dong-1')
SET IDENTITY_INSERT [dbo].[Computer] OFF
SET IDENTITY_INSERT [dbo].[CPU] ON 

INSERT [dbo].[CPU] ([Id], [Name], [Image], [WarrantyPeriod], [TradeMark], [CPUType], [CPULine], [CoreNum], [ThreadNum], [CoreCPU], [BasicPulse], [MaxPulse], [CacheCPU], [Size], [Description], [IsDeleted], [Price]) VALUES (1, N'CPU Pentium Dual Core-G4600 (3.6GHz)', N'Bộ vi xử lý CPU Pentium Dual Core-G4600.jpg', 36, N'Intel     ', N'Pentium', N'Pentium Dual Core-G4600', 2, 4, N'Kaby Lake', N'3.6 GHz', N'3.6 GHz', N'3MB', N'14nm', N'          CPU Intel Pentium G4600 thật sự đã cao hơn khá nhiều so với model đang rất hot hiện nay, Pentium G4560; và đã tiến rất sát đến sản phẩm cao cấp hơn - Core i3 6100, từng là lựa chọn hàng đầu của những người muốn build một chiếc PC giá hợp lý để chơi game. Bước cờ tích hợp vào dòng sản phẩm phổ thông của mình một công nghệ đã từng làm nên thương hiệu của Intel - HyperThreading, đã thật sự hồi sinh dòng sản phẩm Pentium, và chính vì đó đã khiến cho việc lựa chọn CPU của các game thủ hiện nay trở nên dễ dàng hơn.  

Chip Dual-Core
Chạy hai nhân xử lý độc lập trong một gói vật lý ở cùng một tần số. 

Bộ nhớ Intel® Smart Cache
Bộ nhớ cache chia sẻ được phân bổ tự động cho mỗi lõi của bộ xử lý, dựa trên khối lượng công việc. Sử dụng bộ nhớ cache cấp độ hiệu quả cao và giao tiếp tức thời giữa lõi và bộ nhớ.
        ', 0, N'2.710.000')
INSERT [dbo].[CPU] ([Id], [Name], [Image], [WarrantyPeriod], [TradeMark], [CPUType], [CPULine], [CoreNum], [ThreadNum], [CoreCPU], [BasicPulse], [MaxPulse], [CacheCPU], [Size], [Description], [IsDeleted], [Price]) VALUES (2, N'Bộ vi xử lý/ CPU Pentium G5500 (3.8GHz)', N'Bộ vi xử lý CPU Pentium G5500.jpg', 36, N'Intel     ', N'Pentium', N'Khong', 2, 4, N'Coffee Lake', N'3.8 GHz', N'3.8 GHz', N'4MB', N'14nm', N'Bộ vi xử lý/ CPU Pentium G5500 (3.8GHz)
CPU Intel Pentium Gold G5500 3.8Ghz / 4MB / Socket 1151 là thế hệ vi xử lý mới nhất của nhà sản xuất danh tiếng intel được chạy trên nền tảng Coffee Lake mới nhất hiện nay, tối ưu hóa về giải trí, chơi game, hay xử lý đồ họa ở mức cao. sản phầm đang được bán tại Phong Vũ.Bộ vi xử lý CPU Pentium G5500 (3.8GHz)', 0, N'2.710.000')
INSERT [dbo].[CPU] ([Id], [Name], [Image], [WarrantyPeriod], [TradeMark], [CPUType], [CPULine], [CoreNum], [ThreadNum], [CoreCPU], [BasicPulse], [MaxPulse], [CacheCPU], [Size], [Description], [IsDeleted], [Price]) VALUES (3, N'Bộ vi xử lý/ CPU Core I3-7100 (3.9GHz)', N'Bộ vi xử lý CPU Core I3-7100.jpg', 36, N'Intel     ', N'Core i3 7th Gen', N'Core i3-7100', 2, 4, N'Kaby Lake', N'3.9 GHz', N'3.9 GHz', N'3MB', N'14nm', N'Đánh giá Bộ vi xử lý/ CPU Core I3-7100 (3.9GHz)
Sơ lược

INTEL đã chính thức ra mắt dòng CPU thế hệ thứ 7 của mình với tên mã Kaby Lake. Đây vẫn là dòng CPU được sản xuất trên công nghệ 14nm của Intel, nhưng đã được cải tiến đáng kể về hiệu năng xử lý đồ họa và tiết kiệm điện năng. Các CPU Kaby Lake sẽ tập trung rất nhiều vào khả năng xử lý đồ họa, đặc biệt là video với độ phân giải 4K, các video 360 độ và công nghệ thực tế ảo. Đồng thời hiệu năng xử lý các ứng dụng cũng được tăng lên 12%, còn hiệu năng duyệt web cao hơn 19% so với Skylake. Đặc biệt các dòng CPU sử dụng cho laptop mỏng, nhẹ sẽ đem lại hiệu năng và thời lượng pin được cải thiện rất nhiều.

bo-vi-xu-ly-cpu-intel-core-i3-7100-3m-cache-3-90ghz-hd-graphics-630-socket-1151-kaby-lake', 0, N'3.425.000')
INSERT [dbo].[CPU] ([Id], [Name], [Image], [WarrantyPeriod], [TradeMark], [CPUType], [CPULine], [CoreNum], [ThreadNum], [CoreCPU], [BasicPulse], [MaxPulse], [CacheCPU], [Size], [Description], [IsDeleted], [Price]) VALUES (4, N'Bộ vi xử lý / CPU AMD Ryzen 7 2700X (3.7/4.3 GHz)', N'Bộ vi xử lý CPU AMD Ryzen 7 2700X.png', 36, N'AMD       ', N'Ryzen 7', N'Ryzen 7 2700x', 8, 16, N'Khong', N'3.7 GHz', N'4.3 GHz', N'16MB', N'12nm', N'ĐÁNH GIÁ SẢN PHẨM BỘ VI XỬ LÝ/ CPU AMD RYZEN 7 2700X (3.7/4.3 GHz)
GIỚI THIỆU SẢN PHẨM
Bộ vi xử lý/ CPU AMD Ryzen 7 2700X (3.7/4.3 GHz) là một sản phẩm thành công của AMD với nhân đồ họa Vega tích hợp, hướng tới đối tượng khách hàng game thủ chủ yếu chơi game online và một vài game eSport có thể tiết kiệm được khá nhiều chi phí cho chiếc PC của bản thân. Sản phẩm này phù hợp các hệ thống máy Gaming, Stream, giải trí Hi-End cao cấp. Đây là dòng CPU đa nhân, đa nhiệm có mức xung nhịp cao phù hợp các hệ thống máy WORKSTATION như dựng hình 3D (3DS MAX, MAYA, Blender, Sketchup...), Render 3D, dựng phim (Adobe Premiere, After Effect, Sony Vegas, Corel Studio...), ứng dụng biên tập ảnh (Photoshop, Lightroom...) và các ứng dụng khác... BỘ VI XỬ LÝ/ CPU AMD RYZEN 7 2700G (3.7/4.3 GHz)', 0, N'9.100.000')
INSERT [dbo].[CPU] ([Id], [Name], [Image], [WarrantyPeriod], [TradeMark], [CPUType], [CPULine], [CoreNum], [ThreadNum], [CoreCPU], [BasicPulse], [MaxPulse], [CacheCPU], [Size], [Description], [IsDeleted], [Price]) VALUES (5, N'Bộ vi xử lý/ CPU AMD Ryzen R7 1700X (3.4/3.8GHz)', N'Bộ vi xử lý CPU AMD Ryzen R7 1700X.jpg', 36, N'AMD       ', N'Ryzen 7', N'Ryzen R7 1700X', 8, 16, N'Summit Ridge', N'3.4 GHz', N'3.8 GHz', N'16MB', N'14nm', N'Mô tả:

CPU máy tính AMD Ryzen 7 1700x 3.4 GHz (Up to 3.8GHz)

- Công nghệ AMD SenseMI
- Công nghệ AMD XFR (dải tần số)
- Cơ chế làm mát hiệu quả
- AMD Ryzen Master cho việc ép xung





 1.1. Tổng quan về sản phẩm

CPU máy tính Ryzen 7 1700x 3.4 GHz hỗ trợ dual-channel DDR4 với tốc độ tối đa 3200 MHz kèm theo đó là một loạt các tập lệnh như AVX2, AES, FMA3, AMD-V SSE 4.1, 4.2 ... Một công nghệ rất nổi bật trên Ryzen là kết nối liên đới mới được AMD gọi là Infinity Fabric. Đây là một gia', 0, N'8.499.000')
INSERT [dbo].[CPU] ([Id], [Name], [Image], [WarrantyPeriod], [TradeMark], [CPUType], [CPULine], [CoreNum], [ThreadNum], [CoreCPU], [BasicPulse], [MaxPulse], [CacheCPU], [Size], [Description], [IsDeleted], [Price]) VALUES (6, N'Bộ vi xử lý/ CPU Core I7-7700K (4.2GHz)
', N'Bộ vi xử lý CPU Core I7-7700K.jpg', 36, N'Intel     ', N'Core i5 7th Gen', N'Core i7-7700K', 4, 8, N'Kaby Lake', N'4.2 GHz', N'4.5 GHz', N'8MB', N'14nm', N'Bộ vi xử lý/ CPU Core I7-7700K (4.2GHz)
Bộ vi xử lý/ CPU Core I7-7700K

Bộ xử lý Core i7 7700K cho nền tảng máy tính để bàn đã được phát hành. Mặc dù bạn nghĩ rằng đó là một con chip mới, nhưng nó chỉ là một cách nhìn nhận từ Skylake, có nghĩa là bộ vi xử lý hàng loạt là Socket 1151. Điều này cũng có nghĩa là nếu bạn đang ở trong thị trường cho một bộ xử lý 7000 series mới, H170 hoặc Z170 của bạn Bo mạch chủ có thể tương thích với hồ Kaby sau khi nâng cấp BIOS bo mạch chủ. Bộ vi xử lý Kaby Lake mới này có hiệu quả năng lượng khá cao, vẫn mạnh mẽ như những năm trước. Nếu bạn quan tâm đến các công nghệ mới như Intel Optane, bạn sẽ cần nâng cấp lên bo mạch chủ Z270 hoặc H270. Trong bài đánh giá này, chúng tôi kiểm tra Core i7 7700K; Một bộ xử lý Kaby Lake mở khóa có bốn lõi và một TDP mỏng 91W, tương tự như Skylake TDP khôn ngoan, một lần nữa một bộ xử lý đã được chế tạo trên quy trình sản xuất 14nm.

', 0, N'9.650.000')
INSERT [dbo].[CPU] ([Id], [Name], [Image], [WarrantyPeriod], [TradeMark], [CPUType], [CPULine], [CoreNum], [ThreadNum], [CoreCPU], [BasicPulse], [MaxPulse], [CacheCPU], [Size], [Description], [IsDeleted], [Price]) VALUES (7, N'Bộ vi xử lý/ CPU Core I7-7740X (4.30GHz)', N'Bộ vi xử lý CPU Core I7-7740X.jpg', 36, N'Intel     ', N'Ryzen Threadripper', N'Core i7-7740X', 4, 8, N'Skylake', N'4.3 GHz', N'4.5 GHz', N'8MB', N'14nm', N'Bộ vi xử lý/ CPU Core I7-7740X
Sử dụng socket 2066 chạy trên mainboard X299 mới nhất và rất nhiều nâng cấp. Số lane PCIe hỗ trợ là 16, cùng 2 kênh RAM DDR4 tại 2666. Mức tiêu thụ điện năng chỉ 112W. Sản phẩm này nhắm tới phân khúc người dụng máy trạm làm việc sản xuất nội dung số, game thủ và cộng đồng OC.

CPU Core I7-7740X', 0, N'9.325.000')
INSERT [dbo].[CPU] ([Id], [Name], [Image], [WarrantyPeriod], [TradeMark], [CPUType], [CPULine], [CoreNum], [ThreadNum], [CoreCPU], [BasicPulse], [MaxPulse], [CacheCPU], [Size], [Description], [IsDeleted], [Price]) VALUES (8, N'Bộ vi xử lý/ CPU Core I7-8700 (3.2GHz)', N'Bộ vi xử lý CPU Core I7-8700.jpg', 36, N'Intel     ', N'Core i7 8th Gen', N'Core i7-8700', 6, 12, N'Coffee Lake', N'3.2 GHz', N'4.6 GHz', N'12MB', N'14nm', N'Bộ vi xử lý/ CPU Core I7-8700 (3.2GHz)
CPU Intel Core i7 8700 3.2Ghz Turbo Up to 4.6Ghz / 12MB / 6 Cores, 12 Threads  là thế hệ vi xử lý mới nhất của nhà sản xuất danh tiếng intel được chạy trên nền tảng Coffee Lake mới nhất hiện nay, tối ưu hóa về giải trí, chơi game, hay xử lý đồ họa ở mức cao. sản phầm đang được bán tại Phong Vũ



○ Thế hệ thứ 8 của dòng Core i với tên gọi Coffee Lake. Sử dụng socket 1151V2 và chạy trên các mainboard 300 series chipset.', 0, N'9.950.000')
INSERT [dbo].[CPU] ([Id], [Name], [Image], [WarrantyPeriod], [TradeMark], [CPUType], [CPULine], [CoreNum], [ThreadNum], [CoreCPU], [BasicPulse], [MaxPulse], [CacheCPU], [Size], [Description], [IsDeleted], [Price]) VALUES (9, N'Bộ vi xử lý/ CPU Core I7-7700 (3.6GHz)', N'Bộ vi xử lý CPU Core I7-7700.jpg', 36, N'Intel     ', N'Core i7 7th Gen', N'Core i7-7700', 4, 8, N'Kaby Lake', N'3.6 GHz', N'4.2 GHz', N'8MB', N'14nm', N'CPU Intel Core i7-7700 3.6 GHz / 8MB / HD 630 Series Graphics / Socket 1151 (Kabylake)
Thiết yếu:

Bộ Sưu Tập Sản Phẩm 7th Generation Intel® Core™ i7 Processors
Tên mã Kaby Lake trước đây của các sản phẩm
Phân đoạn thẳng Desktop
Số hiệu Bộ xử lý i7-7700
Tình trạng Launched
Ngày phát hành Q1''17
Thuật in thạch bản 14 nm
Giá đề xuất cho khách hàng

Hiệu suất:

Số lõi 4
Số luồng 8
Tần số cơ sở của bộ xử lý 3.60 GHz
Tần số turbo tối đa 4.20 GHz', 0, N'9.500.000')
INSERT [dbo].[CPU] ([Id], [Name], [Image], [WarrantyPeriod], [TradeMark], [CPUType], [CPULine], [CoreNum], [ThreadNum], [CoreCPU], [BasicPulse], [MaxPulse], [CacheCPU], [Size], [Description], [IsDeleted], [Price]) VALUES (10, N'Bộ vi xử lý/ CPU Core I7-7800X (3.50 GHz)', N'Bộ vi xử lý CPU Core I7-7800X.jpg', 36, N'Intel     ', N'Ryzen Threadripper', N'Core i7-7800X', 6, 12, N'Skylake', N'3.5 GHz', N'4.0 GHz', N'8.25MB', N'14nm', N'Đang cập nhật', 0, N'10.420.000')
INSERT [dbo].[CPU] ([Id], [Name], [Image], [WarrantyPeriod], [TradeMark], [CPUType], [CPULine], [CoreNum], [ThreadNum], [CoreCPU], [BasicPulse], [MaxPulse], [CacheCPU], [Size], [Description], [IsDeleted], [Price]) VALUES (11, N'Bộ vi xử lý CPU AMD Ryzen Athlon 200GE', N'Bộ vi xử lý CPU AMD Ryzen Athlon 200GE.jpg', 36, N'AMD       ', N'Ryzen Threadripper', N'AMD Athlon', 2, 4, N'Athlon 200GE', N'3.4 GHz', N'3.4 GHz', N'4MB', N'14nm', N'Đang cập nhật', 0, N'1.470.000đ')
INSERT [dbo].[CPU] ([Id], [Name], [Image], [WarrantyPeriod], [TradeMark], [CPUType], [CPULine], [CoreNum], [ThreadNum], [CoreCPU], [BasicPulse], [MaxPulse], [CacheCPU], [Size], [Description], [IsDeleted], [Price]) VALUES (12, N'Bộ vi xử lý CPU Celeron G4900', N'Bộ vi xử lý CPU Celeron G4900.jpg', 36, N'Intel     ', N'Celeron', N'Không', 2, 2, N'Coffee Lake', N'3.1 GHz', N'3.1 GHz', N'2MB', N'14nm', N'Đánh giá Bộ vi xử lý CPU Celeron G4900
Dựa trên cấu trúc 14nm Coffee Lake (thế hệ thứ 8), Intel Celeron G4900 là sự lựa chọn tuyệt vời cho người dùng có ý thức giá trị muốn xây dựng các máy tính cá nhân cho chơi game trực tuyến và sử dụng ứng dụng văn phòng.Bộ vi xử lý CPU Celeron G4900

Đồ họa tích hợp INTEL HD Graphis 610 hỗ trợ tuyệt với cho các trải nghiệm phim 4K và chỉnh sửa ảnh

Với 2 lõi xử lý cung cấp sức mạnh hỗ trợ các hoạt động trực tuyến : dễ dàng thao tác từ lướt Web, mua sắm sang trò chuyện hay truy cập mạng xã hội

Hỗ trợ công nghệ ảo hóa INTEL VT-x, INTEL AES giúp tăng cường đa nhiệm hiệu quả hơn. Các công việc tạo, chỉnh sửa và quản lý dễ dàng được xử lý

Cấu trúc vi thiết kế 14nm đem lại hiệu suất làm việc tăng cường đồng thời giúp tiết kiệm chi phí điện năng

Bộ xử lý này hoạt động ở tốc độ 3,1 GHz với điện năng tiêu thụ là 51 W và hỗ trợ tới 64 GiB bộ nhớ kênh đôi DDR4-2400 ECC. Ngoài ra G4900 còn kết hợp với UHD Graphics 610 IGP của Intel', 0, N'1.280.000đ')
INSERT [dbo].[CPU] ([Id], [Name], [Image], [WarrantyPeriod], [TradeMark], [CPUType], [CPULine], [CoreNum], [ThreadNum], [CoreCPU], [BasicPulse], [MaxPulse], [CacheCPU], [Size], [Description], [IsDeleted], [Price]) VALUES (13, N'Bộ vi xử lý CPU Core I3 8100', N'Bộ vi xử lý CPU Core I3 8100.jpg', 36, N'Intel     ', N'Core i3 8th Gen', N'Core i3-8100', 4, 4, N'Coffee Lake', N'3.6 GHz', N'3.6 GHz', N'6MB', N'14nm', N'So sánh Bộ vi xử lý/ CPU Core I3-8100 (3.6GHz) với các CPU cùng phân khúc
Có thể nói Coffee Lake là 1 platform đem lại nhiều cải thiện về kiến trúc trên những dòng CPU của Intel kể từ những sự đột phá đến từ Lynnfield và Sandy Bridge trước đây, với tất cả những dòng CPU đều được nâng cấp 1 cách rõ rệt ở số lượng nhân và luồng xử lý. Tiêu biểu là những i7-8700K, i5-8600K/8400 đều có hiệu năng lẫn giá thành cạnh tranh khá tốt so với các đối thủ đến từ AMD là Ryzen 7 1800X/1700, Ryzen 5 1600X/1500X/1400, trong khi đó ở phân khúc đại trà thì Intel lấy core i3 8100 để cạnh tranh trực tiếp với Ryzen 3 của AMD.

Liệu core i3-8100 có giúp Intel giành lại phân khúc đại trà vừa bị AMD nẫng mất tay trên của mình trong thời gian gần đây không? Bài viết này sẽ đánh giá tổng quát hiệu năng của core i3-8100 để giúp bạn có câu trả lời chính xác hơn nhé.

Đôi nét về Bộ vi xử lý/ CPU Core I3-8100
Kiến trúc Coffee Lake của Intel thế hệ được cho là thành công lớn của công ty trong hơn một thập kỷ qua. Trong đó, phải kể đến các mô hình Core i3 được hưởng lợi nhiều nhất, có những bước đi đột phá nhất. Trong quá khứ, các CPU Core i3 của Intel sử dụng lõi đôi Hyper-Threaded. Nhưng đến thời kỳ chuyển giao thế hệ, Core i3 series Coffee Lake lại được kiến tạo với lõi tứ. Trên lý thuyết, điều đó có thể hiểu rằng chúng tương đương với Core i5 - Kaby Lake với mức giá thấp hơn.', 0, N'3.530.000đ')
INSERT [dbo].[CPU] ([Id], [Name], [Image], [WarrantyPeriod], [TradeMark], [CPUType], [CPULine], [CoreNum], [ThreadNum], [CoreCPU], [BasicPulse], [MaxPulse], [CacheCPU], [Size], [Description], [IsDeleted], [Price]) VALUES (14, N'Bộ vi xử lý CPU Core I5 8400', N'Bộ vi xử lý CPU Core I5 8400.jpg', 36, N'Intel     ', N'Core i5 8th Gen', N'Core i5-8400
', 6, 6, N'Coffee Lake', N'2.8 GHz', N'4.0 GHz', N'9MB', N'14nm', N'Đánh giá chi tiết - So sánh hiệu năng bộ vi xử lý Intel Core i5-8400 
Giới thiệu
Không thể ko thừa nhận việc ra mắt dòng CPU Ryzen của AMD đánh dấu sự trở lại của AMD sau 1 thời gian dài vắng bóng trên thị trường đã gây nên sức ép khá nhiều lên Intel khi mà Ryzen 1 cho hiệu năng xử lý khá ngang ngửa với các dòng CPU Kaby Lake, thậm chí Ryzen còn cho hiệu năng có phần nhỉnh hơn ở các tác vụ đa nhiệm. Chính điều này đã buộc Intel phải tung ra những cải thiện kịp thời của mình trên platform Coffee Lake, điển hình là những dòng CPU như i7-8700K và i5-8600K đều được tăng thêm số nhân cũng như luồng xử lý để cạnh tranh lại với Ryzen của AMD. Tuy nhiên giá thành của 2 mẫu CPU này là không hề rẻ, hơn nữa đây là 2 mẫu CPU chuyên dùng cho việc ép xung nên nếu bạn chỉ là một người sử dụng bình thường không có nhu cầu ép xung thì chiếc CPU i5-8400 là một lựa chọn có hiệu năng trên giá thành cao hơn rất nhiều so với i5-8600K và vẫn sở hữu 6 nhân xử lý. Đây có thể được xem là đối thủ cạnh tranh trực tiếp với các dòng CPU như Ryzen 5 1400, 1500X và 1600X, trong bài viết này sẽ đánh giá tổng quát và so sánh hiệu năng của i5-8400 để giúp cho bạn có cái nhìn trực quan hơn về chiếc CPU Coffee Lake hot nhất trong phân khúc tầm trung của Intel nhé.

', 0, N'6.150.000đ')
INSERT [dbo].[CPU] ([Id], [Name], [Image], [WarrantyPeriod], [TradeMark], [CPUType], [CPULine], [CoreNum], [ThreadNum], [CoreCPU], [BasicPulse], [MaxPulse], [CacheCPU], [Size], [Description], [IsDeleted], [Price]) VALUES (15, N'Bộ vi xử lý CPU Core I5 7500', N'Bộ vi xử lý CPU Core I5 7500.jpg', 36, N'Intel     ', N'Core i5 7th Gen', N'Core i5-7500', 4, 4, N'Kaby Lake', N'3.4 GHz', N'3.8 GHz', N'6MB', N'14nm', N'Bộ vi xử lý Quad-Core LGA 1151 Core i5-7500 3.4 GHz của Intel có tốc độ 3,4 GHz đồng thời có các tính năng như công nghệ Intel Turbo Boost 2.0. Với công nghệ Intel Turbo Boost 2.0, tần số turbo tối đa mà bộ xử lý này đạt được là 3,8 GHz. Ngoài ra, bộ xử lý này có 4 lõi với 4 luồng trong ổ cắm LGA 1151 và có 6MB bộ nhớ cache. Có 4 lõi cho phép bộ vi xử lý chạy nhiều chương trình đồng thời mà không làm chậm hệ thống, trong khi 4 luồng cho phép một trình tự sắp xếp theo thứ tự cơ bản được truyền qua hoặc xử lý bởi một lõi CPU. Bộ xử lý này cũng hỗ trợ lên đến 64GB bộ nhớ RAM DDR4-2400 / 2133 và DDR3L 1600/1333 ở tốc độ 1.35V, có Hướng dẫn mới của AES, in thạch bản 14nm và sử dụng công nghệ thế hệ thứ 7 (Kaby Lake).Về mặt đồ họa, bộ vi xử lý Quad-Core LGA 1151 Core i5-7500 3.4 GHz sử dụng tích hợp Intel HD Graphics 630.

Turbo Boosted Hiệu suất cao 

Dành ít thời gian hơn để chờ đợi với công suất và khả năng phản ứng nhanh của công nghệ Intel® Turbo Boost 2.0. Tuổi thọ pin lâu hơn và sạc nhanh hơn giúp bạn tự do trải nghiệm tốc độ và hiệu năng được cải tiến. Tạo, chỉnh sửa và chia sẻ nội dung 4K một cách dễ dàng và khám phá chế độ xem 4K và 360 đầy đủ trên màn hình. Nói cách khác, bộ xử lý tốt nhất của Intel thậm chí còn tốt hơn.

Tốc độ bạn cần cho máy tính

Được trang bị phản hồi nhanh, bộ xử lý Intel® Core ™ thế hệ thứ 7 có sức mạnh và tốc độ để đáp ứng nhu cầu của bạn. Mở tập tin và chương trình một cách nhanh chóng, cộng với việc chuyển đổi giữa các ứng dụng và trang web một cách liền mạch không chậm trễ.

Giải trí ấn tượng

Trải nghiệm nội dung siêu cao độ với độ rõ nét và độ sắc nét của độ phân giải 4K. Với điểm ảnh cao hơn 4 lần so với màn hình HD hoàn toàn, bạn sẽ có được những hình ảnh sắc nét, rõ ràng hơn cho một chế độ xem immersive như bao giờ hết.

Giải quyết rắc rối nhanh hơn

Các máy tính ngày nay không phức tạp hơn bao giờ hết - đăng nhập nhanh và dễ dàng với công nghệ nhận dạng khuôn mặt, được đánh thức 0.5 giây và không bao giờ cảm thấy nặng tay với các thiết bị cạo râu mới.', 0, N'6.390.000đ')
INSERT [dbo].[CPU] ([Id], [Name], [Image], [WarrantyPeriod], [TradeMark], [CPUType], [CPULine], [CoreNum], [ThreadNum], [CoreCPU], [BasicPulse], [MaxPulse], [CacheCPU], [Size], [Description], [IsDeleted], [Price]) VALUES (16, N'Bộ vi xử lý CPU Xeon E3 1230V6', N'Bộ vi xử lý CPU Xeon E3 1230V6.jpg', 36, N'Intel     ', N'Xeon E3 Family', N'Xeon E3-1230V6', 4, 8, N'Kaby Lake', N'3.5 GHz', N'3.9 GHz', N'8MB', N'14nm', N'Tiếp nối sản phẩm thế hệ trước V5. CPU Intel Xeon E3-1230 V6 là bản nâng cấp đáng giá tăng hiệu năng đáng kể ! Đây là dòng sản phẩm phù hợp với các máy trạm WORKSTATIONS và dòng máy chủ Server. Dòng sản phẩm CPU Xeon hỗ trợ RAM ECC cùng hàng loạt tính năng mới mang tới tốc độ, ổn định tối ưu cho cả hệ thống.

', 0, N'7.515.000đ')
INSERT [dbo].[CPU] ([Id], [Name], [Image], [WarrantyPeriod], [TradeMark], [CPUType], [CPULine], [CoreNum], [ThreadNum], [CoreCPU], [BasicPulse], [MaxPulse], [CacheCPU], [Size], [Description], [IsDeleted], [Price]) VALUES (17, N'Bộ vi xử lý CPU AMD A8 7600', N'Bộ vi xử lý CPU AMD A8 7600.jpg', 36, N'Intel     ', N'A8 7th Gen', N'A8 7600', 4, 4, N'Kaveri', N'3.1 GHz', N'3.8 GHz', N'4MB', N'14nm', N'APU là loại chip xử lý tiên tiến bao gồm cả CPU và GPU trên cùng một đế giúp tiết kiệm chi phí cho người tiêu dùng và giải phóng bớt không gian của card đồ họa rời.

A10-7800 là con chip mạnh nhất nhất trong 3 con APU nói trên, nó bao gồm 4 nhân CPU và 8 nhân đồ họa GPU Radeon R7 ở bên trong, xung nhịp tối đa 3.5 GHz kèm theo công nghệ Heterogeneous System Architecture (HSA) giúp kết hợp sức mạnh của CPU và GPU hoạt động cùng lúc nhằm nâng cao tốc độ và hiệu quả xử lý của hệ thống.



Ngoài ra, cả 3 APU mới đều hỗ trợ các công nghệ AMD Quick Stream, AMD Steady Video và AMD TrueAudio giúp tăng cường chất lượng hình ảnh và âm thanh của máy tính một cách chân thực hơn, hỗ trợ video 4K và bộ mã Mantle API giúp tăng tốc độ chơi game đối với những tựa game có hỗ trợ công nghệ này.', 0, N'2.030.000đ')
INSERT [dbo].[CPU] ([Id], [Name], [Image], [WarrantyPeriod], [TradeMark], [CPUType], [CPULine], [CoreNum], [ThreadNum], [CoreCPU], [BasicPulse], [MaxPulse], [CacheCPU], [Size], [Description], [IsDeleted], [Price]) VALUES (18, N'Bộ vi xử lý CPU AMD FX 8370', N'Bộ vi xử lý CPU AMD FX 8370.jpg', 36, N'AMD       ', N'A8 7th Gen', N'FX 8370', 8, 8, N'Bulldozer', N'4.0 GHz', N'4.3 GHz', N'8MB', N'32nm', N'CPU AMD FX 8370', 0, N'4.200.000đ')
INSERT [dbo].[CPU] ([Id], [Name], [Image], [WarrantyPeriod], [TradeMark], [CPUType], [CPULine], [CoreNum], [ThreadNum], [CoreCPU], [BasicPulse], [MaxPulse], [CacheCPU], [Size], [Description], [IsDeleted], [Price]) VALUES (19, N'Bộ vi xử lý CPU AMD Ryzen Threadripper 1920X', N'Bộ vi xử lý CPU AMD Ryzen Threadripper 1920X.jpg', 36, N'AMD       ', N'Ryzen Threadripper', N'Ryzen Threadripper 1920X', 12, 24, N'Summit Ridge', N'3.5 GHz', N'4.0 GHz', N'32MB', N'14nm', N'Trong những năm 2000 của thập kỉ trước, thế giới công nghệ chứng kiến cuộc chiến giữa 2 gã khổng lồ vùng thung lũng Silicon trong cuộc đua chiếm lĩnh thị phần CPU toàn cầu. Một cuộc chiến công nghệ hoàn toàn dựa vào hiệu năng đơn nhân nơi bên nào tạo ra vi xử lý có tần sốlớn hơn coi như nắm chắc phần thắng. Và hiển nhiên Intel giành được miếng bánh lớn hơn và tiếp tục dẫn đầu thị trường CPU cho đến bây giờ. 10-15 năm trôi qua, các tác vụ tính toán ngày càng nặng nề, yêu cầu xử lý đa tác nhiệm, xung nhịp đơn nhân mất dần sự quan trọng tối cao trong hệ thống PC và dần chuyển giao sang yếu tố số lượng nhân CPU có IPC cao. AMD thua thiệt nhiều năm trời cuối cùng cũng chớp lấy đươc cơ hội, hồi sinh mạnh mẽ như phượng hoàng với dòng CPU phổ thông Ryzen, và sẵn sàng phân khúc workstation đa nhân bằng Threadripper với Threadripper 1920X 12 Core/ 24 Thread, là một trong 2 đại diện của dòng vi xử lý mới nhất từ "đội Đỏ" ra mắt tháng 7/2017. threadripper 1920x box
Phân khúc thị trường
Trong khi RYZEN 7 đối đầu trực tiếp với high-end desktop (HEDT) CPU của Intel, Threadripper lại được thiết kế để còn vượt qua  phân khúc này, tiến tới địa hạt của super high-end desktop (SHED). Số lượng nhân được tìm thấy trên một CPU Threadripper đã từng chỉ được tìm thấy trên những sản phẩm vi xử lý server của Intel có giá thành lên tới $10000. Bằng việc đưa cuộc chơi đa nhân, với IPC, xung nhịp và điện năng tiêu thụ hợp lý, AMD đã và đang thành công điều chỉnh sự lạm phát về giá thành/ hiệu năng mà Intel đã một mình gây dựng nên trong thời gian độc quyền lâu dài, đồng thời cân bằng khả năng tiếp cận của khách hàng tới công nghệ, dù là người dùng cá nhân hay tập đoàn. threadripper 1920x unlock Tương tự như những con chip lớn nhất từ phía Intel, AMD hướng Threadripper tới nhóm người khách hàng muốn làm tất cả mọi việc mọi lúc. Với người dùng tại nhà, đây có thể là vừa chơi game vừa stream (vừa transcode vừa up thông tin lên theo thời gian thực) đồng thời host một server game. Đối với người dùng chuyên nghiệp, đây có thể là sản xuất video hoặc điện toán cùng với nhiều VGA/ FPGA kết hợp kết nối băng thông hoặc bộ nhớ lưu trữ tốc độ cao. Về cơ bản, người dùng có thể hoàn thành một công việc quan trọng trong khi vẫn có thể tối ưu hệ thống để tiếp cận với nhiều tác vụ khác. Suy cho cùng Threadripper 1920X nói riêng cũng như toàn thể dòng Threadripper nói chung có thiết kế được suy ra từ thiết kế của CPU server. Cũng nhờ đó mà nó không quá khác biệt về khía cạnh hiệu năng-mật độ mà server đã hình thành nên trong thập kỉ qua. socket tr4 1920x', 0, N'21.390.000đ')
INSERT [dbo].[CPU] ([Id], [Name], [Image], [WarrantyPeriod], [TradeMark], [CPUType], [CPULine], [CoreNum], [ThreadNum], [CoreCPU], [BasicPulse], [MaxPulse], [CacheCPU], [Size], [Description], [IsDeleted], [Price]) VALUES (20, N'Bộ vi xử lý CPU Core i3 8350K', N'Bộ vi xử lý CPU Core i3 8350K.jpg', 36, N'Intel     ', N'Ryzen Threadripper', N'Core i3-8350K', 4, 4, N'Coffee Lake', N'4.0 GHz', N'4.0 GHz', N'8MB', N'14nm', N'Đánh giá bộ vi xử lý Intel Core i3-8350K
Giới thiệu
Với sự ra đời của các dòng CPU Coffee Lake, được xem là đòn phản công tới từ Intel đối với Ryzen của AMD. Trong khi ở phân khúc cao cấp, những chiếc CPU như i7-8700K và i5-8600K đang làm mưa làm gió trên thị trường không những ở việc hiệu năng được cải thiện khá nhiều so với Kaby Lake mà khả năng ép xung cũng tốt hơn. Tuy nhiên nếu cả 2 dòng CPU trên đều có vượt quá so với kinh phí, nhưng bạn lại vẫn muốn mày mò ép xung và không thích sử dụng các dòng CPU Ryzen của AMD thì i3-8350K có thể sẽ là một lựa chọn rất phù hợp đối với bạn. Trong bài viết này sẽ đánh giá tổng quát hiệu năng của i3-8350K để xem liệu hiệu năng của chiếc CPU này so với i5-8400 như thế nào, có phải là một sự thay đổi lớn so với i3-7350K không và quan trọng hơn hết là hiệu năng so với Ryzen 5 1500X/1400.



Hiệu năng
Trong bài viết này, các hệ thống được sử dụng để so sánh hiệu năng i3-8350K bao gồm:

Intel Socket 1151 (Z370)
Intel Core i5-8600K, i5-8400
MSI Z370 Gaming Pro Carbon AC
4x 8GB G.Skill RipJaws V DDR4-3200 ở 2666, 2933 và 3200 Mhz
AMD Socket AM4 Workstation
AMD Ryzen 5 1600/1500X/1400 , Ryzen 3 1300X
MSI X370 Xpower Gaming Titanium
4x 8GB G.Skill RipJaws V DDR4-3200 ở 2667Mhz và 3200 Mhz
Intel LGA 1151 (Z270)
Intel Core i5-7600K
MSI Z270 Gaming M7
2x 8GB G.Skill RipJaws V DDR4-3200 ở 2666 và 3200 Mhz
Cùng với card màn hình GTX 1080, hệ điều hành Windows 10 với các cập nhật và driver mới nhất cũng như tất cả các game đều được đặt ở thiết lập cao nhất trên độ phân giải 1080p.

Đánh giá bộ vi xử lý Intel Core i3-8350K - Thông số ky thuật', 0, N'4.950.000đ')
SET IDENTITY_INSERT [dbo].[CPU] OFF
SET IDENTITY_INSERT [dbo].[Hardware] ON 

INSERT [dbo].[Hardware] ([Id], [Name], [Image], [Description], [WarrantyPeriod], [TradeMark], [Memory], [Label], [ReadSpeed], [WriteSpeed], [Size], [IsDeleted], [Price]) VALUES (1, N'Ổ cứng HDD WD 6TB WD6003FZBX Sata 3 (Đen)', N'Ổ cứng HDD WD 6TB WD6003FZBX Sata 3.jpg', N'Đang cập nhật', 60, N'Western Digital', N'6TB       ', N'WD6003FZBX', N'Chưa xác định', N'Chưa xác định', N'3.5"', 0, N'6.944.000')
INSERT [dbo].[Hardware] ([Id], [Name], [Image], [Description], [WarrantyPeriod], [TradeMark], [Memory], [Label], [ReadSpeed], [WriteSpeed], [Size], [IsDeleted], [Price]) VALUES (2, N'Ổ cứng NAS Seagate Ironwolf 6TB 3.5" Sata 3 (ST6000VN0033)', N'Ổ cứng NAS Seagate Ironwolf 6TB 3.5 Sata 3.jpg', N'ĐIỂM NỔI BẬT CỦA SẢN PHẨM
Được thiết kế đi kèm Phần mềm AgileArray tối ưu Tốc độ và độ bền cho ổ cứng chạy tốt với tốc độ ổn định trong thời gian dài.
Công nghệ đa người dùng giúp cho tối ưu số lượng người sử dụng cho hệ thống NAS của bạn.
Quản lí điện năng tiên tiến giúp cho hệ thống của bạn hoạt động tốt mà vẫn tiết kiệm năng lượng.
 
hdd seagate ironwolf

AgileArray Firmware – Linh hồn của IronWolf có thể giữ lại sự nhanh nhẹn và nhạy bén về những gì hệ thống NAS cần để đáp ứng các nhu cầu lưu trữ cho người dùng của mình. AgileArray cho phép các ổ đĩa được NAS được tối ưu hóa bằng cách tập trung vào sự cân bằng ổ đĩa, tối ưu hóa RAID và quản lý điện năng.', 36, N'Seagate', N'6TB       ', N'Không     ', N'Chưa xác định', N'Chưa xác định', N'Không     ', 0, N'6.300.000')
INSERT [dbo].[Hardware] ([Id], [Name], [Image], [Description], [WarrantyPeriod], [TradeMark], [Memory], [Label], [ReadSpeed], [WriteSpeed], [Size], [IsDeleted], [Price]) VALUES (3, N'Ổ cứng SSD IBM 2.5'''' 120GB (00AJ171)', N'Ổ cứng SSD IBM 2.5 120GB.jpg', N'Đang cập nhật', 12, N'IBM', N'120GB     ', N'N/A       ', N'N/A', N'600 MBps', N'N/A', 0, N'5.820.000')
INSERT [dbo].[Hardware] ([Id], [Name], [Image], [Description], [WarrantyPeriod], [TradeMark], [Memory], [Label], [ReadSpeed], [WriteSpeed], [Size], [IsDeleted], [Price]) VALUES (4, N'Ổ cứng SSD WD 512GB My Passport External', N'Ổ cứng SSD WD 512GB My Passport External.png', N'Đánh giá sản phẩm Ổ cứng SSD WD 512GB My Passport External
Mô tả sản phẩm
Ổ SSD WD 512GB My Passport External là bộ lưu trữ di động với tốc độ cực nhanh. Bảo vệ mật khẩu bằng mã hóa phần cứng giúp bảo mật nội dung của bạn một cách an toàn. Dễ sử dụng, sản phẩm còn có khả năng chống sốc, thiết kế nhỏ gọn,thời gian sử dụng bền lâu.Ổ cứng SSD WD 512GB My Passport External

Tốc độ nhanh nhất
Ổ SSD WD 512GB My Passport External cho đến thời điểm hiện tại được coi là ổ cứng di động nhanh nhất với tốc độ đọc giữ liệu lên đến 515MB/s. Việc sử dụng cổng  USB Type-C giúp truyền tải dữ liệu một cách nhanh chóng. Tốc độ của SSD WD 512GB My Passpor', 36, N'Western', N'512GB     ', N'Không     ', N'Chưa xác định', N'515 MBps', N'Không     ', 0, N'5.390.000')
INSERT [dbo].[Hardware] ([Id], [Name], [Image], [Description], [WarrantyPeriod], [TradeMark], [Memory], [Label], [ReadSpeed], [WriteSpeed], [Size], [IsDeleted], [Price]) VALUES (5, N'Ổ cứng HDD WD 6TB WD60EFRX Sata 3 (Đỏ)', N'Ổ cứng HDD WD 6TB WD60EFRX Sata 3.jpg', N'Ổ cứng WD Red 6TB chuyên dụng cho NAS
Ổ cứng WD Red 6TB cho khả năng tương thích tối ưu với hệ thống NAS gia đình, văn phòng, doanh nghiệp vừa và nhỏ trong hệ thống từ 1 đến 8 bay ổ đĩa.
Công nghệ NASware 3.0 tích hợp trên HDD WD Red 6TB cho phép dễ dàng tích hợp vào nas, tăng độ tin cậy và hiệu năng sử dụng, giảm thiểu downtime (thời gian chết), kiểm soát khắc phục lỗi trong môi trường RAID chạy nhiều khay ổ cứng. Công nghệ 3D Active Balance Plus – công nghệ kiểm soát cân bằng nâng cao, giúp nâng cao đáng kể hiệu năng và độ tin cậy toàn ổ.
Được thiết kế và thử nghiệm để đáp ứng những yêu cầu đặc biệt về hệ thống trong môi trường NAS, ổ cứng nas WD Red cho độ tin cậy cao lên tới 1 triệu giờ (MTBF), hoạt động bền bỉ 24x7 trong môi trường NAS.', 36, N'Western', N'6TB       ', N'Không     ', N'Chưa xác định', N'Chưa xác định', N'N/A', 0, N'5.150.000')
INSERT [dbo].[Hardware] ([Id], [Name], [Image], [Description], [WarrantyPeriod], [TradeMark], [Memory], [Label], [ReadSpeed], [WriteSpeed], [Size], [IsDeleted], [Price]) VALUES (6, N'Ổ cứng HDD Seagate 4TB Backup Plus 3.0, 2.5'''' (Đen)', N'Ổ cứng HDD Seagate 4TB Backup Plus 3.0, 2.5.png', N'Seagate Backup Plus Portable Drive 4TB có thiết kế hoàn toàn mới, lớp vỏ bên ngoài bằng nhựa bề mặt phẳng với logo đặc trưng của hãng Seagate ( logo mới năm 2015)

 

Kết nối USB 3.0 tốc độ nhanh gập 10 lần chuẩn 2.0, đây là dòng ổ cứng di động seagate thích hợp lưu trữ dung lượng lớn với dung lượng của ổ cứng 4TB mà chỉ nhỏ 2.5 inches nó không cần dùng thêm ngồn điện phụ trợ bên ngoài như các ổ cứng 3.5 inches - dây USB 3.0 kèm theo dài 45.72cm

Ổ cứng di động Seagate Backup Plus Portable dễ dàng sao lưu dữ liệu điện thoại di động thông qua ứng dụng Seagate Mobile Backup , có thể dùng cho cả PC và MAC.', 36, N'Seagate', N'4TB       ', N'Không     ', N'Chưa xác định', N'Chưa xác định', N'Không     ', 0, N'4.650.000')
INSERT [dbo].[Hardware] ([Id], [Name], [Image], [Description], [WarrantyPeriod], [TradeMark], [Memory], [Label], [ReadSpeed], [WriteSpeed], [Size], [IsDeleted], [Price]) VALUES (8, N'Ổ cứng HDD HP 3.5'''' 1TB 6G SATA 7.2K (861691-B21)', N'Ổ cứng HDD HP 3.5 1TB 6G SATA 7.2K.jpg', N'Đang cập nhật', 12, N'HP', N'1TB       ', N'861691-B21', N'Chưa xác định', N'Chưa xác định', N'3.5"', 0, N'4.860.000')
INSERT [dbo].[Hardware] ([Id], [Name], [Image], [Description], [WarrantyPeriod], [TradeMark], [Memory], [Label], [ReadSpeed], [WriteSpeed], [Size], [IsDeleted], [Price]) VALUES (7, N'Ổ cứng SSD Corsair Force LE 480GB-F480GBLE200B', N'Ổ cứng SSD Corsair Force LE 480GB-F480GBLE200B.jpg', N' Khởi động và tắt máy tính của bạn nhanh hơn, bắt đầu các ứng dụng của bạn trong nháy mắt và tìm tập tin và tài liệu của bạn và ngay lập tức.
- Nó dễ dàng hơn bao giờ hết để nâng cấp lên tốc độ và độ tin cậy của công nghệ ổ trạng thái rắn.
- Rất nhiều dung lượng lưu trữ để đáp ứng của bạn mỗi ngày cần - làm việc, chơi, tạo ra và giữ tất cả các video của bạn, âm nhạc, tài liệu và nhiều hơn nữa.
- Sử dụng đáng kể ít năng lượng hơn so với ổ cứng truyền thống, cho hiệu quả năng lượng tốt hơn cho máy tính để bàn và tuổi thọ pin lâu hơn cho máy tính xách tay.
- SmartECC và SmartRefresh cho các dữ liệu đáng tin cậy lưu trữ và lỗi sửa chữa.
- Cải thiện tuổi thọ ổ đĩa, độ tin cậy và hiệu suất.
- Một bộ mạnh mẽ công cụ cho nhận được nhiều nhất của SSD.
- Độ tin cậy lâu dài từ một thương hiệu mà bạn có thể tin tưởng', 24, N'Corsair', N'480GB     ', N'LE200     ', N'560 MBps', N'530 MBps', N'N/A', 0, N'4.950.000')
INSERT [dbo].[Hardware] ([Id], [Name], [Image], [Description], [WarrantyPeriod], [TradeMark], [Memory], [Label], [ReadSpeed], [WriteSpeed], [Size], [IsDeleted], [Price]) VALUES (10, N'Ổ cứng SSD Samsung 860 EVO 500GB M.2 Sata (Mz-N6E500BW)', N'Ổ cứng SSD Samsung 860 EVO 500GB M.2 Sata.png', N'Đang cập nhật', 60, N'Samsung', N'500GB     ', N'860Evo M2 ', N'550 MBps', N'520 MBps', N'Không', 0, N'4.090.000')
INSERT [dbo].[Hardware] ([Id], [Name], [Image], [Description], [WarrantyPeriod], [TradeMark], [Memory], [Label], [ReadSpeed], [WriteSpeed], [Size], [IsDeleted], [Price]) VALUES (9, N'Ổ cứng HDD Transcend 4TB Cloud 110K+Box 3.5"', N'Ổ cứng HDD Transcend 4TB Cloud 110K.png', N'StoreJet® Cloud 110

Thay vì dựa vào các dịch vụ lưu trữ đám mây công cộng dựa trên phí để lưu trữ dữ liệu cá nhân của bạn, hãy chọn Cloud StoreJet của Transcend để có được tối đa 4TB không gian lưu trữ cá nhân và sự yên tâm mà đi kèm với toàn quyền kiểm soát dữ liệu của bạn. Tính năng StoreJet Cloud của Transcend mang đến tốc độ truyền dữ liệu cực nhanh với tốc độ 110 MB / s và quản lý dữ liệu tập trung, cho phép lưu trữ hiệu quả và truy cập ngay vào tất cả dữ liệu của bạn ngay cả khi bạn cách xa.

Cài đặt thiết bị di động theo ba bước:
Cửa hàng StoreJet Cloud của Transcend được thiết kế từ nền tảng trở thành thiết bị thân thiện với điện thoại thông minh. Thiết lập Cloud StoreJet của bạn từ điện thoại thông minh hoặc máy tính bảng của bạn bằng ba bước đơn giản
   - Bước 1: Bật Cloud StoreJet của bạn và kết nối với Internet
   - Bước 2: Tải xuống và mở ứng dụng Transcend StoreJet Cloud - khả dụng cho cả Android và iOS - để tự động kết nối với cùng một mạng Wi-Fi
   - Bước 3: Đăng ký tài khoản và mật khẩu. 
', 24, N'Không', N'4TB       ', N'N/A       ', N'N/A', N'Chưa xác định', N'3.5"', 0, N'4.470.000')
SET IDENTITY_INSERT [dbo].[Hardware] OFF
SET IDENTITY_INSERT [dbo].[Keyboard] ON 

INSERT [dbo].[Keyboard] ([Id], [Name], [Image], [Description], [TradeMark], [WarrantyPeriod], [IsDeleted], [Price]) VALUES (1, N'Bàn phím Logitech Gaming G213 (Đen)', N'Bàn phím Logitech Gaming G213.png', N'Mô tả
- Bàn phím sử dụng nút bấm cao su (rubber dome) không gây tiếng ồn.
- Led RGB 16,8 triệu màu tuỳ chỉnh bằng phần mềm Logitech Gaming Software.
- Thiết kế kê tay liền phím chống mỏi.
- Tích hợp các phím đa chức năng.
- Nút khoá phím Window (window lock) phục vụ chơi game tránh bấm nhầm.
- Tần số quét / tốc độ phản hồi 1000Hz / 1ms.
- Layout ANSI tiêu chuẩn.', N'Logitech', 24, 0, N'990.000')
INSERT [dbo].[Keyboard] ([Id], [Name], [Image], [Description], [TradeMark], [WarrantyPeriod], [IsDeleted], [Price]) VALUES (2, N'Bàn phím cơ Zidli CK300 đen', N'Bàn phím cơ Zidli CK300 đen.png', N'Mô tả
- Bàn phím full Cơ Jixian switches, switch có thêm 2 phần nhựa cố định
- Case vuông kim loại bo cover 4 góc
- Layout ANSI, chân nâng cố định.
- Keycap ABS, single orange LED, 
- Kết nối USB 2.0, độ hoàn thiện tốt.', N'Zidli', 12, 0, N'990.000')
INSERT [dbo].[Keyboard] ([Id], [Name], [Image], [Description], [TradeMark], [WarrantyPeriod], [IsDeleted], [Price]) VALUES (3, N'Bàn phím cơ Fuhlen M87s Blue Kailh đen', N'Bàn phím cơ Fuhlen M87s Blue Kailh đen.jpg', N'Mô tả
- Phím cơ cho cảm giác gõ hoàn hảo, tốc độ phản hồi cực nhanh với Kailh swtich
- Dễ điều chỉnh tốc độ và độ sáng của đèn nềnC
- Công nghệ phím đúc 2 màu nhựa cho độ bền tuyệt đối
- Thiết kế với 87 phím cơ nhỏ gọn, dễ dàng sử dụng.
- Sử dụng dây dù chống nhiễu và cổng USB mạ vàng, đèn nền led RGB với nhiều chế độ điều chỉnh', N'Fuhlen', 24, 0, N'899.000')
INSERT [dbo].[Keyboard] ([Id], [Name], [Image], [Description], [TradeMark], [WarrantyPeriod], [IsDeleted], [Price]) VALUES (4, N'Bàn phím Logitech K400 Plus không dây (Trắng)', N'Bàn phím Logitech K400 Plus không dây.jpg', N'Mô tả
Không dây - Receive siêu nhỏ, có Touch Pad, tương thích Windows 7, 8, 10, Android 5.0, Chrome OS. Bảo hành 12 tháng', N'Logitech', 12, 0, N'830.000')
INSERT [dbo].[Keyboard] ([Id], [Name], [Image], [Description], [TradeMark], [WarrantyPeriod], [IsDeleted], [Price]) VALUES (5, N'Bàn phím Trust Us GXT285 ADVANCED', N'Bàn phím Trust Us GXT285 ADVANCED.jpg', N'Mô tả
- Chế độ gaming : vô hiệu hoá phím windows.
- Bộ nhớ trong có thể ghi nhớ 3 profile.
- Chức năng Anti-Ghosting: nhận tối đa 12 phím cùng lúc.
- Led tuỳ chỉnh.
- Tích hợp hàng phím đa phương tiện.
- Độ dài dây USB : 1,8m', N'Trust', 24, 0, N'799.000')
INSERT [dbo].[Keyboard] ([Id], [Name], [Image], [Description], [TradeMark], [WarrantyPeriod], [IsDeleted], [Price]) VALUES (6, N'Bàn phím cơ Dareu CK525 Switch xanh', N'Bàn phím cơ Dareu CK525 Switch xanh.jpg', N'Mô tả
- Led 7 màu được phân bổ từng hàng phím.
- Sử dụng "D" blue switch cho khấc phản hồi ở đỉnh hành trình.
- Tính năng Anti-ghosting : Có thể nhận cùng lúc mọi phím bấm.
- Các chức năng đa phương tiện được tích hợp.', N'DareU', 12, 0, N'707.000')
INSERT [dbo].[Keyboard] ([Id], [Name], [Image], [Description], [TradeMark], [WarrantyPeriod], [IsDeleted], [Price]) VALUES (7, N'Bàn phím cơ gaming Zic ZK1102 blue switch', N'Bàn phím cơ gaming Zic ZK1102 blue switch.jpg', N'Mô tả
- Bàn phím Cơ ZIC ZK1102
- Chống nước, Keycap tháo lắp
- Blue switches, tự tháo lắp, thay thế. Switch có thêm 2 phần nhựa cố định
- Case vuông kim loại bo cover 4 góc
- Chân nâng kiểu gập, Gaming
- Keycap ABS, Mix LED, 
- Kết nối USB 2.0, độ hoàn thiện tốt.', N'Zic', 12, 0, N'750.000')
INSERT [dbo].[Keyboard] ([Id], [Name], [Image], [Description], [TradeMark], [WarrantyPeriod], [IsDeleted], [Price]) VALUES (8, N'Bàn phím cơ Sumtax Bingo RGB (Đen)', N'Bàn phím cơ Sumtax Bingo RGB (Đen).jpg', N'Mô tả
- Led màu, đa sắc
- Outemu Blue Switch
- Giao tiếp USB
- Dây bọc chống tính điện, 1.6m', N'Sumtax', 12, 0, N'780.000')
INSERT [dbo].[Keyboard] ([Id], [Name], [Image], [Description], [TradeMark], [WarrantyPeriod], [IsDeleted], [Price]) VALUES (9, N'Bàn phím Logitech Bluetooth K480 (Đen)', N'Bàn phím Logitech Bluetooth K480 (Đen).png', N'Mô tả
- Kiểu bàn phím: Không dây
- Chức năng Bluetooth  kết nối được với các thiết bị di động, máy tính có Bluetooth.
- 2 pin AAA (được cài đặt sẵn)', N'Logitech', 12, 0, N'800.000')
INSERT [dbo].[Keyboard] ([Id], [Name], [Image], [Description], [TradeMark], [WarrantyPeriod], [IsDeleted], [Price]) VALUES (10, N'Bàn phím Logitech Bluetooth K380 (Xanh)', N'Bàn phím Logitech Bluetooth K380 (Xanh).jpg', N'Mô tả
- Thiết kế mỏng, sang trọng với màu xanh cá tính
- Kết nối một lúc nhiều thiết bị
- Truyền dữ liệu với khoảng cách xa thông qua công nghệ bluetooth
- Sử dụng công nghệ tiết kiệm năng lượng gia hạn thời gian sử dụng
- Tương thích với nhiều thiết bị kết nối', N'Logitech', 12, 0, N'693.000')
SET IDENTITY_INSERT [dbo].[Keyboard] OFF
SET IDENTITY_INSERT [dbo].[MainBoard] ON 

INSERT [dbo].[MainBoard] ([Id], [Name], [Image], [Description], [TradeMark], [Type], [Model], [Chipset], [MaxRamMemory], [RamType], [RamNum], [HDMINum], [WarrantyPeriod], [IsDeleted], [Price]) VALUES (1, N'Bo mạch chủ MSI B350 TOMAHAWK PLUS', N'Bo mạch chủ MSI B350 TOMAHAWK PLUS.jpg', N'Mô tả
- Supports AMD RYZEN Series
- Supports DDR4-3200+(OC) Memory
- Mystic Light and Mystic Light Sync
- Turbo M.2
- Audio Boost with Nahimic 
- GAMING LAN with LAN Protect', N'MSI', N'ATX       ', N'B350 TOMAHAWK PLUS', N'AMD B350', N'64GB      ', N'DDR4 2133, DDR4 2400, DDR4 3200', 4, N'1', 36, 0, N'3.268.000')
INSERT [dbo].[MainBoard] ([Id], [Name], [Image], [Description], [TradeMark], [Type], [Model], [Chipset], [MaxRamMemory], [RamType], [RamNum], [HDMINum], [WarrantyPeriod], [IsDeleted], [Price]) VALUES (2, N'Bo mạch chính/ Mainboard Msi Z170A PC MATE', N'Bo mạch chính Mainboard Msi Z170A PC MATE.png', N'Mô tả
Chipset: Intel® Z170
Socket LGA1151 
Bộ nhớ: Tối đa 64GB
Lưu trữ: M.2 x1, SATA3 x6
Cổng USB: Tối đa 8 USB 3.1, 4 USB 2.0
Âm thanh: 7.1
Kích thước: ATX', N'MSI', N'ATX       ', N'Z170A PC MATE', N'Intel Z170', N'64GB      ', N'DDR4 2400, DDR4 2800, DDR4 3000, DDR4 3200, DDR4 3600', 4, N'1', 36, 0, N'3.050.000')
INSERT [dbo].[MainBoard] ([Id], [Name], [Image], [Description], [TradeMark], [Type], [Model], [Chipset], [MaxRamMemory], [RamType], [RamNum], [HDMINum], [WarrantyPeriod], [IsDeleted], [Price]) VALUES (3, N'Bo mạch chính/ Mainboard Msi X370 Gaming Plus', N'Bo mạch chính Mainboard Msi X370 Gaming Plus.jpg', N'Bo mạch chính/ Mainboard Msi X370 Gaming Plus
TẢN NHIỆT MÁT MẺ NGAY CẢ KHI CHƠI GAMEBo mạch chính/ Mainboard Msi X370 Gaming Plus
Tản nhiệt máy tính là điều quan trọng nhất nếu muốn hệ thống làm việc ổn định khi hoạt động với cường độ cao, Chúng tôi cam đoan mang lại cho bạn số lượng cổng cắm quạt tản nhiệt đầy đủ giúp tản nhiệt tốt nhất cho bất kỳ hệ thống nào.

TÍNH NĂNG CHUYÊN GAME MANG LỢI THẾ ĐẾN VỚI BẠN
Vược qua đối thủ của bạn trong trò chơi và tạo dựng lợi thế của mình bằng một loạt các công cụ MSI GAMING. Phần cứng thông minh & công cụ phần mềm hỗ trợ tối đa và tăng cưởng kỹ năng cho bạn.

Bo mạch chính/ Mainboard Msi X370 Gaming Plus', N'MSI', N'ATX       ', N'X370 GAMING PLUS', N'Không', N'64GB      ', N'	DDR4 1866, DDR4 2133, DDR4 2400, DDR4 2666, DDR4 2800, DDR4 3000, DDR4 3200', 4, N'1', 36, 0, N'3.199.000')
INSERT [dbo].[MainBoard] ([Id], [Name], [Image], [Description], [TradeMark], [Type], [Model], [Chipset], [MaxRamMemory], [RamType], [RamNum], [HDMINum], [WarrantyPeriod], [IsDeleted], [Price]) VALUES (4, N'Bo mạch chính/ Mainboard Asrock Z370 Pro4', N'Bo mạch chính Mainboard Asrock Z370 Pro4.jpg', N'Mô tả
Chipset: Intel® Z370
Socket LGA1151 v2
Bộ nhớ: Tối đa 64GB
Lưu trữ: M.2 x2, SATA3 x6
Cổng USB: Tối đa 1 USB Type-C, 7 USB 3.1
Âm thanh: 7.1
Kích thước: ATX', N'Asrock', N'ATX       ', N'Z370 Pro4', N'Intel Z370', N'64GB      ', N'DDR4 2133, DDR4 2400, DDR4 2666, DDR4 2800, DDR4 3200, DDR4 3600, DDR4 3733, DDR4 3800, DDR4 3866, DDR4 4000, DDR4 4133, DRR4 4266', 4, N'1', 36, 0, N'3.100.000')
INSERT [dbo].[MainBoard] ([Id], [Name], [Image], [Description], [TradeMark], [Type], [Model], [Chipset], [MaxRamMemory], [RamType], [RamNum], [HDMINum], [WarrantyPeriod], [IsDeleted], [Price]) VALUES (5, N'Bo mạch chính/ Mainboard Gigabyte X150-Plus WS (Rev 1.0)', N'Bo mạch chính Mainboard Gigabyte X150-Plus WS.jpg', N'Mô tả
- Hỗ trợ bộ vi xử lý Intel Xeon E3-1200 v5 / Intel Core thế hệ thứ 6 và 7 / Pentium / Celeron
- Hỗ trợ tối đa 4 khe ram DDR4,tối ưu 2 khe
- Nhiều cổng kết nối thông dụng', N'Gigabyte', N'ATX       ', N'GA-X150-PLUS WS', N'Intel C232', N'64GB      ', N'Không', 4, N'Không', 36, 0, N'2.736.000')
INSERT [dbo].[MainBoard] ([Id], [Name], [Image], [Description], [TradeMark], [Type], [Model], [Chipset], [MaxRamMemory], [RamType], [RamNum], [HDMINum], [WarrantyPeriod], [IsDeleted], [Price]) VALUES (6, N'Bo mạch chính/ Mainboard Gigabyte H87M-D3H', N'Bo mạch chính Mainboard Gigabyte H87M-D3H.jpg', N'                    Mô tả
Chipset: Intel® H87 Express 
Socket LGA1150
Bộ nhớ: Tối đa 32GB
Lưu trữ: SATA3 x6
Cổng USB: Tối đa 6 USB 3.0, 8 USB 2.0
Âm thanh: 7.1
Kích thước: M-ATX
        
        ', N'Gigabyte', N'ATX       ', N'Model', N'Intel', N'Không     ', N'DDR3 1333, DDR3 1600', 4, N'1', 36, 0, N'2.690.000')
INSERT [dbo].[MainBoard] ([Id], [Name], [Image], [Description], [TradeMark], [Type], [Model], [Chipset], [MaxRamMemory], [RamType], [RamNum], [HDMINum], [WarrantyPeriod], [IsDeleted], [Price]) VALUES (7, N'Bo mạch chính/ Mainboard Gigabyte AB350-Gaming 3', N'Bo mạch chính Mainboard Gigabyte AB350-Gaming 3.jpg', N'Mô tả
- Socket: AM4 (1331)
- CPU hỗ trợ: Ryzen, APU thế hệ thứ 7
- Chipset: AMD B350
- Hỗ trợ ép xung: Có
- Số khe cắm RAM: 4 x DDR4 (max 3200 MHz)/kênh đôi', N'Gigabyte', N'ATX       ', N'AB350-Gaming 3', N'Không', N'64GB      ', N'DDR4 2133, DDR4 2400, DDR4 3200', 4, N'1', 36, 0, N'2.849.000')
INSERT [dbo].[MainBoard] ([Id], [Name], [Image], [Description], [TradeMark], [Type], [Model], [Chipset], [MaxRamMemory], [RamType], [RamNum], [HDMINum], [WarrantyPeriod], [IsDeleted], [Price]) VALUES (8, N'Bo mạch chính/ Mainboard Msi B350 Tomahawk', N'Bo mạch chính Mainboard Msi B350 Tomahawk.jpg', N'Mô tả
 - Hỗ trợ các bộ vi xử lý AMD® RYZEN Series và các bộ vi xử lý thế hệ 7 A-series / Athlon™ cho socket AM4
- Hỗ trợ bộ nhớ DDR4-3200+(OC)
- DDR4 Boost: Tăng cường hiệu năng cho bộ nhớ DDR4 của bạn
- VR Ready: Trải nghiệm game thực tế ảo tốt nhất mà không bị trễ
- GAMING LED: Đèn LED đem lại cảm giác ấn tượng
- Trải nghiệm game siêu nhanh: Turbo M.2', N'MSI', N'ATX       ', N'B350 Tomahawk', N'AMD B350', N'64GB      ', N'DDR4 1866, DDR4 2133, DDR4 2400, DDR4 3200', 4, N'1', 36, 0, N'3.102.000')
INSERT [dbo].[MainBoard] ([Id], [Name], [Image], [Description], [TradeMark], [Type], [Model], [Chipset], [MaxRamMemory], [RamType], [RamNum], [HDMINum], [WarrantyPeriod], [IsDeleted], [Price]) VALUES (9, N'Bo mạch chính/ Mainboard Asus Strix B350-F Gaming', N'Bo mạch chính Mainboard Asus Strix B350-F Gaming.jpg', N'Mô tả
- Aura Sync RGB LED: Hiệu ứng đồng bộ choáng ngợp và hai đầu cắm dải RGB Aura 4 pin
- Âm thanh SupremeFX: Hiệu suất âm thanh lừng danh với Sonic Studio III và Sonic Radar III đầy trực quan
- Tối ưu 5 Chiều: Ép xung toàn hệ thống với một nhấp chuột.
', N'Asus', N'ATX       ', N'Strix B350-F Gaming', N'AMD B350', N'64GB      ', N'DDR4 2133, DDR4 2400', 4, N'1', 36, 0, N'3.290.000')
INSERT [dbo].[MainBoard] ([Id], [Name], [Image], [Description], [TradeMark], [Type], [Model], [Chipset], [MaxRamMemory], [RamType], [RamNum], [HDMINum], [WarrantyPeriod], [IsDeleted], [Price]) VALUES (10, N'Bo mạch chính/ Mainboard Gigabyte B360 Aorus Gaming 3', N'Bo mạch chính Mainboard Gigabyte B360 Aorus Gaming 3.png', N'Mô tả
Chipset: Intel® B360 Express 
Socket LGA1151 v2
Bộ nhớ: Tối đa 64GB
Lưu trữ: M.2 x2, SATA3 x6
Cổng USB: Tối đa 1 USB Type-C, 5 USB 3.1, 6 USB 2.0
Âm thanh: 7.1
Kích thước: ATX', N'Gigabyte', N'ATX       ', N'Aorus Gaming 3', N'Intel B360', N'64GB      ', N'DDR4 2133, DDR4 2400, DDR4 2666', 4, N'1', 36, 0, N'3.150.000')
SET IDENTITY_INSERT [dbo].[MainBoard] OFF
SET IDENTITY_INSERT [dbo].[Radiator] ON 

INSERT [dbo].[Radiator] ([Id], [Name], [Image], [Description], [TradeMark], [Label], [Material], [Speed], [Size], [FanSize], [Socket], [IsDeleted], [Price]) VALUES (1, N'Quạt CPU Gigabyte Aorus ATC700', N'Quạt CPU Gigabyte Aorus ATC700.png', N'Mô tả
- Đèn RGB 16.8 triệu màu tùy chỉnh
- Quạt tản nhiệt 120mm 2 ball bearing (PWM) 
- Kích thước 139 x 109 x 169 mm
- Tốc độ 1,700 ± 10 % RPM
- Độ ồn 31 dBA
- Lưu lượng gió 53 CFM ±10%
- Tương thích 
+ Intel 2066 / 2011 / 1366 / 1156 / 1155 / 1151 / 1150 / 775
+ AMD FM2+, FM2, FM1, AM4, AM3+, AM3, AM2+, AM2, 939, 754', N'Gigabyte', N'ATC700', N'Nhôm', N'500-1700 RPM±10%', N'Cao 169.4mm', N'120mm', N'LGA 1150, LGA 1151, LGA 1155, LGA 1156, LGA 1366, LGA 2011, LGA 2011-v3, LGA 775, Socket 754, Socket 939, Socket AM2, Socket AM2+, Socket AM3, Socket AM3+, Socket AM4, Socket FM1, Socket FM2, Socket FM2+', 0, N'2.250.000')
INSERT [dbo].[Radiator] ([Id], [Name], [Image], [Description], [TradeMark], [Label], [Material], [Speed], [Size], [FanSize], [Socket], [IsDeleted], [Price]) VALUES (2, N'Quạt CPU Deepcool Captain 240 EX', N'Quạt CPU Deepcool Captain 240 EX.png', N'Mô tả
- Kích thước tản CPU 92.5 x 93 x 85 mm
- Kích thước 274 x 120 x 27 mm
- Tốc độ 1800 ± 10 % RPM
- Độ ồn 31 dBA
- Lưu lượng gió 153.04 CFM ±10%
- Tương thích 
+ Intel LGA20XX / LGA1366 / LGA115X
+ AMD AM4 / AM3+ / AM3 / AM2+ / AM2 / FM2+ / FM2 / FM1', N'Deepcool', N'Captain 240 EX', N'Nhôm', N'500±200-1800 RPM ± 10%', N'274X120X27mm', N'120mm', N'	LGA 1150, LGA 1151, LGA 1155, LGA 1156, LGA 1366, LGA 2011, LGA 2011-v3, LGA 2066, Socket AM2, Socket AM2+, Socket AM3, Socket AM3+, Socket AM4, Socket FM1, Socket FM2, Socket FM2+', 0, N'2.450.000')
INSERT [dbo].[Radiator] ([Id], [Name], [Image], [Description], [TradeMark], [Label], [Material], [Speed], [Size], [FanSize], [Socket], [IsDeleted], [Price]) VALUES (3, N'Quạt CPU Corsair Hydro H80i v2', N'Quạt CPU Corsair Hydro H80i v2.png', N'Mô tả
- Bộ tản nhiệt dày đặc,sang trongj.
- Hiệu suất làm lạnh tùy biến.
- Cổng kết hợp Corsair.
- Làm mát CPU hiệu năng cao làm đơn giản.', N'Corsair', N'Hydro H80i v2', N'Đồng nguyên chất, Nhôm', N'2435 +/- 10% RPM', N'Đang cập nhật', N'120mm', N'LGA 1150, LGA 1151, LGA 1155, LGA 1156, LGA 1366, LGA 2011, LGA 2011-v3, Socket AM2, Socket AM3, Socket FM1, Socket FM2', 0, N'2.539.000')
INSERT [dbo].[Radiator] ([Id], [Name], [Image], [Description], [TradeMark], [Label], [Material], [Speed], [Size], [FanSize], [Socket], [IsDeleted], [Price]) VALUES (4, N'Quạt CPU Deepcool Captain 240EX RGB verison (Đen)', N'Quạt CPU Deepcool Captain 240EX RGB verison.jpg', N'Mô tả
- Kích thước rad : 240mm
- Socket phù hợp : Intel LGA 115x, 2011, 2066 / AMD AM4, AM3
- Led : RGB', N'Deepcool', N'Captain 240EX RGB', N'chất lỏng', N'Không', N'Không', N'120mm', N'LGA 1151, LGA 2011, LGA 2011-v3, LGA 2066, Socket AM3, Socket AM4', 0, N'2.750.000')
INSERT [dbo].[Radiator] ([Id], [Name], [Image], [Description], [TradeMark], [Label], [Material], [Speed], [Size], [FanSize], [Socket], [IsDeleted], [Price]) VALUES (5, N'Quạt case Corsair LL120 RGB 120mm (3 fan + Lighting) (CO-9050072-WW)', N'Quạt case Corsair LL120 RGB 120mm.png', N'Mô tả
- Fan RGB led ring độc đáo, tuỳ chỉnh 16.8 triệu màu.
- Số vòng quay: 600 RPM - 1500 RPM.
- Thiết kế phù hợp với mọi loại case.
- Kích thước quạt: 120mm x 25mm.', N'Corsair', N'LL120', N'Nhựa', N'600 - 1500 +/- 10% RPM', N'120 mm x 25 mm', N'120mm', N'N/A', 0, N'2.599.000')
INSERT [dbo].[Radiator] ([Id], [Name], [Image], [Description], [TradeMark], [Label], [Material], [Speed], [Size], [FanSize], [Socket], [IsDeleted], [Price]) VALUES (6, N'Quạt CPU Deepcool Captain 240EX RGB verison (Trắng)', N'Quạt CPU Deepcool Captain 240EX RGB verison.jpg', N'Mô tả
Kích thước rad : 240mm
Socket hỗ trợ : Intel LGA 115X, 2011, 2066 / AMD AM4, AM3', N'Deepcool', N'Captain 240EX RGB', N'chất lỏng', N'Không', N'Không', N'240mm', N'LGA 1151, LGA 2011, LGA 2011-v3, LGA 2066, Socket AM3, Socket AM4
', 0, N'2.600.000')
INSERT [dbo].[Radiator] ([Id], [Name], [Image], [Description], [TradeMark], [Label], [Material], [Speed], [Size], [FanSize], [Socket], [IsDeleted], [Price]) VALUES (7, N'Quạt case Aigo Aurora R5 (5PCS/Pack)', N'Quạt case Aigo Aurora R5.png', N'Mô tả
- Kích thước fan: 120x120x25mm
- Trọng lượng: 150g
- Tốc độ: 1500 (+/-10%)RPM
- Độ ồn: 23.5dBA
- Sức gió: 33CFM
- Hydro Bearing Fan
- Điện thế 0.35A/ 12V/ 4.2W
- Tuổi thọ: 20.000 giờ
- Gồm 5 Fan + 1 Power Hub', N'Aigo', N'Không', N'Không', N'1500 (+/-10%)RPM', N'120 x 120 x 25 mm', N'Không', N'Không', 0, N'890.000')
INSERT [dbo].[Radiator] ([Id], [Name], [Image], [Description], [TradeMark], [Label], [Material], [Speed], [Size], [FanSize], [Socket], [IsDeleted], [Price]) VALUES (8, N'Quạt CPU CM Hyper 212 LED Turbo (Đỏ)', N'Quạt CPU CM Hyper 212 LED Turbo.jpg', N'Mô tả
- Kích thước 120 x 108 x 163 mm
- Tốc độ 1,600 ± 10 % RPM
- Độ ồn 31 dBA
- Lưu lượng gió 66.3 CFM ±10%
- Tương thích 
+ Intel LGA 2066 / 2011-3 / 2011 / 1366 / 1156 / 1155 / 1151 / 1150 / 775
+ AMD AM4 / AM3+ / AM3 / AM2+ / FM2+ / FM2 / FM1', N'Cooler Master', N'Hyper 212 LED Turbo', N'Nhôm', N'600-1,600 RPM ± 10%', N'120 x 108 x 163 mm', N'120mm', N'LGA 1150, LGA 1151, LGA 1155, LGA 1156, LGA 1366, LGA 2011, LGA 2011-v3, LGA 2066, LGA 775, Socket AM2, Socket AM2+, Socket AM3, Socket AM3+, Socket AM4, Socket FM1, Socket FM2, Socket FM2+', 0, N'820.000')
INSERT [dbo].[Radiator] ([Id], [Name], [Image], [Description], [TradeMark], [Label], [Material], [Speed], [Size], [FanSize], [Socket], [IsDeleted], [Price]) VALUES (12, N'Tản nhiệt CPU Corsair Hydro Cooler H150i Pro RGB - 360mm - Tripple', N'Tản nhiệt CPU Corsair Hydro Cooler H150i Pro RGB - 360mm - Tripple.jpg', N'Mô tả
- Đèn Lighting RGB
- Kích thước Rad 360mm
- Fan Corsair ML120 x3
- Tương thích 
+ Intel 115x, Intel 2011/2066
+ AMD AM2, AM3, AM4', N'Corsair', N'Hydro Cooler H150i Pro', N'Nhôm', N'Không', N'Rad 360 mm', N'120mm', N'LGA 1150, LGA 1151, LGA 1155, LGA 1156, LGA 2011, LGA 2066, Socket AM2, Socket AM3, Socket AM4', 0, N'5.290.000')
INSERT [dbo].[Radiator] ([Id], [Name], [Image], [Description], [TradeMark], [Label], [Material], [Speed], [Size], [FanSize], [Socket], [IsDeleted], [Price]) VALUES (14, N'Quạt CPU Deepcool Gammaxx 400 (Xanh)', N'Quạt CPU Deepcool Gammaxx 400 (Xanh).jpg', N'Mô tả
- Kích thước 135 x 80 x 154.5 mm
- Tốc độ 1,500 ± 10% RPM
- Độ ồn 30 dBA
- Lưu lượng gió 74.34 CFM
- Tương thích 
+ Intel 20XX, LGA1366, LGA115X, LGA775
+ AMD AM4, AM3+, AM3, AM2+, AM2, FM2+, FM2, FM1', N'Deepcool', N'Gammaxx 400', N'Nhôm', N'900 ± 150 ~ 1500 RPM ± 10%', N'135X80X154.5mm', N'120mm', N'LGA 1150, LGA 1151, LGA 1155, LGA 1156, LGA 1366, LGA 2011, LGA 2011-v3, LGA 775, Socket AM2, Socket AM2+, Socket AM3, Socket AM3+, Socket AM4, Socket FM1, Socket FM2, Socket FM2+', 0, N'524.000')
SET IDENTITY_INSERT [dbo].[Radiator] OFF
SET IDENTITY_INSERT [dbo].[RAM] ON 

INSERT [dbo].[RAM] ([Id], [Name], [Image], [Description], [TradeMark], [Color], [RamType], [Memory], [BusSpeed], [WarrantyPeriod], [IsDeleted], [Price]) VALUES (1, N'Bộ nhớ DDR4 Adata 8GB (2400) AX4U240038G16-SRZ', N'Bộ nhớ DDR4 Adata 8GB (2400) AX4U240038G16-SRZ.jpg', N'                                        Mô tả
- Loại: DDR4
- Dung lượng: 1x 8GB
- Xung nhịp: 2400 MHz
- Độ trễ (cas): 16
        
        
        
        ', N'ADATA', N'Đỏ        ', N'XPG       ', N'8GB       ', N'400MHz', 12, 0, N'1.950.000')
INSERT [dbo].[RAM] ([Id], [Name], [Image], [Description], [TradeMark], [Color], [RamType], [Memory], [BusSpeed], [WarrantyPeriod], [IsDeleted], [Price]) VALUES (3, N'Bộ nhớ DDR4 Adata 8GB (1600) AD3U1600W8G11-S', N'Bộ nhớ DDR4 Adata 8GB (1600) AD3U1600W8G11-S.png', N'Mô tả
- Kiểu bộ nhớ: DDR3
- Dung lượng: 8GB (1x8GB) 
- Tốc độ: 1600MHz 
- Tản nhiệt: Không có', N'ADATA', N'Xanh Lá   ', N'AD3U160-S ', N'8GB       ', N'1600MHz', 36, 0, N'1.799.000')
INSERT [dbo].[RAM] ([Id], [Name], [Image], [Description], [TradeMark], [Color], [RamType], [Memory], [BusSpeed], [WarrantyPeriod], [IsDeleted], [Price]) VALUES (4, N'Bộ nhớ DDR4 Adata 8GB (2400) AD4U240038G17-R', N'Bộ nhớ DDR4 Adata 8GB (2400) AD4U240038G17-R.jpg', N'Mô tả
- Kiểu bộ nhớ: DDR4 
- Dung lượng: 8GB (1x8GB) 
- Tốc độ: 2400MHz 
- Tản nhiệt: Không có', N'ADATA', N'Đỏ        ', N'W8G16-BRZ ', N'8GB       ', N'400MHz', 36, 0, N'1.650.000')
INSERT [dbo].[RAM] ([Id], [Name], [Image], [Description], [TradeMark], [Color], [RamType], [Memory], [BusSpeed], [WarrantyPeriod], [IsDeleted], [Price]) VALUES (7, N'Bộ nhớ DDR3 Kingmax 8GB (1600)', N'Bộ nhớ DDR3 Kingmax 8GB.jpg', N'Mô tả
Loại: DDR3
Dung lượng: 8GB x1
Xung bộ nhớ: 1600MHz', N'Kingmax', N'Xanh      ', N'KINGMAX™  ', N'8GB       ', N'1600MHz', 36, 0, N'1.520.000')
INSERT [dbo].[RAM] ([Id], [Name], [Image], [Description], [TradeMark], [Color], [RamType], [Memory], [BusSpeed], [WarrantyPeriod], [IsDeleted], [Price]) VALUES (9, N'Bộ nhớ DDR3 G.Skill 8GB (1600) F3-1600C11S-8GNT', N'Bộ nhớ DDR3 G.Skill 8GB (1600) F3-1600C11S-8GNT.jpg', N'Mô tả
 
Công nghệ tiên tiến, mang lại nhiều tiện ích cho khách hàng', N'G.Skill', N'Đen       ', N'bus 1600  ', N'8GB       ', N'1600MHz', 36, 0, N'1.460.000')
INSERT [dbo].[RAM] ([Id], [Name], [Image], [Description], [TradeMark], [Color], [RamType], [Memory], [BusSpeed], [WarrantyPeriod], [IsDeleted], [Price]) VALUES (11, N'Bộ nhớ/ Ram Team Vulcan 8GB DDR3 1600 Heatsink (Gold)', N'Bộ nhớ Ram Team Vulcan 8GB DDR3 1600 Heatsink.jpg', N'Mô tả
- Loại RAM: DDR3
- Dung lượng: 8GB
- Xung nhịp: 1600MHz
- Độ trễ (cas): 10', N'TEAM', N'Vàng      ', N'VULCAN    ', N'8GB       ', N'1600MHz', 60, 0, N'1.450.000')
INSERT [dbo].[RAM] ([Id], [Name], [Image], [Description], [TradeMark], [Color], [RamType], [Memory], [BusSpeed], [WarrantyPeriod], [IsDeleted], [Price]) VALUES (12, N'Bộ nhớ laptop DDR3 G.Skill 8GB (1600) F3-1600C11S-8GRSL', N'Bộ nhớ laptop DDR3 G.Skill 8GB (1600) F3-1600C11S-8GRSL.jpg', N'Mô tả
 


- Bảo hành (tháng) 36
- Thương hiệu G.Skill
- Label N/A
- Màu sắc Đen phối đỏ
- Kiểu RAM DDR3
- Dung lượng Không
- Tốc độ bus DDR3 1600MH', N'G.Skill', N'Đen       ', N'Không     ', N'8GB       ', N'1600MHz', 36, 0, N'1.540.000')
INSERT [dbo].[RAM] ([Id], [Name], [Image], [Description], [TradeMark], [Color], [RamType], [Memory], [BusSpeed], [WarrantyPeriod], [IsDeleted], [Price]) VALUES (13, N'Bộ nhớ DDR3 G.Skill 8GB (1600) F3-1600C11S-8GIS', N'Bộ nhớ DDR3 G.Skill 8GB (1600) F3-1600C11S-8GIS.jpg', N'Mô tả
- Dung Lượng : 8GB (1 x 8GB)
- Tốc độ : DDR3 1600
- Voltage : 1.5V .', N'G.Skill', N'Đỏ        ', N'AEGIS     ', N'8GB       ', N'1600MHz', 36, 0, N'1.694.000')
INSERT [dbo].[RAM] ([Id], [Name], [Image], [Description], [TradeMark], [Color], [RamType], [Memory], [BusSpeed], [WarrantyPeriod], [IsDeleted], [Price]) VALUES (15, N'Bộ nhớ DDR3 Kingston 8GB (1600) Hyper X Fury (HX316C10FB/8) (Đen)', N'Bộ nhớ DDR3 Kingston 8GB (1600) Hyper X Fury (HX316C10FB) (Đen).jpg', N'Mô tả
- Hãng sản xuất: Kingston
- Dung lượng: 8GB
- Kiểu Ram: DDR3
- Bus:1600Mhz
- Tản nhiệt: Có
- Điện áp:1.5V', N'Kingston', N'Đen       ', N'HyperX    ', N'8GB       ', N'1600MHz', 36, 0, N'1.820.000')
INSERT [dbo].[RAM] ([Id], [Name], [Image], [Description], [TradeMark], [Color], [RamType], [Memory], [BusSpeed], [WarrantyPeriod], [IsDeleted], [Price]) VALUES (16, N'Bộ nhớ DDR4 Apacer 8GB (2400) Panther Golden Heatsink (EK.08G2T.GEC)', N'Bộ nhớ DDR4 Apacer 8GB (2400) Panther Golden Heatsink (EK.08G2T.GEC).jpg', N'Mô tả
- Loại: DDR4
- Dung lượng: 1x 8GB
- Xung nhịp: 2400 MHz
- Độ trễ (cas): 16', N'APACER', N'Đen       ', N'Không     ', N'8GB       ', N'400MHz', 36, 0, N'1.990.000')
SET IDENTITY_INSERT [dbo].[RAM] OFF
SET IDENTITY_INSERT [dbo].[UserAccount] ON 

INSERT [dbo].[UserAccount] ([Id], [Email], [Password], [FirstName], [LastName], [PhoneNumber], [Sex], [DateOfBirth]) VALUES (2, N'Khang@gmail.com', N'123', N'Khang', N'Luong', N'0792155597', N'Male', CAST(N'1997-10-12T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[UserAccount] OFF
SET IDENTITY_INSERT [dbo].[VGA] ON 

INSERT [dbo].[VGA] ([Id], [Name], [Image], [TradeMark], [Label], [ChipsetManufacturer], [Model], [VGA], [BoostClock], [VGAMemory], [RamType], [MaxResolution], [Directx], [Size], [WarrantyPeriod], [IsDeleted], [Price], [Description]) VALUES (1, N'Card màn hình Asus 4GB CERBERUS-GTX1050TI-O4G', N'Card màn hình Asus 4GB CERBERUS-GTX1050TI-O4G.png', N'Asus      ', N'CERBERUS', N'NVIDIA', N'CERBERUS-GTX1050TI-O4G', N'GeForce GTX 1050 Ti', N'1455 MHz / 1341 MHz', N'4GB', N'GDDR5', N'7680 x 4320', N'Đang cập nhật', N'Đang cập nhật', 36, 0, N'4.694.000', N'Thông tin sản phẩm sẽ được cập nhật trong thời gian sớm nhất')
INSERT [dbo].[VGA] ([Id], [Name], [Image], [TradeMark], [Label], [ChipsetManufacturer], [Model], [VGA], [BoostClock], [VGAMemory], [RamType], [MaxResolution], [Directx], [Size], [WarrantyPeriod], [IsDeleted], [Price], [Description]) VALUES (2, N'Card màn hình Asus 2GB EX-GTX1050-02G', N'Card màn hình Asus 2GB EX-GTX1050-02G.jpg', N'Asus      ', N'Không', N'NVIDIA', N'EX-GTX1050-02G', N'GeForce GTX 1050', N'1354 MHz', N'2GB', N'GDDR5', N'7680 x 4320', N'Đang cập nhật', N'Đang cập nhật', 36, 0, N'4.586.000', N'Thông tin sản phẩm sẽ được cập nhật trong thời gian sớm nhất')
INSERT [dbo].[VGA] ([Id], [Name], [Image], [TradeMark], [Label], [ChipsetManufacturer], [Model], [VGA], [BoostClock], [VGAMemory], [RamType], [MaxResolution], [Directx], [Size], [WarrantyPeriod], [IsDeleted], [Price], [Description]) VALUES (3, N'Card màn hình Msi 4GB GTX1050Ti 4GT OCV1', N'Card màn hình Msi 4GB GTX1050Ti 4GT OCV1.jpg', N'MSI       ', N'Không', N'NVIDIA', N'GTX1050Ti 4GT OCV1', N'GeForce GTX 1050 Ti', N'1455 MHz / 1341 MHz', N'4GB', N'GDDR5', N'Đang cập nhật', N'Đang cập nhật', N'Đang cập nhật', 36, 0, N'4.890.000', N'Thông tin sản phẩm sẽ được cập nhật trong thời gian sớm nhất')
INSERT [dbo].[VGA] ([Id], [Name], [Image], [TradeMark], [Label], [ChipsetManufacturer], [Model], [VGA], [BoostClock], [VGAMemory], [RamType], [MaxResolution], [Directx], [Size], [WarrantyPeriod], [IsDeleted], [Price], [Description]) VALUES (4, N'Card màn hình Gigabyte 4GB N105TWF2OC-4GD', N'Card màn hình Gigabyte 4GB N105TWF2OC-4GD.jpg', N'GIGABYTE  ', N'Không', N'NVIDIA', N'N105TWF2OC-4GD', N'GeForce GTX 1050 Ti', N'Boost: 1468 MHz/ Base: 1354 MHz in OC Mode. Boost: 1442 MHz/ Base: 1328 MHz in Gaming', N'4GB', N'GDDR5', N'7680 x 4320', N'Đang cập nhật', N'Đang cập nhật', 36, 0, N'4.975.000', N'Thông tin sản phẩm sẽ được cập nhật trong thời gian sớm nhất')
INSERT [dbo].[VGA] ([Id], [Name], [Image], [TradeMark], [Label], [ChipsetManufacturer], [Model], [VGA], [BoostClock], [VGAMemory], [RamType], [MaxResolution], [Directx], [Size], [WarrantyPeriod], [IsDeleted], [Price], [Description]) VALUES (5, N'Card màn hình Asus 4GB PH-GTX1050TI-4G', N'Card màn hình Asus 4GB PH-GTX1050TI-4G.jpg', N'Asus      ', N'Phoenix', N'NVIDIA', N'PH-GTX1050TI-4G', N'GeForce GTX 1050 Ti', N'1392 MHz / 1290 MHz', N'4GB', N'GDDR5', N'7680 x 4320', N'Đang cập nhật', N'Đang cập nhật', 36, 0, N'5.120.000', N'Thông tin sản phẩm sẽ được cập nhật trong thời gian sớm nhất')
INSERT [dbo].[VGA] ([Id], [Name], [Image], [TradeMark], [Label], [ChipsetManufacturer], [Model], [VGA], [BoostClock], [VGAMemory], [RamType], [MaxResolution], [Directx], [Size], [WarrantyPeriod], [IsDeleted], [Price], [Description]) VALUES (6, N'Card màn hình Asus 4GB Strix-GTX1050TI-DC2O4G-Gaming', N'Card màn hình Asus 4GB Strix-GTX1050TI-DC2O4G-Gaming.jpg', N'Asus      ', N'STRIX', N'NVIDIA', N'Strix-GTX1050TI-DC2O4G-Gaming', N'GeForce GTX 1050 Ti', N'Boots Clock 1455 MHz, Base Clock 1341 MHz', N'4GB', N'GDDR5', N'7680 x 4320', N'Đang cập nhật', N'Đang cập nhật', 36, 0, N'5.450.000', N'Thông tin sản phẩm sẽ được cập nhật trong thời gian sớm nhất')
INSERT [dbo].[VGA] ([Id], [Name], [Image], [TradeMark], [Label], [ChipsetManufacturer], [Model], [VGA], [BoostClock], [VGAMemory], [RamType], [MaxResolution], [Directx], [Size], [WarrantyPeriod], [IsDeleted], [Price], [Description]) VALUES (7, N'Card màn hình Gigabyte 4GB N105TG1 Gaming-4GD', N'Card màn hình Gigabyte 4GB N105TG1 Gaming-4GD.png', N'GIGABYTE  ', N'G1 Gaming', N'NVIDIA', N'N105TG1 Gaming-4GD', N'GeForce GTX 1050 Ti', N'Boost: 1506 MHz/ Base: 1392 MHz in OC Mode. Boost: 1480 MHz/ Base: 1366 MHz in Gaming', N'4GB', N'GDDR5', N'7680 x 4320', N'Đang cập nhật', N'Đang cập nhật', 36, 0, N'5.450.000', N'Thông tin sản phẩm sẽ được cập nhật trong thời gian sớm nhất')
INSERT [dbo].[VGA] ([Id], [Name], [Image], [TradeMark], [Label], [ChipsetManufacturer], [Model], [VGA], [BoostClock], [VGAMemory], [RamType], [MaxResolution], [Directx], [Size], [WarrantyPeriod], [IsDeleted], [Price], [Description]) VALUES (8, N'Card màn hình Msi 4GB GTX1050Ti Gaming X 4G', N'Card màn hình Msi 4GB GTX1050Ti Gaming X 4G.jpg', N'MSI       ', N'1050 TI gaming X', N'NVIDIA', N'1050 TI gaming X', N'GeForce GTX 1050 Ti', N'1392 MHz', N'4GB', N'GDDR5', N'7680 x 4320', N'Đang cập nhật', N'Đang cập nhật', 36, 0, N'5.690.000', N'Thông tin sản phẩm sẽ được cập nhật trong thời gian sớm nhất')
INSERT [dbo].[VGA] ([Id], [Name], [Image], [TradeMark], [Label], [ChipsetManufacturer], [Model], [VGA], [BoostClock], [VGAMemory], [RamType], [MaxResolution], [Directx], [Size], [WarrantyPeriod], [IsDeleted], [Price], [Description]) VALUES (9, N'Card màn hình Asus 8GB Strix GTX1070Ti-A8G-Gaming', N'Card màn hình Asus 8GB Strix GTX1070Ti-A8G-Gaming.jpg', N'Asus      ', N'Strix Gaming', N'NVIDIA', N'GTX1070Ti-A8G-Gaming', N'GeForce GTX 1070 Ti', N'1683 MHz', N'8GB', N'GDDR5', N'7680 x 4320', N'Đang cập nhật', N'Đang cập nhật', 36, 0, N'14.530.000', N'Thông tin sản phẩm sẽ được cập nhật trong thời gian sớm nhất')
INSERT [dbo].[VGA] ([Id], [Name], [Image], [TradeMark], [Label], [ChipsetManufacturer], [Model], [VGA], [BoostClock], [VGAMemory], [RamType], [MaxResolution], [Directx], [Size], [WarrantyPeriod], [IsDeleted], [Price], [Description]) VALUES (10, N'Card màn hình Asus 8GB Dual-GTX1070-O8G', N'Card màn hình Asus 8GB Dual-GTX1070-O8G.png', N'Asus      ', N'Dual', N'NVIDIA', N'Dual-GTX1070-O8G', N'GeForce GTX 1070', N'Boost: 1797 MHz/ Base: 1607 MHz in OC Mode, Boost: 1771 MHz/ Base: 1582 MHz in Gaming Mode', N'8GB', N'GDDR5', N'7680 x 4320', N'Đang cập nhật', N'Đang cập nhật', 36, 0, N'12.295.000', N'Thông tin sản phẩm sẽ được cập nhật trong thời gian sớm nhất')
INSERT [dbo].[VGA] ([Id], [Name], [Image], [TradeMark], [Label], [ChipsetManufacturer], [Model], [VGA], [BoostClock], [VGAMemory], [RamType], [MaxResolution], [Directx], [Size], [WarrantyPeriod], [IsDeleted], [Price], [Description]) VALUES (11, N'Card màn hình Msi 4GB GTX1050Ti AERO ITX 4G OCV1', N'Card màn hình Msi 4GB GTX1050Ti AERO ITX 4G OCV1.jpg', N'MSI       ', N'AERO', N'NVIDIA', N'GTX1050Ti AERO ITX 4G OCV1', N'GeForce GTX 1050 Ti', N'1455 MHz / 1341 MHz', N'4GB', N'	GDDR5', N'7680 x 4320', N'Đang cập nhật', N'Đang cập nhật', 36, 0, N'4.900.000đ', N'Thông tin sản phẩm sẽ được cập nhật trong thời gian sớm nhất')
INSERT [dbo].[VGA] ([Id], [Name], [Image], [TradeMark], [Label], [ChipsetManufacturer], [Model], [VGA], [BoostClock], [VGAMemory], [RamType], [MaxResolution], [Directx], [Size], [WarrantyPeriod], [IsDeleted], [Price], [Description]) VALUES (12, N'Card màn hình Galax 4GB GTX 1050Ti EXOC', N'Card màn hình Galax 4GB GTX 1050Ti EXOC.jpg', N'	Galax    ', N'Không', N'NVIDIA', N'Galax GTX 1050 Ti EXOC 4G DDR5', N'GeForce GTX 1050 Ti', N'1354 MHz', N'4GB', N'GDDR5', N'4096 x 2160', N'Đang cập nhật', N'Đang cập nhật', 36, 0, N'4.790.000đ', N'Thông tin sản phẩm sẽ được cập nhật trong thời gian sớm nhất')
INSERT [dbo].[VGA] ([Id], [Name], [Image], [TradeMark], [Label], [ChipsetManufacturer], [Model], [VGA], [BoostClock], [VGAMemory], [RamType], [MaxResolution], [Directx], [Size], [WarrantyPeriod], [IsDeleted], [Price], [Description]) VALUES (13, N'Card màn hình Gigabyte 11GB N108TAORUS 11GD', N'Card màn hình Gigabyte 11GB N108TAORUS 11GD.jpg', N'GIGABYTE  ', N'	Aorus', N'NVIDIA', N'N108TAORUS-11GD', N'GeForce GTX 1080Ti', N'Boost: 1708 MHz', N'11GB', N'GDDR5', N'7680 x 4320', N'Đang cập nhật', N'Đang cập nhật', 36, 0, N'21.565.000đ', N'Thông tin sản phẩm sẽ được cập nhật trong thời gian sớm nhất')
INSERT [dbo].[VGA] ([Id], [Name], [Image], [TradeMark], [Label], [ChipsetManufacturer], [Model], [VGA], [BoostClock], [VGAMemory], [RamType], [MaxResolution], [Directx], [Size], [WarrantyPeriod], [IsDeleted], [Price], [Description]) VALUES (14, N'Card màn hình Gigabyte 11GB N108TGaming OC 11G', N'Card màn hình Gigabyte 11GB N108TGaming OC 11G.jpg', N'GIGABYTE  ', N'Không', N'NVIDIA', N'	N108TGaming OC-11G', N'GeForce GTX 1080Ti', N'Boost: 1657 MHz', N'11GB', N'GDDR5X', N'7680 x 4320', N'Đang cập nhật', N'Đang cập nhật', 36, 0, N'21.500.000đ', N'Thông tin sản phẩm sẽ được cập nhật trong thời gian sớm nhất')
INSERT [dbo].[VGA] ([Id], [Name], [Image], [TradeMark], [Label], [ChipsetManufacturer], [Model], [VGA], [BoostClock], [VGAMemory], [RamType], [MaxResolution], [Directx], [Size], [WarrantyPeriod], [IsDeleted], [Price], [Description]) VALUES (15, N'Card màn hình Gigabyte 8GB N107TGAMING 8GD', N'Card màn hình Gigabyte 8GB N107TGAMING 8GD.png', N'GIGABYTE  ', N'Gaming', N'NVIDIA', N'N107TGAMING-8GD', N'GeForce GTX 1070 Ti', N'1721 MHz', N'8GB', N'GDDR5', N'7680 x 4320', N'Đang cập nhật', N'Đang cập nhật', 36, 0, N'12.195.000đ', N'Thông tin sản phẩm sẽ được cập nhật trong thời gian sớm nhất')
INSERT [dbo].[VGA] ([Id], [Name], [Image], [TradeMark], [Label], [ChipsetManufacturer], [Model], [VGA], [BoostClock], [VGAMemory], [RamType], [MaxResolution], [Directx], [Size], [WarrantyPeriod], [IsDeleted], [Price], [Description]) VALUES (16, N'Card màn hình MSI RTX 2080 Ti Gaming X TRIO 11GB GDDR6', N'Card màn hình MSI RTX 2080 Ti Gaming X TRIO 11GB GDDR6.jpg', N'MSI       ', N'RTX 2080 Ti Gaming X TRIO', N'NVIDIA', N'RTX 2080 Ti Gaming X TRIO', N'GeForce RTX 2080Ti', N'Đang cập nhật', N'11GB', N'GDDR6', N'7680 x 4320', N'Đang cập nhật', N'Đang cập nhật', 36, 0, N'38.200.000đ', N'Thông tin sản phẩm sẽ được cập nhật trong thời gian sớm nhất')
INSERT [dbo].[VGA] ([Id], [Name], [Image], [TradeMark], [Label], [ChipsetManufacturer], [Model], [VGA], [BoostClock], [VGAMemory], [RamType], [MaxResolution], [Directx], [Size], [WarrantyPeriod], [IsDeleted], [Price], [Description]) VALUES (17, N'Card màn hình Gigabyte RX560 OC 4G', N'Card màn hình Gigabyte RX560 OC 4G.jpg', N'GIGABYTE  ', N'RX 560 Gaming OC 4G', N'NVIDIA', N'RX 560 Gaming OC 4G', N'Radeon RX 560', N'Đang cập nhật', N'4GB', N'GDDR5', N'7680 x 4320', N'Đang cập nhật', N'Đang cập nhật', 36, 0, N'3.490.000đ', N'Thông tin sản phẩm sẽ được cập nhật trong thời gian sớm nhất')
INSERT [dbo].[VGA] ([Id], [Name], [Image], [TradeMark], [Label], [ChipsetManufacturer], [Model], [VGA], [BoostClock], [VGAMemory], [RamType], [MaxResolution], [Directx], [Size], [WarrantyPeriod], [IsDeleted], [Price], [Description]) VALUES (18, N'Card màn hình Gigabyte RTX 2080 Ti WINDFORCE OC 11G', N'Card màn hình Gigabyte RTX 2080 Ti WINDFORCE OC 11G.jpg', N'GIGABYTE  ', N'RTX 2080 Ti WINDFORCE OC 11G ', N'NVIDIA', N'RTX 2080 Ti WINDFORCE OC 11G', N'GeForce RTX 2080Ti', N'Đang cập nhật', N'11GB', N'GDDR6', N'	7680 x 4320', N'Đang cập nhật', N'Đang cập nhật', 36, 0, N'36.250.000đ', N'Thông tin sản phẩm sẽ được cập nhật trong thời gian sớm nhất')
INSERT [dbo].[VGA] ([Id], [Name], [Image], [TradeMark], [Label], [ChipsetManufacturer], [Model], [VGA], [BoostClock], [VGAMemory], [RamType], [MaxResolution], [Directx], [Size], [WarrantyPeriod], [IsDeleted], [Price], [Description]) VALUES (19, N'Card màn hình Galax 8GB GTX1070 Ti EXOC', N'Card màn hình Galax 8GB GTX1070 Ti EXOC.jpg', N'Galax     ', N'Galax 8GB GTX1070 Ti EX', N'NVIDIA', N'GTX1070 Ti EXOC', N'GeForce GTX 1070 Ti', N'1683 MHz', N'8GB', N'GDDR5', N'7680 x 4320', N'Đang cập nhật', N'Đang cập nhật', 36, 0, N'13.490.000đ', N'Thông tin sản phẩm sẽ được cập nhật trong thời gian sớm nhất')
INSERT [dbo].[VGA] ([Id], [Name], [Image], [TradeMark], [Label], [ChipsetManufacturer], [Model], [VGA], [BoostClock], [VGAMemory], [RamType], [MaxResolution], [Directx], [Size], [WarrantyPeriod], [IsDeleted], [Price], [Description]) VALUES (20, N'Card màn hình Galax 8GB GTX1070 Ti EX SNPR', N'Card màn hình Galax 8GB GTX1070 Ti EX SNPR.jpg', N'Galax     ', N'GTX1070 Ti EX-SNPR', N'NVIDIA', N'GTX1070 Ti EX-SNPR', N'GeForce GTX 1070 Ti', N'1683 MHz', N'8GB', N'GDDR5', N'7680 x 4320', N'Đang cập nhật', N'Đang cập nhật', 36, 0, N'14.490.000đ', N'Thông tin sản phẩm sẽ được cập nhật trong thời gian sớm nhất')
SET IDENTITY_INSERT [dbo].[VGA] OFF
