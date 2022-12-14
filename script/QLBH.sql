CREATE DATABASE QLBH;
 
USE `QLBH`;
 
/* SQLINES DEMO *** le Categories    Script Date: 20/05/2022 5:42:17 CH ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE `Users`(
	`Id` nvarchar(50) NOT NULL primary key,
	`Password` nvarchar(50) NOT NULL,
	`Fullname` nvarchar(50) NOT NULL,
	`Telephone` int NOT NULL,
	`Email` nvarchar(50) NOT NULL,
	`Photo` nvarchar(50) NOT NULL,
	`Activated` Tinyint NOT NULL,
	`Admin` Tinyint NOT NULL
);
/*Adminccount : Admin = 1 ; UserAccount : Admin=2 */
CREATE TABLE `Categories`(
	`Id` int AUTO_INCREMENT NOT NULL primary key,
	`Name` nvarchar(50) NOT NULL,
	`NameVN` Longtext NOT NULL
);
/* SQLINES DEMO *** le OrderDetails    Script Date: 20/05/2022 5:42:17 CH ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE `Products`(
	`Id` int AUTO_INCREMENT NOT NULL primary key,
	`Name` nvarchar(60),
	`UnitPrice` Double,
	`Image` nvarchar(50),
	`ProductDate` date,
	`Available` Tinyint,
	`CategoryId` int,
	`Quantity` int,
	`Description` Longtext,
	`Discount` Double,
	`ViewCount` int,
	`Special` Tinyint,
    FOREIGN KEY (CategoryId) REFERENCES Categories(Id)
);
/* SQLINES DEMO *** le Users    Script Date: 20/05/2022 5:42:17 CH ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY

CREATE TABLE `Orders`(
	`Id` int AUTO_INCREMENT NOT NULL primary key,
	`UserId` nvarchar(20) NOT NULL,
	`OrderDate` datetime(3) NOT NULL,
	`Telephone` int NOT NULL,
	`Address` nvarchar(60) NOT NULL,
	`Amount` Double NOT NULL,
	`Description` nvarchar(1000) NULL,
	`Status` int NULL,
    FOREIGN KEY (UserId) REFERENCES Users(Id)
);
/* SQLINES DEMO *** le Products    Script Date: 20/05/2022 5:42:17 CH ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE `OrderDetails`(
	`Id` int AUTO_INCREMENT NOT NULL primary key,
	`OrderId` int NOT NULL,
	`ProductId` int NOT NULL,
	`UnitPrice` Double NOT NULL,
	`Quantity` int NOT NULL,
	`Discount` Double NOT NULL,
     FOREIGN KEY (OrderId) REFERENCES Orders(Id),
     FOREIGN KEY (ProductId) REFERENCES Products(Id)
);
/* SQLINES DEMO *** le Orders    Script Date: 20/05/2022 5:42:17 CH ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY


INSERT Categories (Id, Name, NameVN) VALUES (1, N' XE M??Y V?? XE ?? T?? ', N'HONDA');
INSERT Categories (Id, Name, NameVN) VALUES (2, N' XE M??Y', N'YAMAHA');
INSERT Categories (Id, Name, NameVN) VALUES (3, N'XE ?? T?? V?? XE T???I', N'FORD');
INSERT Categories (Id, Name, NameVN) VALUES (4, N'XE ?? T??', N'MERCEDES');
INSERT Categories (Id, Name, NameVN) VALUES (5, N'XE M??Y V?? XE ?? T??', N'VINFAST');
INSERT Categories (Id, Name, NameVN) VALUES (6, N'XE M??Y V?? XE ?? T??', N'VOLKSWAGEN');
INSERT Categories (Id, Name, NameVN) VALUES (7, N'XE M??Y V?? XE ?? T??', N'BMW - Bayerische Motoren Werke AG');
INSERT Categories (Id, Name, NameVN) VALUES (8, N'XE ?? T??', N'AUDI');
INSERT Categories (Id, Name, NameVN) VALUES (9, N'XE M??Y', N'KAWASAKI');
INSERT Categories (Id, Name, NameVN) VALUES (10, N'XE ?? T??, XE T???I V?? XE BU??T', N'THACO');
INSERT Categories (Id, Name, NameVN) VALUES (12, N'PH??? KI???N', N'YAMAHA PH??? KI???N');
INSERT Categories (Id, Name, NameVN) VALUES (13, N'PH??? KI???N', N'PH??? KI???N');


#INSERT OrderDetails (Id, OrderId, ProductId, UnitPrice, Quantity, Discount) VALUES (1, 1, 2, 21700000, 1, 0);
#INSERT OrderDetails (Id, OrderId, ProductId, UnitPrice, Quantity, Discount) VALUES (2, 2, 5, 881695000, 1, 0.1);
#INSERT OrderDetails (Id, OrderId, ProductId, UnitPrice, Quantity, Discount) VALUES (3, 3, 7, 1790000000, 1, 0.05);
#INSERT OrderDetails (Id, OrderId, ProductId, UnitPrice, Quantity, Discount) VALUES (4, 4, 4, 17859273, 1, 0);


#INSERT Orders (Id, UserId, OrderDate, Telephone, Address, Amount, Description, Status) VALUES (1, N'admin', CAST(N'2022-05-14T00:00:00.000' AS DateTime), 964772094, N'T??n B??nh', 21700000, N'<p>Tr?????c khi giao g???i ??i???n tho???i</p>', 3);
#INSERT Orders (Id, UserId, OrderDate, Telephone, Address, Amount, Description, Status) VALUES (2, N'admin', CAST(N'2022-05-20T00:00:00.000' AS DateTime), 964772094, N'T??n B??nh', 793525500, N'Hello World', 1);
#INSERT Orders (Id, UserId, OrderDate, Telephone, Address, Amount, Description, Status) VALUES (3, N'Longdz', CAST(N'2022-05-20T00:00:00.000' AS DateTime), 332467724, N'Go Vap', 1700500000, N'mua xe Audi', 1);
#INSERT Orders (Id, UserId, OrderDate, Telephone, Address, Amount, Description, Status) VALUES (4, N'huynhhuong', CAST(N'2022-03-11T00:00:00.000' AS DateTime), 1234567890, N'Phu Nhuan', 17859273, N'', 1);


INSERT Products (Id, Name, UnitPrice, Image, ProductDate, Available, CategoryId, Quantity, Description, Discount, ViewCount, Special) VALUES (1, N'Air Blade 125/150', 41324727, N'1.png', CAST(N'2022-10-04' AS Date), 1, 1, 20, N'<h1><strong><span style="color:#c0392b">THI???T K???</span></strong></h1>

<h2><strong>Ki???u d&aacute;ng th??? thao cao c???p</strong></h2>

<p>Ti???p t???c l&agrave; hi???n th&acirc;n c???a s??? ?????t ph&aacute;, hi???n ?????i v???i di???n m???o ???????c trau chu???t t??? m??? ?????n t???ng chi ti???t, Air Blade mang h&igrave;nh ???nh ?????c tr??ng ???????c th??? hi???n qua thi???t k??? t???ng th??? g???i li&ecirc;n t?????ng ?????n &ldquo;ch??? X&rdquo;, ph???n chi???u s??? c???ng c&aacute;p trong b??? m???t hi???n ?????i xen l???n l&agrave; nh???ng ???????ng n&eacute;t ???????c x??? l&yacute; g???n g&agrave;ng, d???t kho&aacute;t. ?????c bi???t, Air Blade 150cc kh&aacute;c bi???t h??n v???i t???m ch???n gi&oacute; ph&iacute;a tr?????c, y&ecirc;n xe hai t&ocirc;ng m&agrave;u v&agrave; ti???t di???n l???p xe l???n.</p>

<p><img alt="" src="https://cdn.honda.com.vn/motorbike-strong-points/December2020/uYYo3IGKUEGOZNhvmkxw.jpg" style="height:490px; width:650px" /></p>

<h2><strong>Tem xe c&ugrave;ng ph???i m&agrave;u m???i m???i ???n t?????ng</strong></h2>

<h2>Tem xe ???????c thi???t k??? m???i v???i nh???ng ???????ng n&eacute;t m???nh m???, th??? thao, c&ugrave;ng ph???i m&agrave;u m???i ???n t?????ng nh??ng kh&ocirc;ng k&eacute;m ph???n sang tr???ng, mang ?????n di???n m???o m???i th??? thao v&agrave; cu???n h&uacute;t h??n.</h2>

<p><img alt="" src="https://cdn.honda.com.vn/motorbike-strong-points/December2020/Wn5KQHqquM15ypg91FWs.png" style="height:490px; width:650px" /></p>

<h2><strong>C???m ??&egrave;n LED tr?????c</strong></h2>

<p>Air Blade s??? d???ng ??&egrave;n ?????nh v??? LED c??? l???n v???i thi???t k??? ??&egrave;n tr?????c ???????c m&ocirc; ph???ng c???u tr&uacute;c ??&egrave;n t??? nh???ng m???u xe ph&acirc;n kh???i l???n, t???o c???m gi&aacute;c th??? thao n??ng ?????ng. Nh??? vi???c c???i thi???n ?????c ??i???m ph&acirc;n v&ugrave;ng &aacute;nh s&aacute;ng c???a ??&egrave;n chi???u s&aacute;ng ph&iacute;a tr?????c, t???m nh&igrave;n xe ???????c c???i thi???n h??n v&agrave;o ban ??&ecirc;m v&agrave; trong ??i???u ki???n th???i ti???t x???u.</p>

<p><img alt="" src="https://cdn.honda.com.vn/motorbike-strong-points/December2020/sMYAyrNZ2r4cike1lv5t.png" style="height:490px; width:650px" /></p>

<h2><strong>M???t ?????ng h??? LCD</strong></h2>

<p>M???t ?????ng h??? LCD k??? thu???t s??? ho&agrave;n to&agrave;n mang l???i m???t thi???t k??? hi???n ?????i, g???n g&agrave;ng h??n v&agrave; t??ng kh&ocirc;ng gian cho th&ocirc;ng tin hi???n th???. Ngo&agrave;i hai th&ocirc;ng tin v??? h&agrave;nh tr&igrave;nh, ?????ng h??? c&ograve;n hi???n th??? th&ocirc;ng tin ti&ecirc;u th??? nhi&ecirc;n li???u t???c th???i/trung b&igrave;nh, gi&uacute;p ng?????i d&ugrave;ng theo d&otilde;i ???????c s??? kh&aacute;c bi???t trong nh???ng t&igrave;nh hu???ng l&aacute;i xe kh&aacute;c nhau.</p>

<h1><span style="color:#c0392b"><strong>Th&ocirc;ng s??? k?? thu???t</strong></span></h1>

<p><strong>Kh???i l?????ng b???n th&acirc;n</strong></p>

<p>Air Blade 125cc: 111kg<br />
Air Blade 150cc: 113kg</p>

<p>D&agrave;i x R???ng x Cao</p>

<p>Air Blade 125cc: 1.870mm x 687mm x 1.091mm<br />
Air Blade 150cc: 1.870mm x 686mm x 1.112mm</p>

<p><strong>Kho???ng c&aacute;ch tr???c b&aacute;nh xe</strong></p>

<p>1.286mm</p>

<p><strong>????? cao y&ecirc;n</strong></p>

<p>Air Blade 125cc: 774mm<br />
Air Blade 150cc: 775mm</p>

<p><strong>Kho???ng s&aacute;ng g???m xe</strong></p>

<p>125mm</p>

<p><strong>Dung t&iacute;ch b&igrave;nh x??ng</strong></p>

<p>4,4 l&iacute;t</p>

<p><strong>Phu???c tr?????c</strong></p>

<p>???ng l???ng, gi???m ch???n th???y l???c</p>

<p><strong>Phu???c sau</strong></p>

<p>L&ograve; xo tr???, gi???m ch???n th???y l???c</p>

<p><strong>Lo???i ?????ng c??</strong></p>

<p>X??ng, 4 k???, 1 xy lanh, l&agrave;m m&aacute;t b???ng dung d???ch</p>

<p><strong>C&ocirc;ng su???t t???i ??a</strong></p>

<p>Air Blade 125cc: 8,4kW/8.500 v&ograve;ng/ph&uacute;t<br />
Air Blade 150cc: 9,6kW/8.500 v&ograve;ng/ph&uacute;t</p>

<p><strong>Dung t&iacute;ch nh???t m&aacute;y</strong></p>

<p>0,8 l&iacute;t khi thay d???u<br />
0,9 l&iacute;t khi r&atilde; m&aacute;y</p>

<p><strong>M???c ti&ecirc;u th??? nhi&ecirc;n li???u</strong></p>

<p>Air Blade 125cc: 1,99 l&iacute;t/100km<br />
Air Blade 150cc: 2,17 l&iacute;t/100km</p>

<p><strong>H???p s???</strong></p>

<p>T??? ?????ng, truy???n ?????ng b???ng ??ai</p>

<p><strong>H??? th???ng kh???i ?????ng</strong></p>

<p>??i???n</p>

<p><strong>Moment c???c ?????i</strong></p>

<p>Air Blade 125cc: 11,68 N.m/5.000 v&ograve;ng/ph&uacute;t<br />
Air Blade 150cc: 13,3 N.m/5.000 v&ograve;ng/ph&uacute;t</p>

<p><strong>Dung t&iacute;ch xy-lanh</strong></p>

<p>Air Blade 125cc: 124,9cm3<br />
Air Blade 150cc: 149,3cm3</p>

<p><strong>???????ng k&iacute;nh x H&agrave;nh tr&igrave;nh p&iacute;t t&ocirc;ng</strong></p>

<p>Air Blade 125cc: 52,4mm x 57,9mm<br />
Air Blade 150cc: 57,3mm x 57,9mm</p>

<p><strong>T??? s??? n&eacute;n</strong></p>

<p>Air Blade 125cc: 11,0:1<br />
Air Blade 150cc: 10,6:1</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>
', 0, 1005, 0);
INSERT Products (Id, Name, UnitPrice, Image, ProductDate, Available, CategoryId, Quantity, Description, Discount, ViewCount, Special) VALUES (2, N'SIRIUS PHI??N B???N RC V??NH ????C', 21700000, N'cover.png', CAST(N'2022-11-11' AS Date), 1, 2, 30, N'<h2><strong>?????ng c??</strong></h2>

<table>
	<tbody>
		<tr>
			<td>Lo???i</td>
			<td>4 th&igrave;, 2 van SOHC, l&agrave;m m&aacute;t b???ng kh&ocirc;ng kh&iacute;</td>
		</tr>
		<tr>
			<td>B??? tr&iacute; xi lanh</td>
			<td>Xi lanh ????n</td>
		</tr>
		<tr>
			<td>Dung t&iacute;ch xy lanh (CC)</td>
			<td>110.3</td>
		</tr>
		<tr>
			<td>???????ng k&iacute;nh v&agrave; h&agrave;nh tr&igrave;nh piston</td>
			<td>51,0mm x 54,0mm</td>
		</tr>
		<tr>
			<td>T??? s??? n&eacute;n</td>
			<td>9,3:1</td>
		</tr>
		<tr>
			<td>C&ocirc;ng su???t t???i ??a</td>
			<td>6,60KW (9.0PS/8.000 v&ograve;ng/ph&uacute;t)</td>
		</tr>
		<tr>
			<td>M&ocirc; men c???c ?????i</td>
			<td>9,0Nm (0.92kgf-m/5.000 v&ograve;ng/ph&uacute;t)</td>
		</tr>
		<tr>
			<td>H??? th???ng kh???i ?????ng</td>
			<td>??i???n / C???n kh???i ?????ng</td>
		</tr>
		<tr>
			<td>H??? th???ng b&ocirc;i tr??n</td>
			<td>C&aacute;c te ?????t</td>
		</tr>
		<tr>
			<td>Dung t&iacute;ch d???u m&aacute;y</td>
			<td>1 L</td>
		</tr>
		<tr>
			<td>Dung t&iacute;ch b&igrave;nh x??ng</td>
			<td>4,2 l&iacute;t</td>
		</tr>
		<tr>
			<td>M???c ti&ecirc;u th??? nhi&ecirc;n li???u (l/100km)</td>
			<td>1,99</td>
		</tr>
		<tr>
			<td>B??? ch??? h&ograve;a kh&iacute;</td>
			<td>VM21x1</td>
		</tr>
		<tr>
			<td>H??? th???ng ??&aacute;nh l???a</td>
			<td>DC-CDI</td>
		</tr>
		<tr>
			<td>T??? s??? truy???n s?? c???p v&agrave; th??? c???p</td>
			<td>3,722 (67/18) / 2,333 (35/15)</td>
		</tr>
		<tr>
			<td>H??? th???ng ly h???p</td>
			<td>??a ????a, Ly t&acirc;m lo???i ?????t</td>
		</tr>
		<tr>
			<td>T??? s??? truy???n ?????ng</td>
			<td>1: 3,167 2: 1,941 3: 1,381 4: 1,095</td>
		</tr>
		<tr>
			<td>Ki???u h??? th???ng truy???n l???c</td>
			<td>4 s??? tr&ograve;n</td>
		</tr>
	</tbody>
</table>

<h2><strong>Khung xe</strong></h2>

<table>
	<tbody>
		<tr>
			<td>H??? th???ng gi???m x&oacute;c tr?????c</td>
			<td>Ki???u ???ng l???ng</td>
		</tr>
		<tr>
			<td>H&agrave;nh tr&igrave;nh phu???c tr?????c</td>
			<td>95 mm</td>
		</tr>
		<tr>
			<td>????? l???ch ph????ng tr???c l&aacute;i</td>
			<td>26,2&deg; / 73 mm</td>
		</tr>
		<tr>
			<td>H??? th???ng gi???m x&oacute;c sau</td>
			<td>Gi???m ch???n th???y l???c l&ograve; xo tr???</td>
		</tr>
		<tr>
			<td>H&agrave;nh tr&igrave;nh gi???m x&oacute;c sau</td>
			<td>77 mm</td>
		</tr>
		<tr>
			<td>Phanh tr?????c</td>
			<td>????a thu??? l???c</td>
		</tr>
		<tr>
			<td>Phanh sau</td>
			<td>Phanh c?? (??&ugrave;m)</td>
		</tr>
		<tr>
			<td>L???p tr?????c</td>
			<td>70/90 - 17 38P (L???p c&oacute; s??m)</td>
		</tr>
		<tr>
			<td>L???p sau</td>
			<td>80/90 - 17 44P (L???p c&oacute; s??m)</td>
		</tr>
		<tr>
			<td>??&egrave;n tr?????c</td>
			<td>Halogen 12V, 35W/35Wx1</td>
		</tr>
		<tr>
			<td>??&egrave;n sau</td>
			<td>12V, 5W/18W x 1</td>
		</tr>
	</tbody>
</table>

<h2><strong>K&iacute;ch th?????c</strong></h2>

<table>
	<tbody>
		<tr>
			<td>K&iacute;ch th?????c (d&agrave;i x r???ng x cao)</td>
			<td>1.890mm x 665mm x 1.035mm</td>
		</tr>
		<tr>
			<td>????? cao y&ecirc;n xe</td>
			<td>770mm</td>
		</tr>
		<tr>
			<td>Kho???ng c&aacute;ch gi???a 2 tr???c b&aacute;nh xe</td>
			<td>1.200mm</td>
		</tr>
		<tr>
			<td>????? cao g???m xe</td>
			<td>130mm</td>
		</tr>
		<tr>
			<td>Tr???ng l?????ng ?????t</td>
			<td>96kg</td>
		</tr>
	</tbody>
</table>

<h2><strong>B???o h&agrave;nh</strong></h2>

<table>
	<tbody>
		<tr>
			<td>Th???i gian b???o h&agrave;nh</td>
			<td>3 n??m ho???c 30.000km (t&ugrave;y ??i???u ki???n n&agrave;o ?????n tr?????c)</td>
		</tr>
	</tbody>
</table>
', 0, 5, 1);
INSERT Products (Id, Name, UnitPrice, Image, ProductDate, Available, CategoryId, Quantity, Description, Discount, ViewCount, Special) VALUES (3, N'Honda City 2022', 529000000, N'hondacity.png', CAST(N'2022-01-05' AS Date), 1, 1, 15, N'<p>Th??? h??? th??? 5 c???a&nbsp;<a href="https://oto.com.vn/bang-gia-xe-o-to-honda-city-moi-nhat" title="Honda City">Honda City</a>&nbsp;ch&iacute;nh th???c tr&igrave;nh l&agrave;ng g&agrave;y 09/12/2020 v???i th&ocirc;ng ??i???p&nbsp;<em>&quot;M???nh m??? tr???i l???i th&agrave;nh c&ocirc;ng&rdquo;</em>. C&ugrave;ng v???i ??&oacute;, Honda City All New mang nh???ng gi&aacute; tr??? n???i b???t&nbsp;<em>&ldquo;Th??? thao c&aacute; t&iacute;nh &ndash; Ti???n nghi hi???n ?????i &ndash; V???n h&agrave;nh m???nh m??? - An t&acirc;m c???m l&aacute;i&rdquo;</em>.&nbsp; Xe&nbsp;ti???p t???c ???????c l???p r&aacute;p v&agrave; ph&acirc;n ph???i ch&iacute;nh h&atilde;ng t???i Vi???t Nam v???i 3 phi&ecirc;n b???n g???m RS, L, G.</p>

<h2><strong>Th&ocirc;ng tin t???ng quan</strong>&nbsp;<strong>Honda City&nbsp;2022</strong></h2>

<p>??? th??? h??? m???i, Honda City ??&atilde; kh???c ph???c ???????c c&aacute;c v???n ????? v??? t&iacute;nh th???m m???, tr??? n&ecirc;n th??? thao v&agrave; tr??? trung h??n h???n. Thi???t k??? xe ph&aacute;t tri???n theo&nbsp;tri???t l&iacute; &quot;??&ocirc;i c&aacute;nh&quot; v???i k&iacute;ch th?????c&nbsp; d&agrave;i x r???ng x cao l???n l?????t&nbsp;l&agrave;&nbsp;4.553 x 1.748 x 1.467 (mm), chi???u d&agrave;i c?? s??? l&ecirc;n t???i 2.600mm.</p>

<h3><strong>Ngo???i th???t xe&nbsp;Honda City</strong></h3>

<p><img alt="Ngo???i th???t Honda City 2021 - ???nh 1." src="https://img1.oto.com.vn/2020/12/11/pTBR3JY9/gia-xe-honda-city-2021-oto-com-vn-2-7611.jpg" title="Ngo???i th???t Honda City 2021 - ???nh 1" /></p>

<p>?????u xe n???i b???t v???i l?????i t???n nhi???t c&aacute;nh chim s??n ??en b&oacute;ng n???i li???n c&ugrave;ng h??? th???ng chi???u s&aacute;ng full LED hi???n ?????i. H???c h&uacute;t gi&oacute; g???n th&ecirc;m ??&egrave;n s????ng m&ugrave; c&ugrave;ng nh???ng ???????ng g&acirc;n trang tr&iacute; ?????p&nbsp; m???t. C???n tr?????c c???ng c&aacute;p, th??? thao h??n.</p>

<p>Ch???y d???c th&acirc;n xe l&agrave; nh???ng ???????ng g&acirc;n d???p n???i s???c n&eacute;t, g????ng chi???u h???u h??? th???p xu???ng c???a, c&oacute; ch???c n??ng ch???nh g???p ??i???n t&iacute;ch h???p ??&egrave;n b&aacute;o r??? LED. Tay n???m c???a tr?????c m??? b???ng v&acirc;n tay, la-z??ng 16 inch t???o h&igrave;nh 5 c&aacute;nh thanh tho&aacute;t.</p>

<p>Ti???n v??? ??u&ocirc;i xe, c???m ??&egrave;n chi???u s&aacute;ng LED ???????c tinh ch???nh s???c n&eacute;t, t???o n&ecirc;n t???ng th??? th???m m??? cho xe.</p>

<table align="center" border="0" cellpadding="1" cellspacing="1">
	<tbody>
		<tr>
			<td><img alt="Ngo???i th???t Honda City 2021 - ???nh 2." src="https://img1.oto.com.vn/2020/12/11/pTBR3JY9/gia-xe-honda-city-2021-oto-com-vn-14-26ef.jpg" title="Ngo???i th???t Honda City 2021 - ???nh 2" /></td>
			<td><img alt="Ngo???i th???t Honda City 2021 - ???nh 3." src="https://img1.oto.com.vn/2020/12/11/pTBR3JY9/gia-xe-honda-city-2021-oto-com-vn-15-7f57.jpg" title="Ngo???i th???t Honda City 2021 - ???nh 3" /></td>
			<td><img alt="Ngo???i th???t Honda City 2021 - ???nh 4." src="https://img1.oto.com.vn/2020/12/11/pTBR3JY9/gia-xe-honda-city-2021-oto-com-vn-19-e69f.jpg" title="Ngo???i th???t Honda City 2021 - ???nh 4" /></td>
		</tr>
		<tr>
			<td><img alt="Ngo???i th???t Honda City 2021 - ???nh 5." src="https://img1.oto.com.vn/2020/12/11/pTBR3JY9/gia-xe-honda-city-2021-oto-com-vn-21-5c1f.jpg" title="Ngo???i th???t Honda City 2021 - ???nh 5" /></td>
			<td><img alt="Ngo???i th???t Honda City 2021 - ???nh 6." src="https://img1.oto.com.vn/2020/12/11/pTBR3JY9/gia-xe-honda-city-2021-oto-com-vn-22-ac16.jpg" title="Ngo???i th???t Honda City 2021 - ???nh 6" /></td>
			<td><img alt="Ngo???i th???t Honda City 2021 - ???nh 7." src="https://img1.oto.com.vn/2020/12/11/pTBR3JY9/gia-xe-honda-city-2021-oto-com-vn-17-1ead.jpg" title="Ngo???i th???t Honda City 2021 - ???nh 7" /></td>
		</tr>
	</tbody>
</table>

<h3><strong>N???i th???t xe Honda City</strong></h3>

<p><img alt="N???i th???t Honda City 2021 - ???nh 1." src="https://img1.oto.com.vn/2020/12/11/pTBR3JY9/gia-xe-honda-city-2021-oto-com-vn-4-1312.jpg" title="N???i th???t Honda City 2021 - ???nh 1" /></p>

<p>V??? n???i th???t, Honda City th??? h??? m???i r???ng r&atilde;i h??n v&agrave; b??? sung th&ecirc;m nhi???u c&ocirc;ng ngh??? c??ng nh?? trang b??? h??n. V???n l&agrave;&nbsp;gh??? xe b???c&nbsp;n??? quen thu???c nh??ng xe ??&atilde; c&oacute; th&ecirc;m g&aacute;c tay trung t&acirc;m ??? h&agrave;ng gh??? tr?????c, h???c ch???a ????? 4 c???a xe, v&ocirc;-l??ng v???i c&aacute;c t&iacute;nh n??ng ??&agrave;m tho???i r???nh tay, l???y s??? th??? thao. Ri&ecirc;ng b???n RS khoang n???i th???t ???????c pha tr???n gi???a v???t li???u n??? - da l???n v&agrave; da, mang ?????n c&aacute;i nh&igrave;n sang tr???ng, ?????ng c???p h??n cho m???t m???u xe h???ng B.</p>

<p>Gi???a t&aacute;p-l&ocirc; l&agrave; m&agrave;n h&igrave;nh trung t&acirc;m d???ng c???m ???ng 8 inch k???t n???i ??a ph????ng ti???n. ??i c&ugrave;ng v???i ??&oacute; l&agrave; lo???t trang b??? ??&aacute;ng ch&uacute; &yacute; nh??: ??i???u h&ograve;a 2 chi???u c&oacute; h???c gi&oacute; cho h&agrave;ng gh??? sau, ?????u CD, 4 loa, k???t n???i&nbsp;USB, AUX,&nbsp;AM/FM...</p>

<table align="center" border="0" cellpadding="1" cellspacing="1">
	<tbody>
		<tr>
			<td><img alt="N???i th???t Honda City 2021 - ???nh 2." src="https://img1.oto.com.vn/2020/12/11/pTBR3JY9/gia-xe-honda-city-2021-oto-com-vn-6-1a71.jpg" title="N???i th???t Honda City 2021 - ???nh 2" /></td>
			<td><img alt="N???i th???t Honda City 2021 - ???nh 3." src="https://img1.oto.com.vn/2020/12/11/pTBR3JY9/gia-xe-honda-city-2021-oto-com-vn-10-ed97.jpg" title="N???i th???t Honda City 2021 - ???nh 3" /></td>
			<td><img alt="N???i th???t Honda City 2021 - ???nh 4." src="https://img1.oto.com.vn/2020/12/11/pTBR3JY9/gia-xe-honda-city-2021-oto-com-vn-11-5797.jpg" title="N???i th???t Honda City 2021 - ???nh 4" /></td>
		</tr>
		<tr>
			<td><img alt="N???i th???t Honda City 2021 - ???nh 5." src="https://img1.oto.com.vn/2020/12/11/pTBR3JY9/gia-xe-honda-city-2021-oto-com-vn-7-f659.jpg" title="N???i th???t Honda City 2021 - ???nh 5" /></td>
			<td><img alt="N???i th???t Honda City 2021 - ???nh 6." src="https://img1.oto.com.vn/2020/12/11/pTBR3JY9/gia-xe-honda-city-2021-oto-com-vn-5-ae7b.jpg" title="N???i th???t Honda City 2021 - ???nh 6" /></td>
			<td><img alt="N???i th???t Honda City 2021 - ???nh 7." src="https://img1.oto.com.vn/2020/12/11/pTBR3JY9/gia-xe-honda-city-2021-oto-com-vn-12-a9a5.jpg" title="N???i th???t Honda City 2021 - ???nh 7" /></td>
		</tr>
	</tbody>
</table>

<h3><strong>?????ng c?? xe&nbsp;Honda City</strong></h3>

<p><img alt="?????ng c?? xe Honda City 2021 - ???nh 1." src="https://img1.oto.com.vn/2020/12/11/pTBR3JY9/gia-xe-honda-city-2021-oto-com-vn-1-2721.jpg" title="?????ng c?? xe Honda City 2021 - ???nh 1" /></p>

<p>?????ng c?? Honda City l&agrave; c??? m&aacute;y&nbsp;1.5L&nbsp;4 xi-lanh th???ng h&agrave;ng, s???n sinh&nbsp;c&ocirc;ng su???t c???c ?????i 119 m&atilde; l???c t???i v&ograve;ng tua m&aacute;y 6.600 v&ograve;ng/ph&uacute;t v&agrave; m&ocirc;-men xo???n l???n nh???t&nbsp;145 Nm t???i 4.300 v&ograve;ng/ph&uacute;t. S???c m???nh c???a xe truy???n qua&nbsp;h???p s??? v&ocirc; c???p CVT.</p>

<p>Xe c&oacute; s???n t&iacute;nh n??ng Eco gi&uacute;p ti???t ki???m nhi&ecirc;n li???u v&agrave; c&aacute;c t&iacute;nh n??ng an to&agrave;n ??&aacute;ng ch&uacute; &yacute; nh??:&nbsp;ch???ng b&oacute; c???ng phanh, ph&acirc;n b??? l???c phanh ??i???n t???, ch???ng tr???m,&nbsp;t&uacute;i kh&iacute; v&agrave; t???a ?????u gi???m ch???n cho&nbsp;gh??? tr?????c.</p>

<h3><strong>Trang b??? an to&agrave;n&nbsp;Honda City</strong></h3>

<ul>
	<li>H??? th???ng 6 t&uacute;i kh&iacute;</li>
	<li>H??? th???ng ch???ng b&oacute; c???ng phanh</li>
	<li>H??? th???ng ph&acirc;n ph???i l???c phanh ??i???n t???</li>
	<li>H??? th???ng c&acirc;n b???ng ??i???n t???</li>
	<li>H??? th???ng kh???i h&agrave;nh ngang d???c</li>
	<li>H??? th???ng phanh kh???n c???p</li>
	<li>Camera l&ugrave;i</li>
</ul>

<h2><strong>??u - nh?????c ??i???m xe Honda City 2022</strong></h2>

<h3><strong>??u ??i???m:</strong></h3>

<ul>
	<li>Thi???t k??? tr??? trung, hi???n ?????i</li>
	<li>??&egrave;n chi???u s&aacute;ng LED</li>
	<li>Trang b??? cao c???p: m&agrave;n h&igrave;nh c???m ???ng 6,8 inch, ????? n??? th&ocirc;ng minh, &acirc;m thanh 8 loa, ki???m so&aacute;t h&agrave;nh tr&igrave;nh, h??? tr??? kh???i h&agrave;nh ngang d???c, c&acirc;n b???ng ??i???n t???, camera l&ugrave;i, 6 t&uacute;i kh&iacute;,...</li>
	<li>?????ng c?? m???nh m???, ti???t ki???m nhi&ecirc;n li???u; h???p s??? v&ocirc; c???p (CVT) &ecirc;m &aacute;i</li>
</ul>

<h3><strong>Nh?????c ??i???m</strong>:</h3>

<ul>
	<li>B&aacute;n k&iacute;nh v&ograve;ng quay l???n khi???n kh&oacute; xoay s??? trong ng&otilde; h???p</li>
	<li>H??? th???ng treo c???ng</li>
	<li>H??? th???ng ??i???u h&ograve;a l&agrave;m m&aacute;t ch???m v&agrave; kh&ocirc;ng s&acirc;u</li>
</ul>

<h2><strong><a href="https://oto.com.vn/thong-so-ky-thuat/xe-honda-city-2021-moi-nhat-tai-viet-nam-articleid-na314fo" title="TH??NG S??? K??? THU???T HONDA CITY">Th&ocirc;ng s??? k??? thu???t Honda City</a>&nbsp;2022 t???i Vi???t Nam</strong></h2>

<table align="center" border="1" cellpadding="1" cellspacing="1">
	<tbody>
		<tr>
			<td colspan="2">Th&ocirc;ng s???</td>
			<td>City G</td>
			<td>City L</td>
			<td>City RS</td>
		</tr>
		<tr>
			<td colspan="5">K&iacute;ch th?????c</td>
		</tr>
		<tr>
			<td colspan="2">S??? ch??? ng???i</td>
			<td colspan="3" rowspan="1">05</td>
		</tr>
		<tr>
			<td colspan="2">D&agrave;i x R???ng x Cao (mm)</td>
			<td colspan="3" rowspan="1">4.553 x 1.748 x 1.467</td>
		</tr>
		<tr>
			<td colspan="2">Chi???u d&agrave;i c?? s??? (mm)</td>
			<td colspan="3" rowspan="1">2.600</td>
		</tr>
		<tr>
			<td colspan="2">Chi???u r???ng c?? s??? tr?????c/sau (mm)</td>
			<td colspan="3" rowspan="1">1.495/1.483</td>
		</tr>
		<tr>
			<td colspan="2">Kho???ng s&aacute;ng g???m xe (mm)</td>
			<td colspan="3" rowspan="1">134</td>
		</tr>
		<tr>
			<td colspan="2">B&aacute;n k&iacute;nh v&ograve;ng quay t???i thi???u (m)</td>
			<td colspan="3" rowspan="1">5</td>
		</tr>
		<tr>
			<td colspan="2">Tr???ng l?????ng kh&ocirc;ng t???i (kg)</td>
			<td>1.117</td>
			<td>1.124</td>
			<td>1.134</td>
		</tr>
		<tr>
			<td colspan="2">Tr???ng l?????ng to&agrave;n t???i (kg)</td>
			<td colspan="3" rowspan="1">1.580</td>
		</tr>
		<tr>
			<td colspan="2">C??? l???p</td>
			<td>185/60R15</td>
			<td colspan="2" rowspan="1">185/55R16</td>
		</tr>
		<tr>
			<td colspan="2">La-z??ng</td>
			<td>H???p kim 15 inch</td>
			<td colspan="2" rowspan="1">H???p kim 16 inch</td>
		</tr>
		<tr>
			<td colspan="2">H??? th???ng treo tr?????c/sau</td>
			<td colspan="3" rowspan="1">Ki???u MacPherson/Gi???ng xo???n</td>
		</tr>
		<tr>
			<td colspan="2">H??? th???ng phanh tr?????c/sau</td>
			<td colspan="3" rowspan="1">Phanh ????a/Phanh tang tr???ng</td>
		</tr>
		<tr>
			<td colspan="5">Ngo???i th???t</td>
		</tr>
		<tr>
			<td colspan="1" rowspan="3">C???m ??&egrave;n tr?????c</td>
			<td>??&egrave;n chi???u xa</td>
			<td colspan="2" rowspan="1">Halogen</td>
			<td>LED</td>
		</tr>
		<tr>
			<td>??&egrave;n chi???u g???n</td>
			<td colspan="2" rowspan="1">Halogen Projector</td>
			<td>LED</td>
		</tr>
		<tr>
			<td>??&egrave;n ch???y ban ng&agrave;y</td>
			<td>LED</td>
			<td>LED</td>
			<td>LED</td>
		</tr>
		<tr>
			<td colspan="2">??&egrave;n s????ng m&ugrave;</td>
			<td colspan="2" rowspan="1">Kh&ocirc;ng</td>
			<td>LED</td>
		</tr>
		<tr>
			<td colspan="2">??&egrave;n h???u</td>
			<td colspan="3" rowspan="1">LED</td>
		</tr>
		<tr>
			<td colspan="2">??&egrave;n phanh tr&ecirc;n cao</td>
			<td colspan="3" rowspan="1">LED</td>
		</tr>
		<tr>
			<td colspan="2">G????ng chi???u h???u</td>
			<td>Ch???nh ??i???n</td>
			<td colspan="2" rowspan="1">Ch???nh ??i???n, g???p ??i???n, t&iacute;ch h???p ??&egrave;n b&aacute;o r???</td>
		</tr>
		<tr>
			<td colspan="2">Tay n???m c???a</td>
			<td>C&ugrave;ng m&agrave;u th&acirc;n xe</td>
			<td>M??? Chrome</td>
			<td>C&ugrave;ng m&agrave;u th&acirc;n xe</td>
		</tr>
		<tr>
			<td colspan="5">N???i th???t</td>
		</tr>
		<tr>
			<td colspan="2">C???a k&iacute;nh ??i???n t??? ?????ng l&ecirc;n xu???ng m???t ch???m ch???ng k???t</td>
			<td colspan="3" rowspan="1">Gh??? l&aacute;i</td>
		</tr>
		<tr>
			<td colspan="2">??ng-ten</td>
			<td colspan="3" rowspan="1">D???ng v&acirc;y c&aacute; m???p</td>
		</tr>
		<tr>
			<td colspan="2">Ch???t li???u gh??? ng???i</td>
			<td>Da</td>
			<td>Da l???n</td>
			<td>Da, Da l???n, n???</td>
		</tr>
		<tr>
			<td colspan="2">Gh??? l&aacute;i</td>
			<td colspan="3" rowspan="1">Ch???nh ??i???n 6 h?????ng</td>
		</tr>
		<tr>
			<td colspan="2">V&ocirc;-l??ng</td>
			<td>Urethane, ??i???u ch???nh 4 h?????ng v&agrave; t&iacute;ch h???p n&uacute;t ??i???u ch???nh &acirc;m thanh</td>
			<td>B???c da,&nbsp;??i???u ch???nh 4 h?????ng, t&iacute;ch h???p n&uacute;t ??i???u ch???nh &acirc;m thanh</td>
			<td>B???c da,&nbsp;??i???u ch???nh 4 h?????ng v&agrave; t&iacute;ch h???p n&uacute;t ??i???u ch???nh &acirc;m thanh&nbsp;v&agrave; c&oacute; l???y chuy???n s???</td>
		</tr>
		<tr>
			<td colspan="2">M&agrave;n h&igrave;nh gi???i tr&iacute;</td>
			<td colspan="3" rowspan="1">C???m ???ng 8 inch</td>
		</tr>
		<tr>
			<td colspan="2">B???ng ?????ng h??? sau v&ocirc;-l??ng</td>
			<td colspan="3" rowspan="1">Analog</td>
		</tr>
		<tr>
			<td colspan="2">Ch??? ????? kh???i ?????ng t??? xa</td>
			<td colspan="2" rowspan="1">Kh&ocirc;ng</td>
			<td>C&oacute;</td>
		</tr>
		<tr>
			<td colspan="2">Ch&igrave;a kh&oacute;a th&ocirc;ng minh</td>
			<td>Kh&ocirc;ng</td>
			<td colspan="2" rowspan="1">C&oacute;</td>
		</tr>
		<tr>
			<td colspan="2">Kh???i ?????ng b???ng n&uacute;t b???m</td>
			<td colspan="3">C&oacute;</td>
		</tr>
		<tr>
			<td colspan="2">Ch??? ????? ??&agrave;m tho???i r???nh tay</td>
			<td colspan="3" rowspan="1">C&oacute;</td>
		</tr>
		<tr>
			<td colspan="2">K???t n???i ??i???n tho???i th&ocirc;ng minh/Bluetooth/USB</td>
			<td colspan="3" rowspan="1">C&oacute;</td>
		</tr>
		<tr>
			<td colspan="2">Quay s??? nhanh b???ng gi???ng n&oacute;i</td>
			<td colspan="3" rowspan="1">C&oacute;</td>
		</tr>
		<tr>
			<td colspan="2">??&agrave;i AM/FM</td>
			<td colspan="3" rowspan="1">C&oacute;</td>
		</tr>
		<tr>
			<td colspan="2">H??? th???ng loa</td>
			<td colspan="2" rowspan="1">04 loa</td>
			<td>08 loa</td>
		</tr>
		<tr>
			<td colspan="2">Ngu???n s???c</td>
			<td colspan="2" rowspan="1">03</td>
			<td>05</td>
		</tr>
		<tr>
			<td colspan="2">H??? th???ng ??i???u h&ograve;a</td>
			<td>Ch???nh c??</td>
			<td colspan="2" rowspan="1">T??? ?????ng m???t v&ugrave;ng</td>
		</tr>
		<tr>
			<td colspan="2">C???a gi&oacute; ??i???u h&ograve;a cho h&agrave;ng gh??? sau</td>
			<td colspan="2" rowspan="1">Kh&ocirc;ng</td>
			<td>C&oacute;</td>
		</tr>
		<tr>
			<td colspan="2">T???a tay h&agrave;ng gh??? sau t&iacute;ch h???p h???c ?????ng c???c</td>
			<td colspan="2">Kh&ocirc;ng</td>
			<td>C&oacute;</td>
		</tr>
		<tr>
			<td colspan="2">B??? trung t&acirc;m t&iacute;ch h???p khay ?????ng c???c v&agrave; ng??n ch???a ?????</td>
			<td>Kh&ocirc;ng</td>
			<td colspan="2" rowspan="1">C&oacute;</td>
		</tr>
		<tr>
			<td colspan="2">Ng??n ?????ng t&agrave;i li???u cho h&agrave;ng gh??? sau</td>
			<td colspan="3">C&oacute;</td>
		</tr>
		<tr>
			<td colspan="2">??&egrave;n ?????c b???n ????? cho h&agrave;ng gh??? tr?????c v&agrave; h&agrave;ng gh??? sau</td>
			<td colspan="3" rowspan="1">C&oacute;</td>
		</tr>
		<tr>
			<td colspan="2">??&egrave;n c???p</td>
			<td colspan="3" rowspan="1">C&oacute;</td>
		</tr>
		<tr>
			<td colspan="2">G????ng trang ??i???m cho h&agrave;ng gh??? tr?????c</td>
			<td colspan="2" rowspan="1">Gh??? l&aacute;i</td>
			<td>Gh??? l&aacute;i + Gh??? ph???</td>
		</tr>
		<tr>
			<td colspan="5">?????ng c??</td>
		</tr>
		<tr>
			<td colspan="2">Ki???u ?????ng c??</td>
			<td colspan="3" rowspan="1">1.5L DOHC i-VTEC 4 xy-lanh th???ng h&agrave;ng, 16 van</td>
		</tr>
		<tr>
			<td colspan="2">Dung t&iacute;ch xy-lanh (cc)</td>
			<td colspan="3" rowspan="1">1.498</td>
		</tr>
		<tr>
			<td colspan="2">C&ocirc;ng su???t (Hp/rpm)</td>
			<td colspan="3" rowspan="1">119/6.600</td>
		</tr>
		<tr>
			<td colspan="2">M&ocirc;-men xo???n (Nm/rpm)</td>
			<td colspan="3" rowspan="1">145/4.300</td>
		</tr>
		<tr>
			<td colspan="2">H???p s???</td>
			<td colspan="3" rowspan="1">V&ocirc; c???p CVT</td>
		</tr>
		<tr>
			<td colspan="2">Dung t&iacute;ch th&ugrave;ng nhi&ecirc;n li???u (l&iacute;t)</td>
			<td colspan="3" rowspan="1">40</td>
		</tr>
		<tr>
			<td colspan="2">H??? th???ng nhi&ecirc;n li???u</td>
			<td colspan="3" rowspan="1">Phun x??ng ??i???n t???/PGM-FI</td>
		</tr>
		<tr>
			<td colspan="2">Ch??? ????? l&aacute;i ti???t ki???m nhi&ecirc;n li???u (ECO Mode)</td>
			<td colspan="3">C&oacute;</td>
		</tr>
		<tr>
			<td colspan="2">Ch???c n??ng h?????ng d???n l&aacute;i ti???t ki???m nhi&ecirc;n li???u (ECO Coaching)</td>
			<td colspan="3">C&oacute;</td>
		</tr>
		<tr>
			<td colspan="2">Ch??? ????? l&aacute;i th??? thao</td>
			<td colspan="3">C&oacute;</td>
		</tr>
		<tr>
			<td colspan="2">H??? th???ng l&aacute;i</td>
			<td colspan="3">Tr??? l???c l&aacute;i ??i???n</td>
		</tr>
		<tr>
			<td colspan="2">Van b?????m ga ??i???u ch???nh b???ng ??i???n t???</td>
			<td colspan="3">C&oacute;</td>
		</tr>
		<tr>
			<td colspan="1" rowspan="3">M???c ti&ecirc;u th??? nhi&ecirc;n li???u (l&iacute;t/100km)</td>
			<td>Chu tr&igrave;nh t??? h???p</td>
			<td colspan="3" rowspan="1">5,68</td>
		</tr>
		<tr>
			<td>??&ocirc; th??? c?? b???n</td>
			<td colspan="3" rowspan="1">7,29</td>
		</tr>
		<tr>
			<td>??&ocirc; th??? ph???</td>
			<td colspan="3" rowspan="1">4,73</td>
		</tr>
		<tr>
			<td colspan="5">An to&agrave;n - An ninh</td>
		</tr>
		<tr>
			<td colspan="2">T&uacute;i kh&iacute; cho gh??? l&aacute;i v&agrave; gh??? ph???</td>
			<td colspan="3" rowspan="1">C&oacute;</td>
		</tr>
		<tr>
			<td colspan="2">T&uacute;i kh&iacute; b&ecirc;n cho h&agrave;ng gh??? tr?????c</td>
			<td colspan="3" rowspan="1">C&oacute;</td>
		</tr>
		<tr>
			<td colspan="2">T&uacute;i kh&iacute; r&egrave;m cho t???t c??? h&agrave;ng gh???</td>
			<td>Kh&ocirc;ng</td>
			<td>Kh&ocirc;ng</td>
			<td>C&oacute;</td>
		</tr>
		<tr>
			<td colspan="2">H??? th???ng c&acirc;n b???ng ??i???n t??? VSA</td>
			<td colspan="3" rowspan="1">C&oacute;</td>
		</tr>
		<tr>
			<td colspan="2">H??? th???ng ch???ng b&oacute; c???ng phanh ABS</td>
			<td colspan="3">C&oacute;</td>
		</tr>
		<tr>
			<td colspan="2">H??? th???ng ph&acirc;n b??? l???c phanh ??i???n t??? EBD</td>
			<td colspan="3">C&oacute;</td>
		</tr>
		<tr>
			<td colspan="2">H??? th???ng h??? tr??? phanh kh???n c???p BA</td>
			<td colspan="3">C&oacute;</td>
		</tr>
		<tr>
			<td colspan="2">H??? th???ng h??? tr??? kh???i h&agrave;nh ngang d???c HSA</td>
			<td colspan="3">C&oacute;</td>
		</tr>
		<tr>
			<td colspan="2">??&egrave;n b&aacute;o phanh kh???n c???p ESS</td>
			<td colspan="3" rowspan="1">C&oacute;</td>
		</tr>
		<tr>
			<td colspan="2">Ga t??? ?????ng Cruise Control</td>
			<td>Kh&ocirc;ng</td>
			<td colspan="2">C&oacute;</td>
		</tr>
		<tr>
			<td colspan="2">Camera l&ugrave;i</td>
			<td>Kh&ocirc;ng</td>
			<td colspan="2" rowspan="1">3 g&oacute;c quay</td>
		</tr>
		<tr>
			<td colspan="2">Ch???c n??ng kh&oacute;a c???a t??? ?????ng</td>
			<td colspan="3" rowspan="1">C&oacute;</td>
		</tr>
		<tr>
			<td colspan="2">Nh???c nh??? c&agrave;i d&acirc;y an to&agrave;n</td>
			<td colspan="3" rowspan="1">H&agrave;ng gh??? tr?????c</td>
		</tr>
		<tr>
			<td colspan="2">M&oacute;c gh??? an to&agrave;n cho tr??? em ISOFIX</td>
			<td colspan="3" rowspan="1">C&oacute;</td>
		</tr>
		<tr>
			<td colspan="2">Khung xe h???p th??? l???c v&agrave; t????ng th&iacute;ch va ch???m</td>
			<td colspan="3" rowspan="1">C&oacute;</td>
		</tr>
		<tr>
			<td colspan="2">Ch&igrave;a kh&oacute;a ???????c m&atilde; h&oacute;a ch???ng tr???m v&agrave; h??? th???ng b&aacute;o ?????ng</td>
			<td colspan="3" rowspan="1">C&oacute;</td>
		</tr>
	</tbody>
</table>

<h2><strong>Th??? t???c mua xe Honda City 2022 tr??? g&oacute;p</strong></h2>

<p>C&aacute;c ng&acirc;n h&agrave;ng hi???n nay ??ang tung ra nhi???u ch&iacute;nh s&aacute;ch ??u ??&atilde;i h???p d???n v??? l&atilde;i su???t d&agrave;nh ri&ecirc;ng cho kh&aacute;ch h&agrave;ng&nbsp;<strong><a href="https://oto.com.vn/mua-ban-xe-honda-city" title="mua xe Honda City">mua xe Honda City</a></strong>&nbsp;2022 tr??? g&oacute;p trong th???i gian n&agrave;y.</p>

<h2><strong>Nh???ng ??i???m m???i ??&aacute;ng ch&uacute; &yacute; tr&ecirc;n Honda City 2022</strong></h2>

<p>Honda City 2022 ???????c ??&aacute;nh gi&aacute; l&agrave; s??? h???u thi???t k??? tr??? trung c&ugrave;ng c???m gi&aacute;c l&aacute;i ???n t?????ng. Honda City th??? h??? th??? 5 mang ?????n c???m gi&aacute;c tr?????ng d&aacute;ng v&agrave; th??? thao nh??? k&iacute;ch th?????c chi???u d&agrave;i t???ng th??? t??ng l&ecirc;n 54 mm v&agrave; h??? chi???u cao xu???ng 10 mm.</p>

<p>Ngo???i h&igrave;nh City m???i ???????c ??&aacute;nh gi&aacute; l&agrave; &quot;l???t x&aacute;c&quot; ho&agrave;n to&agrave;n, c&aacute; t&iacute;nh, th???i th?????ng h??n h???n ng?????i ti???n nhi???m khi thi???t k??? l?????i t???n nhi???t tr???i d&agrave;i xu???ng m??i xe v&agrave; k???t n???i v???i h??? th???ng ??&egrave;n pha. C&aacute;c h???a ti???t b&ecirc;n trong d???ng l?????i t??? ong v&ocirc; c&ugrave;ng b???t m???t.</p>

<p>V??? thi???t k??? th&acirc;n v&agrave; ??u&ocirc;i xe Honda City 2022 ch??a c&oacute; nhi???u ??i???m m???i mang t&iacute;nh &quot;c&aacute;ch m???ng&quot; nh?? khu v???c m???t ti???n.</p>

<p>Khoang cabin Honda City m???i tho&aacute;ng r???ng nh???t ph&acirc;n kh&uacute;c nh??? s??? gia t??ng ??&aacute;ng k??? v??? chi???u r???ng (t??ng th&ecirc;m 113 mm). M&agrave;n h&igrave;nh gi???i tr&iacute; 8 inch, l???n h??n th??? h??? c??, c&oacute; h??? tr??? k???t n???i Apple CarPlay/Android Auto.</p>

<p>S??? xu???t hi???n c???a t&iacute;nh n??ng kh???i ?????ng xe t??? xa, t??ng th&ecirc;m t&iacute;nh ti???n d???ng cho ng?????i d&ugrave;ng xe. M???t trong nh???ng ??i???m m???i n???i b???t nh???t tr&ecirc;n Honda City model 2022 ch&iacute;nh l&agrave; c&oacute; th&ecirc;m phi&ecirc;n b???n City RS (Road Sailing) ho&agrave;n to&agrave;n m???i v???i nhi???u ??i???m nh???n ???n t?????ng.</p>

<p>Nh&igrave;n chung, ??? th??? h??? m???i Honda City ???????c ??&aacute;nh gi&aacute; c&oacute; nhi???u thay ?????i t&iacute;ch c???c so v???i &quot;ng?????i ti???n nhi???m&quot;, gi&uacute;p t??ng kh??? n??ng c???nh tranh v???i c&aacute;c ?????i th??? s???ng s??? t???i ph&acirc;n kh&uacute;c sedan B hi???n nay.</p>

<p>Tuy nhi&ecirc;n, gi&aacute; xe Honda City 2022 v???n c&ograve;n kh&aacute; cao so v???i c&aacute;c trang b??? c??ng nh?? nh???ng c&aacute;i t&ecirc;n &quot;chung m&acirc;m&quot;. ??&acirc;y l&agrave; m???t trong nh???ng b???t l???i cho City trong cu???c chi???n gi&agrave;nh th??? ph???n v???n v&ocirc; c&ugrave;ng gay g???t.</p>

<h2><strong>Nh???ng c&acirc;u h???i th?????ng g???p v??? Honda City</strong></h2>

<h3><strong>Honda City c&oacute; bao nhi&ecirc;u phi&ecirc;n b???n?</strong></h3>

<p>&nbsp;</p>

<p>Honda City ra m???t t???i th??? tr?????ng Vi???t Nam v???i 3 phi&ecirc;n b???n l&agrave;: City E c&oacute; gi&aacute; ni&ecirc;m y???t l&agrave; 529 tri???u; City 1.5 G c&oacute; m???c gi&aacute; ni&ecirc;m y???t l&agrave; 559 tri???u. cu???i c&ugrave;ng l&agrave; phi&ecirc;n b???n City 1.5 L c&oacute; gi&aacute; 599 tri???u.</p>

<h3><strong>?????i th??? c???a Honda City?</strong></h3>

<p>Honda City hi???n nay ??ang c???nh tranh v???i c&aacute;c m???u xe trong ph&acirc;n kh&uacute;c xe h???ng B nh??:&nbsp;Toyota Vios, Hyundai Accent hay Kia Soluto&hellip;.</p>

<h2><strong>T???ng k???t</strong></h2>

<p>Gi&aacute; xe Honda City hi???n nay ??ang kh&aacute; ngang t???m v???i c&aacute;c ?????i th??? Vios, Accent. M???u xe n&agrave;y ???????c gi???i chuy&ecirc;n m&ocirc;n ??&aacute;nh gi&aacute; v??? thi???t k??? ???n t?????ng, tr??? trung v&agrave; ?????c bi???t l&agrave; b??? sung th&ecirc;m kh&aacute; nhi???u c&ocirc;ng ngh??? h???u &iacute;ch.</p>

<p>&nbsp;</p>
', 0.05, 3, 0);
INSERT Products (Id, Name, UnitPrice, Image, ProductDate, Available, CategoryId, Quantity, Description, Discount, ViewCount, Special) VALUES (4, N'Wave Alpha 110cc', 17859273, N'wavealpha.jpg', CAST(N'2022-03-21' AS Date), 1, 1, 30, N'<h2><strong>Thi???t k???</strong></h2>

<p>Wave Alpha 110cc phi&ecirc;n b???n 2020 tr??? trung v&agrave; c&aacute; t&iacute;nh v???i thi???t k??? b??? tem m???i, t???o nh???ng ??i???m nh???n ???n t?????ng, thu h&uacute;t &aacute;nh nh&igrave;n, cho b???n t??? tin ghi l???i d???u ???n c&ugrave;ng b???n b&egrave; c???a m&igrave;nh tr&ecirc;n m???i h&agrave;nh tr&igrave;nh.</p>

<h2><strong>Tem xe c&aacute; t&iacute;nh m???i</strong></h2>

<p>Thi???t k??? tem m???i v???i nh???ng ???????ng n&eacute;t ???n t?????ng ch???y d???c th&acirc;n xe mang l???i h&igrave;nh ???nh t???ng th??? m???i l??? v&agrave; c&aacute; t&iacute;nh.</p>

<p><img alt="" src="https://cdn.honda.com.vn/motorbike-strong-points/October2020/dHDkyeS9loGAbePiahHS.jpg" style="height:490px; width:650px" /></p>

<figure class="easyimage easyimage-full"><img alt="" src="blob:http://localhost:8080/2e5f0b7c-56e1-44c9-a7f9-9abf9360a118" style="width:650px" />
<figcaption></figcaption>
</figure>

<figure class="easyimage easyimage-full"><img alt="" src="blob:http://localhost:8080/2d93c3fa-5c94-48bf-920b-e543867fc6bc" style="width:650px" />
<figcaption></figcaption>
</figure>

<h2><strong>M???t ?????ng h??? d??? quan s&aacute;t</strong></h2>

<p>C&aacute;c th&ocirc;ng s??? v???n h&agrave;nh ???????c hi???n th??? ?????y ????? gi&uacute;p ng?????i l&aacute;i quan s&aacute;t m???t c&aacute;ch d??? d&agrave;ng v&agrave; thu???n ti???n.</p>

<p><img alt="" src="https://cdn.honda.com.vn/motorbike-strong-points/October2020/AnWeJC30HhLiG4PCmqda.jpg" style="height:490px; width:650px" /></p>

<figure class="easyimage easyimage-full"><img alt="" src="blob:http://localhost:8080/fb705ffd-8260-414e-aacd-31a063b824ef" style="width:650px" />
<figcaption></figcaption>
</figure>

<figure class="easyimage easyimage-full"><img alt="" src="blob:http://localhost:8080/7af14c45-73ae-4381-ad81-498c6b17f02f" style="width:650px" />
<figcaption></figcaption>
</figure>

<h2><strong>?????ng c?? - C&ocirc;ng ngh???</strong></h2>

<p>Wave Alpha 110cc ???????c trang b??? ?????ng c?? 110cc v???i hi???u su???t v?????t tr???i m&agrave; v???n ?????m b???o kh??? n??ng ti???t ki???m nhi&ecirc;n li???u m???t c&aacute;ch t???i ??u.</p>

<p><img alt="" src="https://cdn.honda.com.vn/motorbike-strong-points/October2020/QuE9jB8aqV9KUoJgBTd6.jpg" /></p>

<figure class="easyimage easyimage-full"><img alt="" src="blob:http://localhost:8080/8420e926-2094-4a35-b023-ebb3454790e6" style="width:650px" />
<figcaption></figcaption>
</figure>

<h2><strong>Ti???n &iacute;ch &amp; An to&agrave;n</strong></h2>

<p>T???i ??u h&oacute;a ti???n &iacute;ch lu&ocirc;n l&agrave; m???t trong nh???ng quan t&acirc;m h&agrave;ng ?????u c???a Honda khi ph&aacute;t tri???n xe, ????? b???n tho???i m&aacute;i l?????t c&ugrave;ng Wave Alpha 110cc tr&ecirc;n m???i n???o ???????ng.</p>

<h2><strong>??&egrave;n chi???u s&aacute;ng ph&iacute;a tr?????c c&oacute; t&iacute;nh n??ng t??? ?????ng b???t s&aacute;ng</strong></h2>

<p>?????m b???o cho ng?????i s??? d???ng c&oacute; t???m nh&igrave;n t???t nh???t, h???n ch??? c&aacute;c tr?????ng h???p qu&ecirc;n b???t ??&egrave;n khi ??i trong ??i???u ki???n &aacute;nh s&aacute;ng kh&ocirc;ng ?????m b???o. B&ecirc;n c???nh ??&oacute;, kh??? n??ng nh???n di???n c???a xe khi di chuy???n tr&ecirc;n ???????ng ph??? c??ng ???????c t??ng l&ecirc;n.</p>

<p><img alt="" src="https://cdn.honda.com.vn/motorbike-strong-points/October2020/BX09Ju4GhRGAXp2zEsrQ.jpg" style="height:490px; width:650px" /></p>

<figure class="easyimage easyimage-full"><img alt="" src="blob:http://localhost:8080/cb6fd368-9ca6-4b56-96b2-27a0d0f4f604" style="width:650px" />
<figcaption></figcaption>
</figure>

<figure class="easyimage easyimage-full"><img alt="" src="blob:http://localhost:8080/4a726e6a-632b-4501-b10a-da9986737fdb" style="width:650px" />
<figcaption></figcaption>
</figure>

<h2><strong>??? kh&oacute;a ??a n??ng 3 trong 1</strong></h2>

<p>??? kh&oacute;a bao g???m kh&oacute;a ??i???n, kh&oacute;a c??? v&agrave; kh&oacute;a t???, d??? s??? d???ng v&agrave; ch???ng r??? s&eacute;t hi???u qu???.</p>

<p><img alt="" src="https://cdn.honda.com.vn/motorbike-strong-points/October2020/r5ZSu8UxGPreYZtmqNvs.jpg" style="height:490px; width:650px" /></p>

<figure class="easyimage easyimage-full"><img alt="" src="blob:http://localhost:8080/f2b355b0-efd6-4f4d-86c4-64d8b7a9a646" style="width:650px" />
<figcaption></figcaption>
</figure>

<figure class="easyimage easyimage-full"><img alt="" src="blob:http://localhost:8080/2ac0b4a1-7948-4d31-8f0d-f42d1e77e233" style="width:650px" />
<figcaption></figcaption>
</figure>

<h2><strong>M&agrave;u s???c</strong></h2>

<figure class="easyimage easyimage-full"><img alt="" src="blob:http://localhost:8080/1deea7a6-14fc-46b5-93af-e7f51bbb20eb" style="width:635px" />
<figcaption></figcaption>
</figure>

<figure class="easyimage easyimage-full"><img alt="" src="blob:http://localhost:8080/769f12b8-dcbc-4b99-9d71-abe24f627174" style="width:635px" />
<figcaption></figcaption>
</figure>

<figure class="easyimage easyimage-full"><img alt="" src="blob:http://localhost:8080/f9214934-501f-4292-98ba-51991cfd323d" style="width:635px" />
<figcaption></figcaption>
</figure>

<figure class="easyimage easyimage-full"><img alt="" src="blob:http://localhost:8080/d660c25c-7dfc-47b0-b4ab-f598a63ea3c2" style="width:635px" />
<figcaption></figcaption>
</figure>

<figure class="easyimage easyimage-full"><img alt="" src="blob:http://localhost:8080/88513fcf-536e-447a-83d1-e4c013414e1c" style="width:635px" />
<figcaption></figcaption>
</figure>

<h2><strong>Th&ocirc;ng s??? k?? thu???t</strong></h2>

<p><strong>Kh???i l?????ng b???n th&acirc;n</strong></p>

<p>97kg</p>

<p><strong>D&agrave;i x R???ng x Cao</strong></p>

<p>1.914mm x 688mm x 1.075mm</p>

<p><strong>Kho???ng c&aacute;ch tr???c b&aacute;nh xe</strong></p>

<p>1.224mm</p>

<p><strong>????? cao y&ecirc;n</strong></p>

<p>769mm</p>

<p><strong>Kho???ng s&aacute;ng g???m xe</strong></p>

<p>138mm</p>

<p><strong>Dung t&iacute;ch b&igrave;nh x??ng</strong></p>

<p>3,7 l&iacute;t</p>

<p><strong>K&iacute;ch c??? l???p tr?????c/ sau</strong></p>

<p>Tr?????c: 70/90 - 17 M/C 38P<br />
Sau: 80/90 - 17 M/C 50P</p>

<p><strong>Phu???c tr?????c</strong></p>

<p>???ng l???ng, gi???m ch???n th???y l???c</p>

<p><strong>Phu???c sau</strong></p>

<p>L&ograve; xo tr???, gi???m ch???n th???y l???c</p>

<p><strong>Lo???i ?????ng c??</strong></p>

<p>X??ng, 4 k???, 1 xi-lanh, l&agrave;m m&aacute;t b???ng kh&ocirc;ng kh&iacute;</p>

<p><strong>C&ocirc;ng su???t t???i ??a</strong></p>

<p>6,12 kW / 7.500 v&ograve;ng/ph&uacute;t</p>

<p><strong>Dung t&iacute;ch nh???t m&aacute;y</strong></p>

<p>1 l&iacute;t (khi r&atilde; m&aacute;y)<br />
0,8 l&iacute;t (khi thay nh???t)</p>

<p><strong>M???c ti&ecirc;u th??? nhi&ecirc;n li???u</strong></p>

<p>1,90 l&iacute;t</p>

<p><strong>H???p s???</strong></p>

<p>C?? kh&iacute;, 4 s??? tr&ograve;n</p>

<p><strong>H??? th???ng kh???i ?????ng</strong></p>

<p>??i???n/ ?????p ch&acirc;n</p>

<p><strong>Moment c???c ?????i</strong></p>

<p>8,44 Nm/5.500 v&ograve;ng/ph&uacute;t</p>

<p><strong>Dung t&iacute;ch xy-lanh</strong></p>

<p>109,1cm3</p>

<p><strong>???????ng k&iacute;nh x H&agrave;nh tr&igrave;nh p&iacute;t t&ocirc;ng</strong></p>

<p>50mm x 55,6mm</p>

<p><strong>T??? s??? n&eacute;n</strong></p>

<p>9,0:1</p>
', 0, 6, 0);
INSERT Products (Id, Name, UnitPrice, Image, ProductDate, Available, CategoryId, Quantity, Description, Discount, ViewCount, Special) VALUES (5, N'VINFAST LUX A2.0', 881695000, N'luxa20.jpg', CAST(N'2022-04-02' AS Date), 1, 5, 10, N'<h2><strong>?????NG C?? BMW2.0L</strong></h2>

<p>C&Ocirc;NG SU???T 228 HP</p>

<p>H???P S??? T??? ?????NG ZF 8 C???P</p>

<p><img alt="hinh anh gia xe VinFast Lux A2.0 ban tieu chuan" src="https://shop.vinfastauto.com/on/demandware.static/-/Sites-app_vinfast_vn-Library/default/dwbdd0e76b/images/Lux-A/hinh-anh-gia-xe-VinFast-Lux-A2.0-ban-tieu-chuan-mau-do-mystique-red.png" title="gi?? xe VinFast Lux a2.0 b???n ti??u chu???n" /></p>

<h2><strong>CH???N M&Agrave;U XE</strong></h2>

<figure class="easyimage easyimage-full"><img alt="" src="blob:http://localhost:8080/2df83bce-0375-403c-b7e7-af83ae53bf65" style="width:133px" />
<figcaption></figcaption>
</figure>

<figure class="easyimage easyimage-full"><img alt="" src="blob:http://localhost:8080/6f5db69a-786b-4a74-9900-3585e0a87365" style="width:133px" />
<figcaption></figcaption>
</figure>

<h2><strong>THI???T K??? NGO???I TH???T</strong></h2>

<h2>KH???E KHO???N &amp; SANG TR???NG</h2>

<p>S??? k???t h???p gi???a d&aacute;ng v??? kh???e kho???n v&agrave; c???u tr&uacute;c ho&agrave;n h???o c???a ngo???i th???t t???o n&ecirc;n ??i???m nh???n sang tr???ng nh??ng v???n ?????y tinh t??? cho LUX A2.0, th???i l&agrave;n gi&oacute; m???i v&agrave;o thi???t k??? ?????c h???u c???a d&ograve;ng sedan th&ocirc;ng th?????ng.</p>

<p><a href="https://shop.vinfastauto.com/vn_vi/vinfast-cars-deposit.html?modelId=Products-Car-LUX-A" type="button">MUA NGAY</a></p>

<ul>
	<li>Sang tr???ng &amp; tinh t??? ???????c c???u th&agrave;nh t??? nh&ocirc;m, g??? v&agrave; da Nappa th?????ng h???ng, khoang xe t???o c???m gi&aacute;c cao c???p v&agrave; trang nh&atilde;.</li>
	<li>Tho???i m&aacute;i t???n h?????ngHai gh??? tr?????c ch???nh ??i???n ??a h?????ng c&ugrave;ng gh??? sau c&oacute; ????? ng??? l&yacute; t?????ng mang ?????n s??? th?? th&aacute;i tr&ecirc;n m???i cung ???????ng.</li>
	<li>Ti???n nghi t&acirc;n ti???nS???c kh&ocirc;ng d&acirc;y, ??i???u h&ograve;a t??? ?????ng 2 v&ugrave;ng ?????c l???p ki???m so&aacute;t ch???t l?????ng kh&ocirc;ng kh&iacute; b???ng ion, r&egrave;m che n???ng ch???nh ??i???n, m&agrave;n h&igrave;nh gi???i tr&iacute; 10.4 inch c&ugrave;ng d&agrave;n &acirc;m thanh 13 loa. H??? tr??? k???t n???i Apple Carplay.</li>
</ul>

<h3>THI???T K??? N???I TH???T</h3>

<h2>TI???N NGHI &amp;<br />
?????NG C???P</h2>

<p>Ch???t li???u sang tr???ng, trau chu???t trong t???ng chi ti???t, trang b??? ti???n nghi ti&ecirc;n ti???n, t???t c??? l&agrave;m n&ecirc;n m???t kh&ocirc;ng gian ?????ng c???p d&agrave;nh cho ng?????i l&aacute;i v&agrave; h&agrave;nh kh&aacute;ch tr&ecirc;n LUX A2.0.</p>

<p><a href="https://shop.vinfastauto.com/vn_vi/vinfast-cars-deposit.html?modelId=Products-Car-LUX-A" type="button">MUA NGAY</a></p>

<h3><strong>?????NG C?? &amp; C&Ocirc;NG NGH???</strong></h3>

<h2><strong>M???NH M??? &amp; &Ecirc;M &Aacute;I</strong></h2>

<p>S???c m???nh 228 m&atilde; l???c t??? kh???i ?????ng c?? 2.0L t??ng &aacute;p, k???t h???p c&ugrave;ng h???p s??? t??? ?????ng 8 c???p ZF v&agrave; h&agrave;ng lo???t c&ocirc;ng ngh??? an to&agrave;n ti&ecirc;n ti???n, LUX A 2.0 mang ?????n kh??? n??ng v???n h&agrave;nh ch???c ch???n, t??? tin c&ugrave;ng ch??? nh&acirc;n chinh ph???c nh???ng c???t m???c th&agrave;nh c&ocirc;ng.</p>

<ul>
	<li>1. ?????ng c?? 2.0 L - 228 HP</li>
	<li>2. H???p s??? t??? ?????ng ZF 8 c???p</li>
	<li>3. H??? th???ng treo tr?????c/sau ?????c l???p</li>
	<li>4. Khung g???m li???n kh???i ti&ecirc;u chu???n Ch&acirc;u &Acirc;u</li>
	<li>5. Tr??? l???c l&aacute;i th???y l???c ??i???u khi???n ??i???n</li>
	<li>6. ABS - H??? th???ng ch???ng b&oacute; c???ng phanh</li>
	<li>7. C???nh b&aacute;o ??i???m m&ugrave;</li>
	<li>8. EBD - Ph&acirc;n ph???i l???c phanh ??i???n t???</li>
	<li>9. BA - H??? tr??? phanh kh???n c???p</li>
	<li>10. ESC - H??? th???ng c&acirc;n b???ng ??i???n t???</li>
	<li>11. TCS - H??? th???ng ki???m so&aacute;t l???c k&eacute;o</li>
	<li>12. HSA - H??? tr??? kh???i h&agrave;nh ngang d???c</li>
	<li>13. H??? th???ng t&uacute;i kh&iacute;</li>
	<li>14. H??? th???ng camera 360 ?????</li>
</ul>

<h3>VINFAST LUX A2.0</h3>

<h2>TH&Ocirc;NG S??? XE</h2>

<p>C&aacute;c th&ocirc;ng tin s???n ph???m c&oacute; th??? thay ?????i&nbsp;m&agrave; kh&ocirc;ng c???n b&aacute;o tr?????c</p>

<ul>
	<li>
	<h2><strong><a href="https://shop.vinfastauto.com/vn_vi/car-lux-a.html#standa-tab" id="standa">TI&Ecirc;U CHU???N</a></strong></h2>
	</li>
	<li>D&agrave;i x R???ng x Cao4973 x 1900 x 1500 (mm)</li>
	<li>Chi???u d&agrave;i c?? s???2968 (mm)</li>
	<li>Kho???ng s&aacute;ng g???m150 (mm)</li>
	<li>Dung t&iacute;ch nhi&ecirc;n li???u70 (L)</li>
	<li>M???c ti&ecirc;u th??? nhi&ecirc;n li???uK???t h???p: 8,39 (l&iacute;t/100km)<br />
	Trong ??&ocirc; th???: 11,11 (l&iacute;t/100km)<br />
	Ngo&agrave;i ??&ocirc; th???: 6,90 (l&iacute;t/100km)</li>
	<li>?????ng c?? 2.0L</li>
	<li>C&ocirc;ng su???t t???i ??a 174 HP</li>
	<li>M&ocirc; men xo???n c???c ?????i 300 Nm</li>
	<li>H???p s??? T??? ?????ng, 8 c???p</li>
	<li>D???n ?????ng C???u sau (RWD)</li>
	<li>
	<h2><span style="color:#3498db"><u><strong>N&Acirc;NG CAO</strong></u></span></h2>
	</li>
	<li>D&agrave;i x R???ng x Cao 4973 x 1900 x 1500 (mm)</li>
	<li>Chi???u d&agrave;i c?? s??? 2968 (mm)</li>
	<li>Kho???ng s&aacute;ng g???m 150 (mm)</li>
	<li>Dung t&iacute;ch nhi&ecirc;n li???u70 (L)</li>
	<li>M???c ti&ecirc;u th??? nhi&ecirc;n li???u K???t h???p: 8,39 (l&iacute;t/100km)<br />
	Trong ??&ocirc; th???: 11,11 (l&iacute;t/100km)<br />
	Ngo&agrave;i ??&ocirc; th???: 6,90 (l&iacute;t/100km)</li>
	<li>?????ng c?? 2.0L</li>
	<li>C&ocirc;ng su???t t???i ??a 174 HP</li>
	<li>M&ocirc; men xo???n c???c ?????i 300 Nm</li>
	<li>H???p s???T??? ?????ng, 8 c???p</li>
	<li>D???n ?????ngC???u sau (RWD)</li>
	<li>
	<h2><span style="color:#3498db"><u><strong>CAO C???P</strong></u></span></h2>
	</li>
	<li>D&agrave;i x R???ng x Cao 4973 x 1900 x 1500 (mm)</li>
	<li>Chi???u d&agrave;i c?? s??? 2968 (mm)</li>
	<li>Kho???ng s&aacute;ng g???m ????? t???i/ kh&ocirc;ng t???i 150 (mm)</li>
	<li>Dung t&iacute;ch nhi&ecirc;n li???u 70 (L)</li>
	<li>M???c ti&ecirc;u th??? nhi&ecirc;n li???uK???t h???p: 8,32 (l&iacute;t/100km)<br />
	Trong ??&ocirc; th???: 10,83 (l&iacute;t/100km)<br />
	Ngo&agrave;i ??&ocirc; th???: 6,82 (l&iacute;t/100km)</li>
	<li>?????ng c?? 2.0L</li>
	<li>C&ocirc;ng su???t t???i ??a 228 HP</li>
	<li>M&ocirc; men xo???n c???c ?????i 350 Nm</li>
	<li>H???p s??? T??? ?????ng, 8 c???p</li>
	<li>D???n ?????ng C???u sau (RWD)</li>
</ul>
', 0.1, 19, 1);
INSERT Products (Id, Name, UnitPrice, Image, ProductDate, Available, CategoryId, Quantity, Description, Discount, ViewCount, Special) VALUES (6, N'Z400 ABS 2020', 149000000, N'z400.jpg', CAST(N'2022-05-16' AS Date), 1, 9, 10, N'<table>
	<tbody>
		<tr>
			<td>
			<h1><strong>TH&Ocirc;NG S??? K??? THU???T</strong></h1>
			</td>
			<td>&nbsp;</td>
		</tr>
	</tbody>
</table>

<p>?????NG C?? XY LANH ??&Ocirc;I</p>

<p>399cc</p>

<p>V??? NGO&Agrave;I PHONG C&Aacute;CH</p>

<p>CHI???N BINH ???????NG PH???</p>

<h2><strong>C&Ocirc;NG NGH???</strong></h2>

<p>&nbsp;</p>

<p>T&igrave;m Hi???u Th&ecirc;m V??? C&ocirc;ng Ngh???</p>

<table>
	<tbody>
		<tr>
			<td>C&ocirc;ng ngh??? qu???n l&yacute; ?????ng c??</td>
		</tr>
	</tbody>
</table>

<ul>
	<li><a href="javascript:void(0)"><img src="https://content2.kawasaki.com/ContentStorage/KMV/ProductTechIcons/b29e3c42-03b3-4caf-951c-ae675c12a5c0.svg" /></a>

	<p><a href="javascript:void(0)">H??? TR??? SANG S??? &amp; CH???NG TR?????T LY H???P</a></p>
	</li>
	<li><a href="javascript:void(0)"><img src="https://content2.kawasaki.com/ContentStorage/KMV/ProductTechIcons/0df4f4a4-a0e0-40be-bfd4-718fce66954b.svg" /></a>
	<p><a href="javascript:void(0)">CH??? S??? ECONOMICAL RIDING</a></p>
	</li>
</ul>

<table>
	<tbody>
		<tr>
			<td>C&ocirc;ng ngh??? ki???m so&aacute;t khung s?????n</td>
		</tr>
	</tbody>
</table>

<ul>
	<li><a href="javascript:void(0)"><img src="https://content2.kawasaki.com/ContentStorage/CKM/ProductTechIcons/e44d9891-8639-4464-954b-1a6e2d0612ab.svg" /></a>

	<p><a href="javascript:void(0)">T&Iacute;NH N??NG ABS (H??? TH???NG CH???NG B&Oacute; C???NG PHANH)</a></p>
	</li>
	<li><a href="javascript:void(0)"><img src="https://content2.kawasaki.com/ContentStorage/CKM/ProductTechIcons/0dc297fc-2041-4c7c-90a8-ce1ea3ccf7c2.svg" /></a>
	<p><a href="javascript:void(0)">ERGO-FIT</a></p>
	</li>
</ul>

<h2><strong>S???C M???NH</strong></h2>

<p>&nbsp;</p>

<table>
	<tbody>
		<tr>
			<td>C&ocirc;ng su???t c???c ?????i</td>
			<td>&nbsp;33,4 kW {45 PS} / 10.000 rpm</td>
		</tr>
		<tr>
			<td>M&ocirc;-men xo???n c???c ?????i</td>
			<td>&nbsp;38,0 N&middot;m {3,9 kgfm} / 8.000 rpm</td>
		</tr>
		<tr>
			<td>Lo???i ?????ng c??</td>
			<td>&nbsp;4 th&igrave;, xy-lanh ??&ocirc;i, DOHC, 4 van, W /C</td>
		</tr>
		<tr>
			<td>Dung t&iacute;ch ?????ng c??</td>
			<td>&nbsp;399 cm&sup3;</td>
		</tr>
		<tr>
			<td>K&iacute;ch th?????c v&agrave; h&agrave;nh tr&igrave;nh</td>
			<td>&nbsp;70,0 x 51,8 mm</td>
		</tr>
		<tr>
			<td>T??? s??? n&eacute;n</td>
			<td>&nbsp;11,5:1</td>
		</tr>
		<tr>
			<td>HT ??&aacute;nh l???a</td>
			<td>&nbsp;B&amp;C (TCBI EL. ADV. D.)</td>
		</tr>
		<tr>
			<td>HT kh???i ?????ng</td>
			<td>&nbsp;Kh???i ?????ng ??i???n</td>
		</tr>
		<tr>
			<td>HT b&ocirc;i tr??n</td>
			<td>&nbsp;B&ocirc;i tr??n c?????ng b???c</td>
		</tr>
		<tr>
			<td>H???p s???</td>
			<td>&nbsp;H???p s??? 6 c???p</td>
		</tr>
		<tr>
			<td>T??? s??? truy???n ch&iacute;nh</td>
			<td>&nbsp;2,219 (71/32)</td>
		</tr>
		<tr>
			<td>T??? s??? truy???n 1st</td>
			<td>&nbsp;2,929 (41/14)</td>
		</tr>
		<tr>
			<td>T??? s??? truy???n 2nd</td>
			<td>&nbsp;2,056 (37/18) </td>
		</tr>
		<tr>
			<td>T??? s??? truy???n 3rd</td>
			<td>&nbsp;1,619 (34/21)</td>
		</tr>
		<tr>
			<td>T??? s??? truy???n 4th</td>
			<td>1,333 (32/24)</td>
		</tr>
		<tr>
			<td>T??? s??? truy???n 5th</td>
			<td>1,154 (30/26)</td>
		</tr>
		<tr>
			<td>T??? s??? truy???n 6th</td>
			<td>1.037 (28 /27)</td>
		</tr>
		<tr>
			<td>T??? s??? truy???n cu???i</td>
			<td>2,929 (41/14)</td>
		</tr>
		<tr>
			<td>Ly h???p</td>
			<td>??a ????a ?????t</td>
		</tr>
		<tr>
			<td>HT truy???n ?????ng</td>
			<td>X&iacute;ch</td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>

<h2><strong>HI???U N??NG</strong></h2>

<p>&nbsp;</p>

<table>
	<tbody>
		<tr>
			<td>Lo???i khung</td>
			<td>&nbsp;Khung Trellis, th&eacute;p ch???u l???c cao</td>
		</tr>
		<tr>
			<td>H??? th???ng gi???m x&oacute;c tr?????c</td>
			<td>&nbsp;Gi???m x&oacute;c ???ng l???ng</td>
		</tr>
		<tr>
			<td>H??? th???ng gi???m x&oacute;c sau</td>
			<td>&nbsp;Phu???c sau d???ng Uni Trak c&oacute; kh??? n??ng ??i???u ch???nh ???????c</td>
		</tr>
		<tr>
			<td>H&agrave;nh tr&igrave;nh phu???c tr?????c</td>
			<td>120 mm</td>
		</tr>
		<tr>
			<td>H&agrave;nh tr&igrave;nh phu???c sau</td>
			<td>130 mm</td>
		</tr>
		<tr>
			<td>G&oacute;c Caster</td>
			<td>24,5&deg;</td>
		</tr>
		<tr>
			<td>???????ng m&ograve;n</td>
			<td>92 mm</td>
		</tr>
		<tr>
			<td>G&oacute;c l&aacute;i (tr&aacute;i /ph???i)</td>
			<td>35&deg; / 35&deg;</td>
		</tr>
		<tr>
			<td>L???p tr?????c</td>
			<td>110/70-17 M/C 54S</td>
		</tr>
		<tr>
			<td>L???p sau</td>
			<td>150/60R17 M/C 66H</td>
		</tr>
		<tr>
			<td>Phanh tr?????c</td>
			<td>????a ????n</td>
		</tr>
		<tr>
			<td>Phanh sau</td>
			<td>????a ????n</td>
		</tr>
		<tr>
			<td>Chi???u d&agrave;i c?? s???</td>
			<td>1.370 mm</td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>

<h2><strong>CHI TI???T</strong></h2>

<p>&nbsp;</p>

<table>
	<tbody>
		<tr>
			<td>K&iacute;ch th?????c</td>
			<td>1.990 x 800 x 1.055 mm</td>
		</tr>
		<tr>
			<td>????? cao g???m xe</td>
			<td>145 mm</td>
		</tr>
		<tr>
			<td>Chi???u cao y&ecirc;n</td>
			<td>785mm</td>
		</tr>
		<tr>
			<td>Tr???ng l?????ng</td>
			<td>167 kg</td>
		</tr>
		<tr>
			<td>Dung t&iacute;ch b&igrave;nh x??ng</td>
			<td>14 l&iacute;t</td>
		</tr>
		<tr>
			<td>HT Nhi&ecirc;n li???u</td>
			<td>Phun x??ng</td>
		</tr>
		<tr>
			<td>M???c ti&ecirc;u hao nhi&ecirc;n li???u</td>
			<td>&nbsp;4,4 L/100km</td>
		</tr>
		<tr>
			<td>B???o h&agrave;nh</td>
			<td>24 th&aacute;ng</td>
		</tr>
	</tbody>
</table>
', 0, 3, 0);
INSERT Products (Id, Name, UnitPrice, Image, ProductDate, Available, CategoryId, Quantity, Description, Discount, ViewCount, Special) VALUES (7, N'Audi A4 2022', 1790000000, N'AudiA04.png', CAST(N'2022-05-16' AS Date), 1, 8, 5, N'<h1 style="text-align:center"><strong>Audi A4 M???i<br />
C&ocirc;ng ngh??? d???n l???i</strong></h1>

<p>Thi???t k??? trau chu???t, kh&ocirc;ng gian n???i th???t r???ng h??n trong d&aacute;ng v??? th??? thao c&ugrave;ng m&agrave;n h&igrave;nh c???m ???ng, Audi A4 d???n ?????u c&ocirc;ng ngh???. Qu&aacute;n qu&acirc;n gi???i th?????ng &ldquo;International Engine&rdquo; h???ng m???c ?????ng c?? TFSI 2.0 v???i trang b??? h??? th???ng mild hybrid (MHEV). S??? k???t h???p t&iacute;nh hi???u qu??? v???i ????? tho???i m&aacute;i tr&ecirc;n c??? hai phi&ecirc;n b???n d???n ?????ng c???u tr?????c v&agrave; d???n ?????ng hai c???u. C&ocirc;ng su???t v&agrave; m&ocirc;-men xo???n hi???u qu??? khi???n Audi A4 tr??? n&ecirc;n kh&aacute;c bi???t ho&agrave;n to&agrave;n trong c&ugrave;ng ph&acirc;n kh&uacute;c.<br />
<br />
D&aacute;ng v??? th??? thao song h&agrave;nh c&ugrave;ng ?????ng c?? x??ng mild hybrid, Audi A4 m???i mang l???i c???m gi&aacute;c l&aacute;i th&uacute; v??? v???i c??? hai phi&ecirc;n b???n: d???n ?????ng c???u tr?????c v&agrave; quattro.</p>

<h2 style="text-align:center"><strong>Th??? thao t??? m???i g&oacute;c nh&igrave;n</strong></h2>

<p>Audi A4 l&agrave; vi???t t???t cho t&iacute;nh th??? thao, uy t&iacute;n v&agrave; c???m x&uacute;c. B???ng c&aacute;ch t???p trung v&agrave;o c&aacute;c chi ti???t n??ng ?????ng ?????c tr??ng quattro v???i t??? l??? h&agrave;i h&ograve;a, c&aacute;c thu???c t&iacute;nh n&agrave;y hi???n th??? m???t c&aacute;ch r&otilde; r&agrave;ng. ??? ph&iacute;a sau, m???t thanh crom ngang n???i b???t b???t n???i gi???a hai ??&egrave;n h???u ?????ng th???i nh???n m???nh ???n t?????ng chi???u r???ng. Hai ???ng x??? h&igrave;nh thang th??? thao n???m ch&igrave;m trong ???p b??? khu???ch t&aacute;n ph&iacute;a sau. Nh&igrave;n t??? ph&iacute;a b&ecirc;n, c&aacute;c ???????ng g&acirc;n th??? thao n???i b???t k???t h???p v???i c&aacute;c v&ograve;m b&aacute;nh xe nh???n m???nh ?????c tr??ng quattro.<br />
<br />
??i k&egrave;m l&agrave; b??? m&acirc;m h???p kim phong c&aacute;ch 17-inch v???i thi???t k??? 5 ch???u n??ng ?????ng, t&ugrave;y ch???n m??? r???ng l&ecirc;n ?????n m&acirc;m 19-inch. ??? ph???n ?????u xe, l?????i t???n nhi???t ???????c thi???t k??? d???ng khung ????n s&acirc;u v&agrave; r???ng, k???t h???p v???i ph???n c???n tr?????c v&agrave; c&aacute;c khe h&uacute;t gi&oacute; t???o th&agrave;nh ??i???m nh???n m???nh m???.</p>

<p><strong>Rear</strong></p>

<p><img alt="" src="https://www.audi.vn/content/dam/nemo/models/a4/a4-limousine/my-2020/1920x1080-feature-gallery/1920x1080_AA4_L_191002.jpg?output-format=webp&amp;downsize=1920px:*" style="height:675px; width:1200px" /></p>

<p><strong>Side</strong></p>

<p><strong><img alt="" src="https://www.audi.vn/content/dam/nemo/models/a4/a4-limousine/my-2020/1920x1080-feature-gallery/1920x1080_AA4_L_191002.jpg?output-format=webp&amp;downsize=1920px:*" style="height:1080px; width:1920px" />Front</strong></p>

<p><strong><img alt="" src="https://www.audi.vn/content/dam/nemo/models/a4/a4-limousine/my-2020/1920x1080-feature-gallery/1920x1080_AA4_L_191002.jpg?output-format=webp&amp;downsize=1920px:*" style="height:675px; width:1200px" /></strong></p>

<h2 style="text-align:center"><strong>N???i th???t r???ng r&atilde;i v???i ch???t l?????ng ?????ng c???p</strong></h2>

<p>Trong kh&ocirc;ng gian n???i th???t c???a Audi A4, b???n s??? tr???i nghi???m ???????c m???t kh&ocirc;ng gian r???ng r&atilde;i v???i c&aacute;c y???u t??? ???????c s???p x???p ????? t???i ??u h&oacute;a &aacute;nh s&aacute;ng. C&aacute;c ???????ng vi???n chrome t???o ???n t?????ng m???nh m??? v&agrave; nh???n m???nh chi???u r???ng c???a xe. M???t ng??n ch???a ????? l???n ???????c thi???t k??? tr&ecirc;n ???p trung t&acirc;m mang l???i t&iacute;nh ti???n d???ng cao. &Aacute;nh s&aacute;ng n???i th???t ti&ecirc;u chu???n bao g???m c??? ??&egrave;n ?????c s&aacute;ch ??? h&agrave;ng gh??? tr&ecirc;n. G&oacute;i t&ugrave;y ch???n &aacute;nh n???i th???t m&agrave;u tr???ng l&agrave;m t??ng th&ecirc;m b???u kh&ocirc;ng kh&iacute; d??? ch???u. Ngo&agrave;i ra, Audi A4 c??ng c&oacute; s???n c&aacute;c phi&ecirc;n b???n Audi A4 Advanced v&agrave; S line.</p>

<p><img alt="" src="https://www.audi.vn/dam/nemo/models/a4/a4-limousine/my-2020/1920x1080-inline-media-gallery/1920x1080_AA4_D_191001.jpg?output-format=webp&amp;downsize=1920px:*" style="height:675px; width:1200px" /></p>

<h2 style="text-align:center"><strong>Thi???t l???p xu h?????ng c&ocirc;ng ngh???</strong></h2>

<p>Nh??? kh&aacute;i ni???m v???n h&agrave;nh tr???c quan th&ocirc;ng qua c&aacute;c ch???c n??ng c???m ???ng, Audi A4 ??em l???i m???t tr???i nghi???m s??? d???ng d??? d&agrave;ng th&acirc;n thi???n. Ngo&agrave;i ra b???n c&oacute; th??? l???a ch???n nh???ng t&ugrave;y ch???n c&ocirc;ng ngh??? v??? th&ocirc;ng tin gi???i tr&iacute; nh?? bu???ng l&aacute;i ???o k??? thu???t s??? ???o Audi virtual cockpit. M&agrave;n h&igrave;nh 12.3-inch c???a n&oacute; s??? hi???n th??? r&otilde; r&agrave;ng c&aacute;c th&ocirc;ng tin quan tr???ng v???i ????? ph&acirc;n gi???i Full HD, bao g???m hi???n th??? t???c ????? v&agrave; c&aacute;c th&ocirc;ng s??? v???n h&agrave;nh c???a xe.</p>

<p><img alt="" src="https://www.audi.vn/dam/nemo/models/a4/a4-limousine/my-2020/1920x1080-inline-media-gallery/1920x1080_AA4_D_191002.jpg?output-format=webp&amp;downsize=1766px:*" style="height:675px; width:1200px" /></p>

<h2 style="text-align:center"><strong>?????ng c?? m???nh m???</strong></h2>

<p>Ch&uacute;ng t&ocirc;i ??em ?????n c&aacute;c t&ugrave;y ch???n ?????ng c?? x??ng 2.0 TFSI kh&aacute;c nhau cho Audi A4. B???n c&oacute; th??? ch???n phi&ecirc;n b???n ?????ng c?? x??ng 2.0 - 40 TFSI cho c&ocirc;ng su???t 140 kW (190 m&atilde; l???c) ho???c phi&ecirc;n b???n Audi A4 45 TFSI quattro v???i c&ocirc;ng su???t 180 kW (245 m&atilde; l???c). Phi&ecirc;n b???n sau mang t&iacute;nh c&ocirc;ng ngh??? cao v???i h??? d???n ?????ng b???n b&aacute;nh quattro ???????c k&iacute;ch ho???t ch??? trong v&agrave;i mili-gi&acirc;y khi c&oacute; t&igrave;nh hu???ng l&aacute;i xe y&ecirc;u c???u, ?????m b???o v???n h???nh m???nh m??? v&agrave; n??ng ?????ng. H??? th???ng mild hybrid 12-volts c&ugrave;ng m&aacute;y ph&aacute;t kh???i ?????ng l???i v&agrave; Pin Li-ion cho ph&eacute;p ?????ng c?? c&oacute; th??? t??? ?????ng ng???t trong l&uacute;c v???n h&agrave;nh - ch??? ????? n&agrave;y ???????c g???i l&agrave; ch???y tr??n. ??i???u n&agrave;y gi&uacute;p gi???m m???c ti&ecirc;u th??? nhi&ecirc;n li???u ??&aacute;ng k???.</p>

<p>&sup1; M???c ti&ecirc;u th??? nhi&ecirc;n li???u k???t h???p: A4 40 TFSI 6.0 - 5.8 l&iacute;t / 100 km; A4 45 TFSI quattro 6.8 - 6.5 l&iacute;t / 100 km.</p>

<p><img alt="" src="https://www.audi.vn/dam/nemo/models/a4/a4-limousine/my-2020/1920x1080-inline-media-gallery/1920x1080_AA4_L_191007.jpg?output-format=webp&amp;downsize=1920px:*" style="height:675px; width:1200px" /></p>

<h2 style="text-align:center"><strong>T&iacute;nh n??ng &aacute;nh s&aacute;ng v?????t tr???i</strong></h2>

<p>M???t ??i???m d??? nh???n th???y tr&ecirc;n Audi A4 ch&iacute;nh l&agrave; thi???t k??? &aacute;nh s&aacute;ng t&acirc;n ti???n. ??&egrave;n pha s??? d???ng c&ocirc;ng ngh??? LED ???????c trang b??? ti&ecirc;u chu???n. Ch&uacute;ng ?????m b???o ??em l???i &aacute;nh s&aacute;ng th???t nh?? ban ng&agrave;y khi s??? d???ng. Ngo&agrave;i ra, b???n c&oacute; th??? t&ugrave;y ch???n ??&egrave;n pha LED Matrix v???i hi???u ???ng chi???u s&aacute;ng n??ng ?????ng c&ugrave;ng ??&egrave;n xi nhan ch???y tia n??ng ?????ng. C&ocirc;ng ngh??? LED Matrix k???t h???p v???i h??? th???ng camera c&ugrave;ng ngu???n chi???u s&aacute;ng LED v&agrave; s&aacute;ng quang h???c chu???n x&aacute;c. ??i???u n&agrave;y cho ph&eacute;p h??? th???ng chi???u s&aacute;ng c&oacute; ch???n l???c c&aacute;c ph????ng ti???n ch???y ng?????c chi???u kh&ocirc;ng b??? ch&oacute;i m???t. Khi b???n kh&oacute;a ho???c m??? kh&oacute;a xe, ??&egrave;n pha ph&iacute;a tr?????c s??? cho m???t m&agrave;n tr&igrave;nh di???n &aacute;nh s&aacute;ng ???n t?????ng. C??ng nh?? ??? ph&iacute;a sau, ??&egrave;n h???u LED c??ng c&oacute; m???t m&agrave;n tr&igrave;nh di???n ???n t?????ng k???t h???p ??&egrave;n b&aacute;o r??? ch???y tia n??ng ?????ng.</p>

<p><img alt="" src="https://www.audi.vn/dam/nemo/models/a4/a4-limousine/my-2020/1920x1080-mtc-x-l-16-9/1920x1080_v3_AA4_L_191002.jpg?output-format=webp&amp;downsize=1920px:*" style="height:675px; width:1200px" /></p>

<p>&nbsp;</p>
', 0.05, 1, 0);
INSERT Products (Id, Name, UnitPrice, Image, ProductDate, Available, CategoryId, Quantity, Description, Discount, ViewCount, Special) VALUES (8, N'FORD Ranger XLS 2.2L 4X2 AT', 662000000, N'Ranger.png', CAST(N'2021-12-21' AS Date), 1, 3, 5, N'<h2><strong>Ngo???i th???t</strong></h2>

<figure class="easyimage easyimage-full"><img alt="" src="blob:http://localhost:8080/a9e15068-3504-4cb1-bca5-bd6992971324" style="width:458px" />
<figcaption></figcaption>
</figure>

<h2><strong>Trang B??? Ch&iacute;nh</strong></h2>

<ul>
	<li><strong>?????ng c??</strong>&nbsp;Turbo Diesel 2.2L i4 TDCi; Tr???c cam k&eacute;p, c&oacute; l&agrave;m m&aacute;t kh&iacute; n???p</li>
	<li><strong>C&ocirc;ng su???t c???c ?????i (PS/v&ograve;ng/ph&uacute;t)</strong>&nbsp;160 (118 KW) / 3200</li>
	<li><strong>H??? th???ng truy???n ?????ng</strong>&nbsp;M???t c???u ch??? ?????ng / 4x2</li>
	<li><strong>Kh&oacute;a vi sai c???u sau</strong>&nbsp;Kh&ocirc;ng</li>
	<li><strong>H???p s???</strong>&nbsp;S??? t??? ?????ng 6 c???p</li>
</ul>
', 0.1, 2, 0);
INSERT Products (Id, Name, UnitPrice, Image, ProductDate, Available, CategoryId, Quantity, Description, Discount, ViewCount, Special) VALUES (9, N'BMW 520i ', 1999000000, N'BMW_520i .jpg', CAST(N'2021-02-05' AS Date), 1, 7, 5, N'<p><strong>TH&Ocirc;NG S??? K??? THU???T</strong></p>

<p><a href="https://bmw-vietnam.com.vn/bmw-520i-all-new/"><img alt="BMW 520i ALL NEW" sizes="(max-width: 889px) 100vw, 889px" src="https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/BMW-520i-VN-Event-1-e1566127422621-889x1024.jpg" srcset="https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/BMW-520i-VN-Event-1-e1566127422621-889x1024.jpg 889w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/BMW-520i-VN-Event-1-e1566127422621-260x300.jpg 260w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/BMW-520i-VN-Event-1-e1566127422621-768x885.jpg 768w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/BMW-520i-VN-Event-1-e1566127422621-750x864.jpg 750w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/BMW-520i-VN-Event-1-e1566127422621-1140x1314.jpg 1140w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/BMW-520i-VN-Event-1-e1566127422621.jpg 1654w" style="height:1024px; width:889px" /></a></p>

<p><strong>th&ocirc;ng s??? k??? thu???t c???a xe</strong></p>

<p><a href="https://bmw-vietnam.com.vn/bmw-520i-all-new/"><img alt="BMW 520i ALL NEW" sizes="(max-width: 891px) 100vw, 891px" src="https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/BMW-520i-EN-event-1-e1566127467161-891x1024.jpg" srcset="https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/BMW-520i-EN-event-1-e1566127467161-891x1024.jpg 891w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/BMW-520i-EN-event-1-e1566127467161-261x300.jpg 261w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/BMW-520i-EN-event-1-e1566127467161-768x882.jpg 768w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/BMW-520i-EN-event-1-e1566127467161-750x862.jpg 750w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/BMW-520i-EN-event-1-e1566127467161-1140x1310.jpg 1140w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/BMW-520i-EN-event-1-e1566127467161.jpg 1654w" style="height:1024px; width:891px" /></a></p>

<p><strong>th&ocirc;ng s??? k??? thu???t ti???ng anh</strong></p>

<p><strong>KI???U D&Aacute;NG N???I B???T &ndash; THI???T K??? C???A BMW 520i All New TH??? H??? M???I&nbsp;</strong></p>

<p>L???i tuy&ecirc;n b??? s??? m???nh: &ldquo;Thi???t l???p nh???ng ti&ecirc;u chu???n m???i&rdquo;,&nbsp;<a href="https://bmwcenter.com.vn/bmw-5-series-sedan/"><strong>BMW 5 Series All New</strong></a>&nbsp;l&agrave; hi???n th&acirc;n c???a d&ograve;ng saloon d&agrave;nh cho doanh nh&acirc;n hi???n ?????i. Nh??? v&agrave;o v??? ngo&agrave;i n??ng ?????ng v&agrave; l???ch l&atilde;m, chi???c xe n&agrave;y l&agrave; c&acirc;u tr??? l???i thuy???t ph???c cho nh???ng k??? v???ng ???????c ?????t ra ?????i v???i c&aacute;c d&ograve;ng xe trong c&ugrave;ng ph&acirc;n kh&uacute;c, thi???t k??? th??? thao th???m m??? v&agrave; c???m gi&aacute;c l&aacute;i v?????t tr???i ??i k&egrave;m nh???ng c&ocirc;ng ngh??? ti&ecirc;n ti???n b???c nh???t.</p>

<p><strong>THI???T K??? NGO???I TH???T</strong></p>

<p>So v???i th??? h??? ti???n nhi???m, phong c&aacute;ch thi???t k??? c???a&nbsp;<strong>BMW 520i All New</strong>&nbsp;???????c ??&aacute;nh gi&aacute; l&agrave; &ldquo;ch???t&rdquo; h??n nhi???u. Chi???c&nbsp;<a href="https://bmwcenter.com.vn/bmw-5-series-sedan/"><strong>BMW 5 Series 2019</strong></a>&nbsp;s??? h???u ph???n ?????u xe s???c n&eacute;t, trong khi ph???n th&acirc;n xe to&aacute;t l&ecirc;n v??? g&acirc;n gu???c m???nh m???. N???u nh?? th??? h??? c?? s??? h???u c???u tr&uacute;c tr???ng l?????ng nh???, ?????ng c?? ho???t ?????ng hi???u qu??? v&agrave; h&agrave;ng lo???t c&ocirc;ng ngh??? ti&ecirc;n ti???n, th&igrave; ??? th??? h??? m???i n&agrave;y,&nbsp;<strong>BMW 520i All New</strong>&nbsp;c&ograve;n l&agrave;m ???????c nhi???u h??n th???. Tr???ng l?????ng xe gi???m ?????n 62kg nh??? vi???c ???ng d???ng c&aacute;c v???t li???u nh&ocirc;m, magie v&agrave; th&eacute;p c&oacute; ????? b???n cao. B??? khung g???m m???i, ch???c ch???n, ph&acirc;n b??? tr???ng l?????ng ?????u v&agrave; tr???ng t&acirc;m th???p gi&uacute;p xe c&oacute; tr???i nghi???m l&aacute;i n??ng ?????ng h??n.</p>

<p><a href="https://bmw-vietnam.com.vn/bmw-520i-all-new/"><img alt="" sizes="(max-width: 815px) 100vw, 815px" src="https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530e-iperformance_tds_evox_1_815-e1566128011785.jpg" srcset="https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530e-iperformance_tds_evox_1_815-e1566128011785.jpg 815w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530e-iperformance_tds_evox_1_815-e1566128011785-300x192.jpg 300w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530e-iperformance_tds_evox_1_815-e1566128011785-768x491.jpg 768w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530e-iperformance_tds_evox_1_815-e1566128011785-750x479.jpg 750w" style="height:521px; width:815px" /></a><a href="https://bmw-vietnam.com.vn/bmw-520i-all-new/"><img alt="" sizes="(max-width: 815px) 100vw, 815px" src="https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530e-iperformance_fs_evox_1_815-e1566128066385.jpg" srcset="https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530e-iperformance_fs_evox_1_815-e1566128066385.jpg 815w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530e-iperformance_fs_evox_1_815-e1566128066385-300x194.jpg 300w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530e-iperformance_fs_evox_1_815-e1566128066385-768x497.jpg 768w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530e-iperformance_fs_evox_1_815-e1566128066385-750x485.jpg 750w" style="height:527px; width:815px" /></a><a href="https://bmw-vietnam.com.vn/bmw-520i-all-new/"><img alt="" sizes="(max-width: 815px) 100vw, 815px" src="https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530e-iperformance_tds_evox_7_815-e1566128112589.jpg" srcset="https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530e-iperformance_tds_evox_7_815-e1566128112589.jpg 815w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530e-iperformance_tds_evox_7_815-e1566128112589-300x194.jpg 300w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530e-iperformance_tds_evox_7_815-e1566128112589-768x497.jpg 768w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530e-iperformance_tds_evox_7_815-e1566128112589-750x485.jpg 750w" style="height:527px; width:815px" /></a><a href="https://bmw-vietnam.com.vn/bmw-520i-all-new/"><img alt="" sizes="(max-width: 815px) 100vw, 815px" src="https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530e-iperformance_tds_evox_4_815-e1566128282733.jpg" srcset="https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530e-iperformance_tds_evox_4_815-e1566128282733.jpg 815w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530e-iperformance_tds_evox_4_815-e1566128282733-300x194.jpg 300w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530e-iperformance_tds_evox_4_815-e1566128282733-768x497.jpg 768w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530e-iperformance_tds_evox_4_815-e1566128282733-750x485.jpg 750w" style="height:527px; width:815px" /></a><a href="https://bmw-vietnam.com.vn/bmw-520i-all-new/"><img alt="" sizes="(max-width: 815px) 100vw, 815px" src="https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530e-iperformance_tds_evox_5_815-e1566128424942.jpg" srcset="https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530e-iperformance_tds_evox_5_815-e1566128424942.jpg 815w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530e-iperformance_tds_evox_5_815-e1566128424942-300x193.jpg 300w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530e-iperformance_tds_evox_5_815-e1566128424942-768x495.jpg 768w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530e-iperformance_tds_evox_5_815-e1566128424942-750x483.jpg 750w" style="height:525px; width:815px" /></a><a href="https://bmw-vietnam.com.vn/bmw-520i-all-new/"><img alt="" sizes="(max-width: 815px) 100vw, 815px" src="https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530e-iperformance_tds_evox_6_815-e1566196824714.jpg" srcset="https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530e-iperformance_tds_evox_6_815-e1566196824714.jpg 815w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530e-iperformance_tds_evox_6_815-e1566196824714-300x193.jpg 300w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530e-iperformance_tds_evox_6_815-e1566196824714-768x493.jpg 768w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530e-iperformance_tds_evox_6_815-e1566196824714-750x481.jpg 750w" style="height:523px; width:815px" /></a><a href="https://bmw-vietnam.com.vn/bmw-520i-all-new/"><img alt="" sizes="(max-width: 815px) 100vw, 815px" src="https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530e-iperformance_tds_evox_10_815-e1566196933794.jpg" srcset="https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530e-iperformance_tds_evox_10_815-e1566196933794.jpg 815w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530e-iperformance_tds_evox_10_815-e1566196933794-300x193.jpg 300w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530e-iperformance_tds_evox_10_815-e1566196933794-768x495.jpg 768w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530e-iperformance_tds_evox_10_815-e1566196933794-750x483.jpg 750w" style="height:525px; width:815px" /></a><a href="https://bmw-vietnam.com.vn/bmw-520i-all-new/"><img alt="" sizes="(max-width: 815px) 100vw, 815px" src="https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530e-iperformance_tds_evox_15_815-1-e1566196985958.jpg" srcset="https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530e-iperformance_tds_evox_15_815-1-e1566196985958.jpg 815w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530e-iperformance_tds_evox_15_815-1-e1566196985958-300x193.jpg 300w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530e-iperformance_tds_evox_15_815-1-e1566196985958-768x493.jpg 768w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530e-iperformance_tds_evox_15_815-1-e1566196985958-750x481.jpg 750w" style="height:523px; width:815px" /></a><a href="https://bmw-vietnam.com.vn/bmw-520i-all-new/"><img alt="" sizes="(max-width: 815px) 100vw, 815px" src="https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530i_tds2_evox_2_815-e1566197038344.jpg" srcset="https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530i_tds2_evox_2_815-e1566197038344.jpg 815w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530i_tds2_evox_2_815-e1566197038344-300x193.jpg 300w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530i_tds2_evox_2_815-e1566197038344-768x495.jpg 768w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530i_tds2_evox_2_815-e1566197038344-750x483.jpg 750w" style="height:525px; width:815px" /></a><a href="https://bmw-vietnam.com.vn/bmw-520i-all-new/"><img alt="" sizes="(max-width: 815px) 100vw, 815px" src="https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530i_tds2_evox_3_815-e1566197079359.jpg" srcset="https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530i_tds2_evox_3_815-e1566197079359.jpg 815w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530i_tds2_evox_3_815-e1566197079359-300x193.jpg 300w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530i_tds2_evox_3_815-e1566197079359-768x493.jpg 768w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530i_tds2_evox_3_815-e1566197079359-750x481.jpg 750w" style="height:523px; width:815px" /></a><a href="https://bmw-vietnam.com.vn/bmw-520i-all-new/"><img alt="" sizes="(max-width: 815px) 100vw, 815px" src="https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530i_tds2_evox_4_815-e1566197121959.jpg" srcset="https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530i_tds2_evox_4_815-e1566197121959.jpg 815w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530i_tds2_evox_4_815-e1566197121959-300x193.jpg 300w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530i_tds2_evox_4_815-e1566197121959-768x493.jpg 768w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530i_tds2_evox_4_815-e1566197121959-750x481.jpg 750w" style="height:523px; width:815px" /></a><a href="https://bmw-vietnam.com.vn/bmw-520i-all-new/"><img alt="" sizes="(max-width: 815px) 100vw, 815px" src="https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530i_tds2_evox_6_815-e1566197226933.jpg" srcset="https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530i_tds2_evox_6_815-e1566197226933.jpg 815w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530i_tds2_evox_6_815-e1566197226933-300x194.jpg 300w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530i_tds2_evox_6_815-e1566197226933-768x497.jpg 768w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530i_tds2_evox_6_815-e1566197226933-750x485.jpg 750w" style="height:527px; width:815px" /></a><a href="https://bmw-vietnam.com.vn/bmw-520i-all-new/"><img alt="" sizes="(max-width: 815px) 100vw, 815px" src="https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530i_tds2_evox_8_815-e1566197277328.jpg" srcset="https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530i_tds2_evox_8_815-e1566197277328.jpg 815w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530i_tds2_evox_8_815-e1566197277328-300x194.jpg 300w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530i_tds2_evox_8_815-e1566197277328-768x497.jpg 768w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530i_tds2_evox_8_815-e1566197277328-750x485.jpg 750w" style="height:527px; width:815px" /></a><a href="https://bmw-vietnam.com.vn/bmw-520i-all-new/"><img alt="" sizes="(max-width: 815px) 100vw, 815px" src="https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530i_tds2_evox_11_815-1-e1566197347923.jpg" srcset="https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530i_tds2_evox_11_815-1-e1566197347923.jpg 815w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530i_tds2_evox_11_815-1-e1566197347923-300x193.jpg 300w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530i_tds2_evox_11_815-1-e1566197347923-768x495.jpg 768w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530i_tds2_evox_11_815-1-e1566197347923-750x483.jpg 750w" style="height:525px; width:815px" /></a><a href="https://bmw-vietnam.com.vn/bmw-520i-all-new/"><img alt="" sizes="(max-width: 815px) 100vw, 815px" src="https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530i_tds3_evox_2_815-e1566197436973.jpg" srcset="https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530i_tds3_evox_2_815-e1566197436973.jpg 815w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530i_tds3_evox_2_815-e1566197436973-300x193.jpg 300w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530i_tds3_evox_2_815-e1566197436973-768x495.jpg 768w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530i_tds3_evox_2_815-e1566197436973-750x483.jpg 750w" style="height:525px; width:815px" /></a><a href="https://bmw-vietnam.com.vn/bmw-520i-all-new/"><img alt="" sizes="(max-width: 815px) 100vw, 815px" src="https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530i_tds3_evox_1_815-e1566197479603.jpg" srcset="https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530i_tds3_evox_1_815-e1566197479603.jpg 815w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530i_tds3_evox_1_815-e1566197479603-300x194.jpg 300w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530i_tds3_evox_1_815-e1566197479603-768x497.jpg 768w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530i_tds3_evox_1_815-e1566197479603-750x485.jpg 750w" style="height:527px; width:815px" /></a><a href="https://bmw-vietnam.com.vn/bmw-520i-all-new/"><img alt="" sizes="(max-width: 815px) 100vw, 815px" src="https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530i_tds3_evox_5_815-e1566197590448.jpg" srcset="https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530i_tds3_evox_5_815-e1566197590448.jpg 815w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530i_tds3_evox_5_815-e1566197590448-300x193.jpg 300w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530i_tds3_evox_5_815-e1566197590448-768x493.jpg 768w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530i_tds3_evox_5_815-e1566197590448-750x481.jpg 750w" style="height:523px; width:815px" /></a><a href="https://bmw-vietnam.com.vn/bmw-520i-all-new/"><img alt="" sizes="(max-width: 815px) 100vw, 815px" src="https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530i_tds3_evox_8_815-e1566197637717.jpg" srcset="https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530i_tds3_evox_8_815-e1566197637717.jpg 815w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530i_tds3_evox_8_815-e1566197637717-300x194.jpg 300w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530i_tds3_evox_8_815-e1566197637717-768x497.jpg 768w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530i_tds3_evox_8_815-e1566197637717-750x485.jpg 750w" style="height:527px; width:815px" /></a><a href="https://bmw-vietnam.com.vn/bmw-520i-all-new/"><img alt="" sizes="(max-width: 815px) 100vw, 815px" src="https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2019_bmw_5-series_sedan_530e-xdrive-iperformance_gr_evox_1_815-e1566197689950.jpg" srcset="https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2019_bmw_5-series_sedan_530e-xdrive-iperformance_gr_evox_1_815-e1566197689950.jpg 815w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2019_bmw_5-series_sedan_530e-xdrive-iperformance_gr_evox_1_815-e1566197689950-300x195.jpg 300w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2019_bmw_5-series_sedan_530e-xdrive-iperformance_gr_evox_1_815-e1566197689950-768x500.jpg 768w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2019_bmw_5-series_sedan_530e-xdrive-iperformance_gr_evox_1_815-e1566197689950-750x489.jpg 750w" style="height:531px; width:815px" /></a><a href="https://bmw-vietnam.com.vn/bmw-520i-all-new/"><img alt="" sizes="(max-width: 815px) 100vw, 815px" src="https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2019_bmw_5-series_sedan_530e-xdrive-iperformance_hl_evox_1_815-e1566197735354.jpg" srcset="https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2019_bmw_5-series_sedan_530e-xdrive-iperformance_hl_evox_1_815-e1566197735354.jpg 815w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2019_bmw_5-series_sedan_530e-xdrive-iperformance_hl_evox_1_815-e1566197735354-300x194.jpg 300w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2019_bmw_5-series_sedan_530e-xdrive-iperformance_hl_evox_1_815-e1566197735354-768x497.jpg 768w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2019_bmw_5-series_sedan_530e-xdrive-iperformance_hl_evox_1_815-e1566197735354-750x485.jpg 750w" style="height:527px; width:815px" /></a></p>

<p><strong>THI???T K??? N???I TH???T</strong></p>

<p>N???i th???t c???a BMW 5 Series 2019 th??? hi???n r&otilde; hai ti&ecirc;u ch&iacute; ch??? ?????o l&agrave; hi???n ?????i v&agrave; tinh t???. C&aacute;c chuy&ecirc;n gia ??&aacute;nh gi&aacute; cao khoang cabin c???a 5 Series m???i nh??? gh??? ng???i cao c???p, s??? y&ecirc;n t??nh v&agrave; h&agrave;ng lo???t t&iacute;nh n??ng hi???n ?????i c&ugrave;ng kh&ocirc;ng gian r???ng r&atilde;i.</p>

<p><a href="https://bmw-vietnam.com.vn/bmw-520i-all-new/"><img alt="" sizes="(max-width: 1024px) 100vw, 1024px" src="https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2017-bmw-5-series-interior-1024x684.jpg" srcset="https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2017-bmw-5-series-interior-1024x684.jpg 1024w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2017-bmw-5-series-interior-300x200.jpg 300w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2017-bmw-5-series-interior-768x513.jpg 768w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2017-bmw-5-series-interior-750x501.jpg 750w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2017-bmw-5-series-interior-1140x761.jpg 1140w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2017-bmw-5-series-interior.jpg 1280w" style="height:684px; width:1024px" /></a><a href="https://bmw-vietnam.com.vn/bmw-520i-all-new/"><img alt="" sizes="(max-width: 815px) 100vw, 815px" src="https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530e-iperformance_ip_evox_1_815-e1566198136759.jpg" srcset="https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530e-iperformance_ip_evox_1_815-e1566198136759.jpg 815w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530e-iperformance_ip_evox_1_815-e1566198136759-300x193.jpg 300w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530e-iperformance_ip_evox_1_815-e1566198136759-768x495.jpg 768w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530e-iperformance_ip_evox_1_815-e1566198136759-750x483.jpg 750w" style="height:525px; width:815px" /></a><a href="https://bmw-vietnam.com.vn/bmw-520i-all-new/"><img alt="" sizes="(max-width: 815px) 100vw, 815px" src="https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2019_bmw_5-series_sedan_530e-xdrive-iperformance_ch_evox_1_815-e1566198180560.jpg" srcset="https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2019_bmw_5-series_sedan_530e-xdrive-iperformance_ch_evox_1_815-e1566198180560.jpg 815w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2019_bmw_5-series_sedan_530e-xdrive-iperformance_ch_evox_1_815-e1566198180560-300x194.jpg 300w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2019_bmw_5-series_sedan_530e-xdrive-iperformance_ch_evox_1_815-e1566198180560-768x497.jpg 768w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2019_bmw_5-series_sedan_530e-xdrive-iperformance_ch_evox_1_815-e1566198180560-750x485.jpg 750w" style="height:527px; width:815px" /></a><a href="https://bmw-vietnam.com.vn/bmw-520i-all-new/"><img alt="" sizes="(max-width: 815px) 100vw, 815px" src="https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530e-iperformance_cccl_evox_1_815-e1566198224112.jpg" srcset="https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530e-iperformance_cccl_evox_1_815-e1566198224112.jpg 815w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530e-iperformance_cccl_evox_1_815-e1566198224112-300x193.jpg 300w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530e-iperformance_cccl_evox_1_815-e1566198224112-768x495.jpg 768w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530e-iperformance_cccl_evox_1_815-e1566198224112-750x483.jpg 750w" style="height:525px; width:815px" /></a><a href="https://bmw-vietnam.com.vn/bmw-520i-all-new/"><img alt="" sizes="(max-width: 815px) 100vw, 815px" src="https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530e-iperformance_ib2_evox_1_815-e1566198267869.jpg" srcset="https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530e-iperformance_ib2_evox_1_815-e1566198267869.jpg 815w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530e-iperformance_ib2_evox_1_815-e1566198267869-300x194.jpg 300w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530e-iperformance_ib2_evox_1_815-e1566198267869-768x497.jpg 768w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530e-iperformance_ib2_evox_1_815-e1566198267869-750x485.jpg 750w" style="height:527px; width:815px" /></a><a href="https://bmw-vietnam.com.vn/bmw-520i-all-new/"><img alt="" sizes="(max-width: 815px) 100vw, 815px" src="https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2019_bmw_5-series_sedan_530e-xdrive-iperformance_ch4_evox_1_815-e1566198314344.jpg" srcset="https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2019_bmw_5-series_sedan_530e-xdrive-iperformance_ch4_evox_1_815-e1566198314344.jpg 815w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2019_bmw_5-series_sedan_530e-xdrive-iperformance_ch4_evox_1_815-e1566198314344-300x194.jpg 300w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2019_bmw_5-series_sedan_530e-xdrive-iperformance_ch4_evox_1_815-e1566198314344-768x497.jpg 768w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2019_bmw_5-series_sedan_530e-xdrive-iperformance_ch4_evox_1_815-e1566198314344-750x485.jpg 750w" style="height:527px; width:815px" /></a><a href="https://bmw-vietnam.com.vn/bmw-520i-all-new/"><img alt="" sizes="(max-width: 815px) 100vw, 815px" src="https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2019_bmw_5-series_sedan_530e-xdrive-iperformance_dtw_evox_1_815-e1566198360425.jpg" srcset="https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2019_bmw_5-series_sedan_530e-xdrive-iperformance_dtw_evox_1_815-e1566198360425.jpg 815w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2019_bmw_5-series_sedan_530e-xdrive-iperformance_dtw_evox_1_815-e1566198360425-300x195.jpg 300w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2019_bmw_5-series_sedan_530e-xdrive-iperformance_dtw_evox_1_815-e1566198360425-768x498.jpg 768w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2019_bmw_5-series_sedan_530e-xdrive-iperformance_dtw_evox_1_815-e1566198360425-750x487.jpg 750w" style="height:529px; width:815px" /></a><a href="https://bmw-vietnam.com.vn/bmw-520i-all-new/"><img alt="" sizes="(max-width: 815px) 100vw, 815px" src="https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2019_bmw_5-series_sedan_530e-xdrive-iperformance_rcc_evox_1_815-e1566198437615.jpg" srcset="https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2019_bmw_5-series_sedan_530e-xdrive-iperformance_rcc_evox_1_815-e1566198437615.jpg 815w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2019_bmw_5-series_sedan_530e-xdrive-iperformance_rcc_evox_1_815-e1566198437615-300x193.jpg 300w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2019_bmw_5-series_sedan_530e-xdrive-iperformance_rcc_evox_1_815-e1566198437615-768x495.jpg 768w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2019_bmw_5-series_sedan_530e-xdrive-iperformance_rcc_evox_1_815-e1566198437615-750x483.jpg 750w" style="height:525px; width:815px" /></a><a href="https://bmw-vietnam.com.vn/bmw-520i-all-new/"><img alt="" sizes="(max-width: 815px) 100vw, 815px" src="https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530e-iperformance_rps_evox_1_815-e1566198604817.jpg" srcset="https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530e-iperformance_rps_evox_1_815-e1566198604817.jpg 815w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530e-iperformance_rps_evox_1_815-e1566198604817-300x194.jpg 300w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530e-iperformance_rps_evox_1_815-e1566198604817-768x497.jpg 768w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530e-iperformance_rps_evox_1_815-e1566198604817-750x485.jpg 750w" style="height:527px; width:815px" /></a><a href="https://bmw-vietnam.com.vn/bmw-520i-all-new/"><img alt="" sizes="(max-width: 840px) 100vw, 840px" src="https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2019-bmw-5-series-sedan-rear-passenger-seats-carbuzz-338360-840x560.jpg" srcset="https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2019-bmw-5-series-sedan-rear-passenger-seats-carbuzz-338360-840x560.jpg 840w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2019-bmw-5-series-sedan-rear-passenger-seats-carbuzz-338360-840x560-300x200.jpg 300w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2019-bmw-5-series-sedan-rear-passenger-seats-carbuzz-338360-840x560-768x512.jpg 768w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2019-bmw-5-series-sedan-rear-passenger-seats-carbuzz-338360-840x560-750x500.jpg 750w" style="height:560px; width:840px" /></a><a href="https://bmw-vietnam.com.vn/bmw-520i-all-new/"><img alt="" sizes="(max-width: 815px) 100vw, 815px" src="https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530e-iperformance_ca_evox_1_815-e1566199422425.jpg" srcset="https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530e-iperformance_ca_evox_1_815-e1566199422425.jpg 815w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530e-iperformance_ca_evox_1_815-e1566199422425-300x195.jpg 300w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530e-iperformance_ca_evox_1_815-e1566199422425-768x498.jpg 768w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2018_bmw_5-series_sedan_530e-iperformance_ca_evox_1_815-e1566199422425-750x487.jpg 750w" style="height:529px; width:815px" /></a><a href="https://bmw-vietnam.com.vn/bmw-520i-all-new/"><img alt="" sizes="(max-width: 815px) 100vw, 815px" src="https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2019_bmw_5-series_sedan_530e-xdrive-iperformance_tp_evox_1_815-e1566199471796.jpg" srcset="https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2019_bmw_5-series_sedan_530e-xdrive-iperformance_tp_evox_1_815-e1566199471796.jpg 815w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2019_bmw_5-series_sedan_530e-xdrive-iperformance_tp_evox_1_815-e1566199471796-300x196.jpg 300w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2019_bmw_5-series_sedan_530e-xdrive-iperformance_tp_evox_1_815-e1566199471796-768x502.jpg 768w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2019_bmw_5-series_sedan_530e-xdrive-iperformance_tp_evox_1_815-e1566199471796-750x490.jpg 750w" style="height:533px; width:815px" /></a><a href="https://bmw-vietnam.com.vn/bmw-520i-all-new/"><img alt="" sizes="(max-width: 815px) 100vw, 815px" src="https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2019_bmw_5-series_sedan_m550i-xdrive_tp_evox_1_815-e1566199525540.jpg" srcset="https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2019_bmw_5-series_sedan_m550i-xdrive_tp_evox_1_815-e1566199525540.jpg 815w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2019_bmw_5-series_sedan_m550i-xdrive_tp_evox_1_815-e1566199525540-300x195.jpg 300w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2019_bmw_5-series_sedan_m550i-xdrive_tp_evox_1_815-e1566199525540-768x498.jpg 768w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/2019_bmw_5-series_sedan_m550i-xdrive_tp_evox_1_815-e1566199525540-750x487.jpg 750w" style="height:529px; width:815px" /></a></p>

<p><strong>THI???T K??? ?????NG C??</strong></p>

<p>&nbsp;</p>

<p><a href="https://bmw-vietnam.com.vn/bmw-520i-all-new/"><img alt="" sizes="(max-width: 1024px) 100vw, 1024px" src="https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/bmw-520i.png1_-1024x683.jpg" srcset="https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/bmw-520i.png1_-1024x683.jpg 1024w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/bmw-520i.png1_-300x200.jpg 300w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/bmw-520i.png1_-768x512.jpg 768w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/bmw-520i.png1_-750x500.jpg 750w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/bmw-520i.png1_-1140x760.jpg 1140w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/bmw-520i.png1_.jpg 1500w" style="height:683px; width:1024px" /></a><a href="https://bmw-vietnam.com.vn/bmw-520i-all-new/"><img alt="" sizes="(max-width: 750px) 100vw, 750px" src="https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/dong-co-tang-ap-kep-2.jpg" srcset="https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/dong-co-tang-ap-kep-2.jpg 750w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/dong-co-tang-ap-kep-2-300x169.jpg 300w" style="height:422px; width:750px" /></a><a href="https://bmw-vietnam.com.vn/bmw-520i-all-new/"><img alt="" sizes="(max-width: 750px) 100vw, 750px" src="https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/bmw-520i.png3_.jpg" srcset="https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/bmw-520i.png3_.jpg 750w, https://bmw-vietnam.com.vn/wp-content/uploads/2019/08/bmw-520i.png3_-300x225.jpg 300w" style="height:563px; width:750px" /></a></p>

<p>&nbsp;</p>

<p>&nbsp;</p>
', 0.2, 2, 0);
INSERT Products (Id, Name, UnitPrice, Image, ProductDate, Available, CategoryId, Quantity, Description, Discount, ViewCount, Special) VALUES (10, N'KIA New Morning', 439000000, N'cover.jpg', CAST(N'2021-07-18' AS Date), 1, 10, 10, N'<h1><img alt="" src="https://kiavietnam.com.vn/storage/product/new-kiamorning/san-pham/01-1.jpg" style="height:1069px; width:1200px" /></h1>

<h1><strong>New Morning</strong></h1>

<h2><strong>Phong c&aacute;ch thi???t k??? ho&agrave;n to&agrave;n m???i</strong></h2>

<p>Nh???n m???nh t&iacute;nh th??? thao, ki???u d&aacute;ng th???i trang v&agrave; k&iacute;ch th?????c t???i ??u</p>

<h2><strong>NGO???I TH???T</strong></h2>

<p>M???t tr?????c</p>

<p><img alt="" src="https://kiavietnam.com.vn/storage/product/new-kiamorning/san-pham/kvd5174-optimized.jpg" style="height:801px; width:1200px" /></p>

<p>M???t sau</p>

<p><img alt="" src="https://kiavietnam.com.vn/storage/product/new-kiamorning/san-pham/kvd5097-optimized.jpg" style="height:801px; width:1200px" /></p>

<h2><strong>N???i th???t GT LINE</strong></h2>

<p><strong><img alt="" src="https://kiavietnam.com.vn/storage/product/new-kiamorning/san-pham/gt-line-fullseat-optimized.jpg" style="height:675px; width:1200px" /></strong></p>

<p><strong>M&agrave;n h&igrave;nh c???m ???ng trung t&acirc;m 8&#39;&#39; ?????t n???i</strong></p>

<p><strong><img alt="" src="https://kiavietnam.com.vn/storage/product/new-kiamorning/san-pham/noi-that/2.jpg" style="height:674px; width:1200px" />M&agrave;n h&igrave;nh ??a th&ocirc;ng tin LCD 4.2</strong></p>

<p><strong><img alt="" src="https://kiavietnam.com.vn/storage/product/new-kiamorning/san-pham/noi-that/1.jpg" style="height:674px; width:1200px" />H??? th???ng ??i???u h&ograve;a t??? ?????ng</strong></p>

<p><strong><img alt="" src="https://kiavietnam.com.vn/storage/product/new-kiamorning/san-pham/noi-that/image2-large.jpg" style="height:675px; width:1200px" />B??? t??? tay trung t&acirc;m</strong></p>

<p><img alt="" src="https://kiavietnam.com.vn/storage/product/new-kiamorning/san-pham/noi-that/3-1.jpg" style="height:674px; width:1200px" /></p>

<h4><a href="https://kiavietnam.com.vn/chi-tiet-san-pham/new-morning/thong-so-ky-thuat#kich-thuoc-trong-luong">K&Iacute;CH TH?????C - TR???NG L?????NG</a></h4>

<table>
	<tbody>
		<tr>
			<th scope="row">K&iacute;ch th?????c t???ng th??? (DxRxC) / Overall dimensions</th>
			<td>3,595 x1,595x1,485</td>
		</tr>
		<tr>
			<th scope="row">Chi???u d&agrave;i c?? s??? / Wheel base</th>
			<td>2400</td>
		</tr>
		<tr>
			<th scope="row">Kho???ng s&aacute;ng g???m xe / Minimum ground clearance</th>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<th scope="row">B&aacute;n k&iacute;nh quay v&ograve;ng / Minimum turning radius</th>
			<td>4700</td>
		</tr>
		<tr>
			<th scope="row">Tr???ng l?????ng Kh&ocirc;ng t???i / Weight curb</th>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<th scope="row">Tr???ng l?????ng To&agrave;n t???i / Weight gross</th>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<th scope="row">Dung t&iacute;ch th&ugrave;ng nhi&ecirc;n li???u / Fuel tank capacity</th>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<th scope="row">S??? ch??? ng???i / Seat capacity</th>
			<td>4</td>
		</tr>
	</tbody>
</table>

<h4><a href="https://kiavietnam.com.vn/chi-tiet-san-pham/new-morning/thong-so-ky-thuat#dong-co-hop-so">?????NG C?? - H???P S???</a></h4>

<table>
	<tbody>
		<tr>
			<th scope="row">Ki???u / Model</th>
			<td>X??ng,1.25L- 83 Hp</td>
		</tr>
		<tr>
			<th scope="row">Lo???i / Type</th>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<th scope="row">Dung t&iacute;ch xi lanh / Displacement</th>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<th scope="row">C&ocirc;ng su???t c???c ?????i / Max. power</th>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<th scope="row">M&ocirc; men xo???n c???c ?????i / Max. torque</th>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<th scope="row">H???p s??? / Transmission</th>
			<td>4AT</td>
		</tr>
		<tr>
			<th scope="row">D???n ?????ng / Wheel drive</th>
			<td>&nbsp;</td>
		</tr>
	</tbody>
</table>

<h4><a href="https://kiavietnam.com.vn/chi-tiet-san-pham/new-morning/thong-so-ky-thuat#khung-gam">KHUNG G&Acirc;??M</a></h4>

<table>
	<tbody>
		<tr>
			<th scope="row">H??? th???ng treo tr?????c /Suspension front</th>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<th scope="row">H??? th???ng treo sau/Suspension rear</th>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<th scope="row">H??? th???ng phanh tr?????c / Brakes System Front</th>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<th scope="row">H??? th???ng phanh sau / Brakes System Rear</th>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<th scope="row">Phanh d???ng / Parking Brake</th>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<th scope="row">C?? c???u l&aacute;i / Power Steering</th>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<th scope="row">L???p xe / Tires</th>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<th scope="row">M&acirc;m xe / Wheel</th>
			<td>M&acirc;m ??&uacute;c 15&rsquo;&rsquo;</td>
		</tr>
	</tbody>
</table>

<h4><a href="https://kiavietnam.com.vn/chi-tiet-san-pham/new-morning/thong-so-ky-thuat#ngoai-that">NGOA??I TH&Acirc;??T</a></h4>

<table>
	<tbody>
		<tr>
			<th scope="row">??&egrave;n pha Full LED ??i???u ch???nh theo g&oacute;c l&aacute;i / Full LED headlamps with AFLS (Adaptive Front Lighting System)</th>
			<td>Halogen Projector</td>
		</tr>
		<tr>
			<th scope="row">??&egrave;n pha t??? ?????ng / Auto headlamps</th>
			<td>-</td>
		</tr>
		<tr>
			<th scope="row">H??? th???ng r???a ??&egrave;n pha / Headlamp washers</th>
			<td>-</td>
		</tr>
		<tr>
			<th scope="row">??&egrave;n LED ch???y ban ng&agrave;y / LED daytime running lights</th>
			<td>C&oacute;</td>
		</tr>
		<tr>
			<th scope="row">C???m ??&egrave;n sau d???ng LED / LED rear combination lamps</th>
			<td>C&oacute;</td>
		</tr>
		<tr>
			<th scope="row">??&egrave;n s????ng m&ugrave; d???ng LED / LED Front fog lamps</th>
			<td>Halogen Projector</td>
		</tr>
		<tr>
			<th scope="row">??&egrave;n phanh l???p tr&ecirc;n cao / Hight Mounted Stop Lamp (HMSL)</th>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<th scope="row">Vi???n c???a k&iacute;nh m??? Cr&ocirc;m / Belt-line chrome</th>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<th scope="row">Tay n???m c???a m??? Cr&ocirc;m / Chrome belt-line</th>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<th scope="row">N???p c???p sau m??? Cr&ocirc;m / Chrome rear garnish</th>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<th scope="row">G???t m??a t??? ?????ng / Automatic wipers</th>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<th scope="row">??&egrave;n ch&agrave;o / Welcome light</th>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<th scope="row">G????ng chi???u h???u ngo&agrave;i ch???nh ??i???n, g???p ??i???n, s???y, t&iacute;ch h???p ??&egrave;n b&aacute;o r??? / Electrically adjustable,heated, retractable outer mirror with LED repeated lamp</th>
			<td>S???y/G???p ??i???n</td>
		</tr>
		<tr>
			<th scope="row">G????ng chi???u h???u nh??? v??? tr&iacute;/ Integrated memory outside mirror position</th>
			<td>&nbsp;</td>
		</tr>
	</tbody>
</table>

<h4><a href="https://kiavietnam.com.vn/chi-tiet-san-pham/new-morning/thong-so-ky-thuat#noi-that">N???I TH???T</a></h4>

<table>
	<tbody>
		<tr>
			<th scope="row">K&iacute;nh c&aacute;ch &acirc;m, c&aacute;ch nhi???t / Solar, Acoustic laminated glass</th>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<th scope="row">K&iacute;nh sau t???i m&agrave;u / Privacy rear glass</th>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<th scope="row">Tr???n xe b???c da l???n / Chamude Suede roof trim</th>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<th scope="row">Tay l&aacute;i b???c da / Leather steering wheel</th>
			<td>C&oacute;</td>
		</tr>
		<tr>
			<th scope="row">Tay l&aacute;i t&iacute;ch h???p ??i???u khi???n &acirc;m thanh / Steering wheel with audio remote control</th>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<th scope="row">Ch??? ????? ??i???n tho???i r???nh tay / Handsfree phone</th>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<th scope="row">C???n s??? ??i???n t??? SBW / SBW type Gear Knob</th>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<th scope="row">M&agrave;n h&igrave;nh hi???n th??? tr&ecirc;n k&iacute;nh HUD/ Head Up Display</th>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<th scope="row">Tay l&aacute;i ??i???u ch???nh b???ng ??i???n 4 h?????ng nh??? v??? tr&iacute; / Electric tilt &amp; telescopic steering wheel with Integrated Memory</th>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<th scope="row">Gh??? l&aacute;i ch???nh ??i???n t&iacute;ch h???p nh??? v??? tr&iacute; / Power integrated memory system driver&#39;s seat</th>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<th scope="row">Gh??? ph??? ch???nh ??i???n t&iacute;ch h???p nh??? v??? tr&iacute; / Power integrated memory system front passenger&#39;s seat</th>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<th scope="row">H&agrave;ng gh??? sau ??i???u ch???nh ??i???n t&iacute;ch h???p ?????m l??ng / Power rear seat with lumbar support</th>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<th scope="row">M&agrave;n h&igrave;nh hi???n th??? ??a th&ocirc;ng tin LCD 12.3 inch / Full TFT LCD 12.3&quot;</th>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<th scope="row">DVD,MP3,USB,AUX,Radio</th>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<th scope="row">H??? th???ng loa Hi-end LEXICON 17 loa / LEXICON Hi- end System sound with 17 speakers</th>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<th scope="row">H??? th???ng gi???i tr&iacute; h&agrave;ng gh??? sau cao c???p / Premium rear seat entertainment system</th>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<th scope="row">T???a tay h&agrave;ng gh??? sau t&iacute;ch h???p ??i???u ch???nh &acirc;m thanh v&agrave; ??i???u ho&agrave; / Rear armlest with audio and air condition remote control</th>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<th scope="row">S???y k&iacute;nh tr?????c - sau / Power mirror heated - front / rear</th>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<th scope="row">??i???u h&ograve;a t??? ?????ng 3 v&ugrave;ng ?????c l???p / Triple zone Auto air conditioner</th>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<th scope="row">H??? th???ng l???c kh&iacute; b???ng ion / Clean air system</th>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<th scope="row">H??? th???ng s?????i v&agrave; l&agrave;m m&aacute;t h&agrave;ng gh??? tr?????c - sau / Heated, Ventilated (Cooling) front - rear seats</th>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<th scope="row">C???a gi&oacute; h&agrave;ng gh??? ph&iacute;a sau / Rear air vent</th>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<th scope="row">C???a s??? ch???nh ??i???n ch???ng k???t/ All power safety window</th>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<th scope="row">G????ng chi???u h???u trong ch???ng ch&oacute;i ECM / Electric Chromic Mirror</th>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<th scope="row">C???a s??? tr???i to&agrave;n c???nh / Panoramic Sunroof</th>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<th scope="row">R&egrave;m che n???ng c???a sau ch???nh ??i???n/ Power rear sunshade</th>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<th scope="row">R&egrave;m che n???ng h&agrave;ng gh??? sau / Rear curtain</th>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<th scope="row">Gh??? b???c Da Nappa / Nappa leather seat</th>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<th scope="row">C???a h&iacute;t t??? ?????ng / Power door latch</th>
			<td>&nbsp;</td>
		</tr>
	</tbody>
</table>

<h4><a href="https://kiavietnam.com.vn/chi-tiet-san-pham/new-morning/thong-so-ky-thuat#an-toan">AN TOA??N</a></h4>

<table>
	<tbody>
		<tr>
			<th scope="row">H??? th???ng ch???ng b&oacute; c???ng phanh ABS / Anti-lock brake system</th>
			<td>C&oacute;</td>
		</tr>
		<tr>
			<th scope="row">H??? th???ng ph&acirc;n ph???i l???c phanh ??i???n t??? EBD / Electronic brake-force distribution</th>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<th scope="row">H??? th???ng h??? tr??? l???c phanh kh???n c???p / Brake assist</th>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<th scope="row">H??? th???ng c&acirc;n b???ng ??i???n t??? ESP cao c???p / Premium electronic stability program</th>
			<td>C&oacute;</td>
		</tr>
		<tr>
			<th scope="row">H??? th???ng ???n ?????nh th&acirc;n xe c???i ti???n AVSM / Advanced Vehicle Safety Management</th>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<th scope="row">H??? th???ng ga t??? ?????ng th&ocirc;ng minh ASCC / Advance smart cruise control</th>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<th scope="row">Phanh tay ??i???n t??? / Electric Parking Brake (EPB)</th>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<th scope="row">H??? th???ng n&acirc;ng g???m ??i???n t??? / Electronic controlled suspension</th>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<th scope="row">4 ch??? ????? v???n h&agrave;nh th&ocirc;ng minh / Smart Drive Mode Select (Sport/Normal/Comfort &amp; Snow)</th>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<th scope="row">Ch&igrave;a kho&aacute; th&ocirc;ng minh kh???i ?????ng b???ng n&uacute;t nh???n / Smat key with start stop button</th>
			<td>C&oacute;</td>
		</tr>
		<tr>
			<th scope="row">H??? th???ng ch???ng tr???m / Burglar alarm</th>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<th scope="row">Ch???ng sao ch&eacute;p ch&igrave;a kh&oacute;a / Immobilizer</th>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<th scope="row">D&acirc;y ??ai an to&agrave;n c&aacute;c h&agrave;ng gh??? / All row seat belts</th>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<th scope="row">T&uacute;i kh&iacute; / Airbags</th>
			<td>2</td>
		</tr>
		<tr>
			<th scope="row">Kh&oacute;a c???a trung t&acirc;m / Central door lock</th>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<th scope="row">Kh&oacute;a c???a t??? ?????ng theo t???c ????? / Speed sensing auto door lock</th>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<th scope="row">C???nh b&aacute;o ??i???m m&ugrave; BSD / Blind Spot Detect</th>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<th scope="row">C???m bi???n h??? tr??? ????? xe tr?????c sau / Front- Rear parking sensors</th>
			<td>C???m bi???n v&agrave; camera sau l&ugrave;i</td>
		</tr>
		<tr>
			<th scope="row">Camera 360 ????? / Around view camera</th>
			<td>&nbsp;</td>
		</tr>
	</tbody>
</table>

<h4><a href="https://kiavietnam.com.vn/chi-tiet-san-pham/new-morning/thong-so-ky-thuat#muc-tieu-thu-nhien-lieu-l100km">M???C TI&Ecirc;U TH??? NHI&Ecirc;N LI???U (L/100KM)</a></h4>

<table>
	<tbody>
		<tr>
			<th>K???t h???p</th>
			<th>Trong ??&ocirc; th???</th>
			<th>Ngo&agrave;i ??&ocirc; th???</th>
		</tr>
		<tr>
			<th>5.82</th>
			<th>7.74</th>
			<th>4.68</th>
		</tr>
	</tbody>
</table>
', 0, 6, 1);
INSERT Products (Id, Name, UnitPrice, Image, ProductDate, Available, CategoryId, Quantity, Description, Discount, ViewCount, Special) VALUES (12, N'K??nh H2C inox t??nh ??i???n ??en cho Yamaha', 110000, N'01.jpg', CAST(N'2021-09-11' AS Date), 1, 12, 100, N'<p><strong>K&iacute;nh H2C inox t??nh ??i???n m&agrave;u ??en d&agrave;nh cho Yamaha</strong>, k&iacute;nh ???????c gia c&ocirc;ng l???y th????ng hi???u H2C, s???n ph???m m???i toanh tr&ecirc;n th??? tr?????ng, c&oacute; thi???t k??? nh?? c&aacute;c d&ograve;ng xe Yamaha g???n chung, ??ang r???t ???????c nhi???u Biker ??a chu???ng b???i ki???u d&aacute;ng ?????p c??ng nh?? gi&aacute; th&agrave;nh r???.</p>
', 0, 1, 0);
INSERT Products (Id, Name, UnitPrice, Image, ProductDate, Available, CategoryId, Quantity, Description, Discount, ViewCount, Special) VALUES (13, N'B??? 4 T???m Ch???n N???ng ?? T?? Xe H??i Ph???n Quang', 53000, N'1.png', CAST(N'2021-05-13' AS Date), 1, 13, 100, N'<h1>B??? 4 T???m Ch???n N???ng &Ocirc; T&ocirc; Xe H??i Ph???n Quang, T???m Che N???ng &Ocirc; T&ocirc; C&aacute;ch Nhi???t Ch???ng Th???m, K&iacute;ch Th?????c Ti&ecirc;u Chu???n Ph&ugrave; H???p V???i T???t C??? C&aacute;c Lo???i K&iacute;nh Xe</h1>
', 0, 0, 1);

INSERT Users (Id, Password, Fullname, Telephone, Email, Photo, Activated, Admin) VALUES (N'admin', N'123456', N'?????ng ?????c Khang', 964772094, N'duc.khang165@gmail.com', N'30714389_173138760010464_1235140372791820288_n.jpg', 1, 1);
INSERT Users (Id, Password, Fullname, Telephone, Email, Photo, Activated, Admin) VALUES (N'hung123', N'123456', N'Nguy???n V??n H??ng', 977255117, N'hung@gmail.com', N'luan.jpg', 1, 2);
INSERT Users (Id, Password, Fullname, Telephone, Email, Photo, Activated, Admin) VALUES (N'huynhhuong', N'123456', N'Huynh Huong', 1234567890, N'lonzomcf@yahoo.com.vn', N'user.png', 1, 2);
INSERT Users (Id, Password, Fullname, Telephone, Email, Photo, Activated, Admin) VALUES (N'Longdz', N'123456', N'Long Hoang', 332467724, N'long@gmail.com', N'30714389_173138760010464_1235140372791820288_n.jpg', 1, 2);



