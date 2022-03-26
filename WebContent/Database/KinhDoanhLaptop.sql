CREATE DATABASE KinhDoanhLapTop;
Go
use KinhDoanhLapTop;
Go

CREATE TABLE Account
(
	Id_Account int IDENTITY(1,1)  PRIMARY KEY,
	UserName NVARCHAR(50) NOT NULL UNIQUE,
	PassWord NVARCHAR(50) NOT NULL
);
GO

CREATE TABLE NhaCungCap
(
	MaNCC int IDENTITY(1,1) PRIMARY KEY,
	TenNCC NVARCHAR(50) NOT NULL,
	DiaChi NVARCHAR(50) NOT NULL,
	DienThoai NVARCHAR(50) NOT NULL
);
Go

CREATE TABLE ThongTinSP
(
	MaSP int IDENTITY(1,1) PRIMARY KEY,	
	TenSP NVARCHAR(50) NOT NULL,
	ImageDataName VARCHAR(50) not null,
	GiaSP int NOT NULL,
	ThoiGianBaoHanh NVARCHAR(50) NOT NULL,
	XuatXu NVARCHAR(50) NOT NULL,
	ThongSo NVARCHAR(1000) NOT NULL,
	SoLuongTon int not null
);
GO
CREATE TABLE HoaDonBanHang
(
	MaHDBH int IDENTITY(1,1) PRIMARY KEY,
	Id_Account int not null,
	username NVARCHAR(50) NOT NULL,
	firstlastname  NVARCHAR(50) NOT NULL,
	diachi  NVARCHAR(50) NOT NULL,
	numberphone  NVARCHAR(50) NOT NULL,
	gender  NVARCHAR(50) NOT NULL,
	nationality NVARCHAR(50) NOT NULL,
	noted NVARCHAR(50) NOT NULL,
	ngaylaphoadonbanhang date not null,
);

GO
CREATE TABLE HoaDonDatHang
(
	MaHDDH int IDENTITY(1,1) PRIMARY KEY,
	MaNCC int  NOT NULL,
	MaNV int NOT NULL,
	MaSP int NOT NULL,
	NgayLapHoaDonDatHang date NOT NULL,
	GiaTri int NOT NULL,
	SoLuongDat int not null,
);
GO

CREATE TABLE KhachHang
(
	MaKH int IDENTITY(1,1) PRIMARY KEY,	
	HoTen NVARCHAR(50) NOT NULL,
	NgaySinh date NOT NULL,
	SDT NVARCHAR(50) NOT NULL,
	Gmail NVARCHAR(50) NOT NULL,
	Id_Account int NOT NULL,
);
GO

CREATE TABLE NhanVien
(
	MaNV int IDENTITY(1,1) PRIMARY KEY,
	HoTen CHAR(50) NOT NULL,
	NgaySinh date NOT NULL,
	SDT NVARCHAR(50) NOT NULL,
	QueQuan NVARCHAR(50) NOT NULL,
	STK NVARCHAR(50) NOT NULL,
	Id_Account int NOT NULL,
);
GO

CREATE TABLE ThongTinUuDai
(
	MaKH int NOT NULL,
	MaHDBH int NOT NULL,
	DiemTichLuy int NOT NULL,
	ThoiGianTichLuy date NOT NULL,
);
GO

CREATE TABLE GioHang
(
	Id_Account int not null,
	MaSP int NOT NULL UNIQUE,
	TenSP NVARCHAR(50) NOT NULL,
	GiaSP int NOT NULL,
	SoLuong int not null,
);
GO

--Foreign key
ALTER TABLE GioHang
ADD CONSTRAINT FK_GioHang_MaSP
FOREIGN KEY (MaSP) REFERENCES  ThongTinSP(MaSP)ON DELETE CASCADE;
GO
ALTER TABLE GioHang
ADD CONSTRAINT FK_GioHang_Id_Account
FOREIGN KEY (Id_Account) REFERENCES  Account(Id_Account)ON DELETE CASCADE;
GO
ALTER TABLE HoaDonDatHang
ADD CONSTRAINT FK_HoaDonDatHang_MaNV
FOREIGN KEY (MaNV) REFERENCES  NhanVien(MaNV) ON DELETE CASCADE;
Go
ALTER TABLE HoaDonDatHang
ADD CONSTRAINT FK_HoaDonDatHang_MaSP
FOREIGN KEY (MaSP) REFERENCES ThongTinSP(MaSP) ON DELETE CASCADE;
Go
ALTER TABLE HoaDonDatHang
ADD CONSTRAINT FK_HoaDonDatHang_MaNCC
FOREIGN KEY (MaNCC) REFERENCES NhaCungCap(MaNCC)  ON DELETE CASCADE;

Go
ALTER TABLE KhachHang
ADD CONSTRAINT FK_KhachHang_Id_Account
FOREIGN KEY (Id_Account) REFERENCES Account(Id_Account)ON DELETE CASCADE;
Go
ALTER TABLE NhanVien
ADD CONSTRAINT FK_NhanVien_Id_Account
FOREIGN KEY (Id_Account) REFERENCES Account(Id_Account) ON DELETE CASCADE;
Go
ALTER TABLE ThongTinUuDai
ADD CONSTRAINT FK_ThongTinUuDai_MaHDBH
FOREIGN KEY (MaHDBH) REFERENCES HoaDonBanHang(MaHDBH) ON DELETE CASCADE;
Go
ALTER TABLE ThongTinUuDai
ADD CONSTRAINT FK_ThongTinUuDai_MaKH
FOREIGN KEY (MaKH) REFERENCES KhachHang(MaKH) ON DELETE CASCADE;
Go
ALTER TABLE HoaDonBanHang
ADD CONSTRAINT FK_HoaDonBanHang_Id_Account
FOREIGN KEY (Id_Account) REFERENCES Account(Id_Account);
Go
-- PROCEDURE
Create PROCEDURE [dbo].[Delete_GioHang](@Id_Account int, @MaSP int)
as
begin
	delete from GioHang
	where GioHang.Id_Account=@Id_Account and GioHang.MaSP = @MaSP;
end
go

CREATE PROCEDURE [dbo].[Insert_HoaDonBanHang](
	@Id_Account int,
	@username NVARCHAR(50),
	@firstlastname  NVARCHAR(50),
	@diachi  NVARCHAR(50) ,
	@numberphone  NVARCHAR(50) ,
	@gender  NVARCHAR(50) ,
	@nationality NVARCHAR(50),
	@noted NVARCHAR(50),
	@ngaylaphoadonbanhang date )
AS
Begin
 INSERT INTO dbo.HoaDonBanHang(Id_Account,username, firstlastname, diachi, numberphone, gender, nationality, noted,ngaylaphoadonbanhang) 
 VALUES(@Id_Account, @username,@firstlastname,@diachi,@numberphone,@gender,@nationality,@noted, @ngaylaphoadonbanhang)
End
Go

CREATE PROCEDURE [dbo].[Insert_ThongTinSP](
	@TenSP NVARCHAR(50),
	@ImageDataName  NVARCHAR(50),
	@GiaSP  int,
	@ThoiGianBaoHanh  NVARCHAR(50) ,
	@XuatXu  NVARCHAR(50) ,
	@ThongSo NVARCHAR(1000),
	@SoLuongTon int)
AS
Begin
 INSERT INTO ThongTinSP( TenSP, ImageDataName, GiaSP, ThoiGianBaoHanh, XuatXu, ThongSo, SoLuongTon)
 VALUES(@TenSP,@ImageDataName,@GiaSP,@ThoiGianBaoHanh,@XuatXu,@ThongSo,@SoLuongTon)
End
Go

CREATE PROCEDURE [dbo].[Update_ThongTinSP](
	@MaSP int,
	@TenSP NVARCHAR(50),
	@ImageDataName  NVARCHAR(50),
	@GiaSP  int,
	@ThoiGianBaoHanh  NVARCHAR(50) ,
	@XuatXu  NVARCHAR(50) ,
	@ThongSo NVARCHAR(1000),
	@SoLuongTon int)
AS
Begin
 update ThongTinSP 
 set TenSP=@TenSP, ImageDataName=@ImageDataName, GiaSP=@GiaSP, ThoiGianBaoHanh=@ThoiGianBaoHanh, XuatXu=@XuatXu, ThongSo=@ThongSo, SoLuongTon=@SoLuongTon 
 where MaSP=@MaSP
End
Go


--Function
CREATE function [dbo].[f_ChiTietSanPham](@MaSP int)
returns table
as
return
( select MaSP,TenSP,ImageDataName, GiaSP, ThoiGianBaoHanh, XuatXu, ThongSo, SoLuongTon
 from ThongTinSP
 where ThongTinSP.MaSP = @MaSP)
 Go

 CREATE function [dbo].[f_TimKiemSanPham](@TenSP varchar(50))
returns table
as
return
( select *
 from ThongTinSP
 where ThongTinSP.TenSP like @TenSp)
 Go

 --views

CREATE VIEW [ThongTinKhachHang_Views] AS
select kh.MaKH ,HoTen,NgaySinh,SDT,Gmail,DiemTichLuy, ThoiGianTichLuy
from dbo.KhachHang as kh  Join ThongTinUuDai as ttud on kh.MaKH= ttud.MaKH
Go

CREATE VIEW [HoaDonBanHang_Views] AS
select MaHDBH, Id_Account, username, firstlastname, diachi,numberphone,gender,nationality,noted, ngaylaphoadonbanhang from HoaDonBanHang
Go
CREATE VIEW [HoaDonDatHang_Views] AS
select MaHDDH, ncc.MaNCC, sp.MaSP, TenSP,SoLuongDat,GiaTri,TenNCC, DiaChi,DienThoai, NgayLapHoaDonDatHang
from (HoaDonDatHang as hddh join ThongTinSP as sp on hddh.MaSP= sp.MaSP) join NhaCungCap as ncc on ncc.MaNCC = hddh.MaNCC
Go

CREATE VIEW [Account_Views] AS
select Id_Account,UserName,PassWord from Account
Go
CREATE VIEW [NhaCungCap_Views] AS
select MaNCC, TenNCC,DiaChi,DienThoai from NhaCungCap
Go
CREATE VIEW [NhanVien_Views] AS
select MaNV, HoTen, NgaySinh,SDT,QueQuan,STK,Id_Account from NhanVien
GO
CREATE VIEW [ThongTinSP_Views] AS
select  MaSP, TenSP, ImageDataName,GiaSP, ThoiGianBaoHanh, xuatXu,ThongSo, SoLuongTon from ThongTinSP
Go

--TRIGGER
CREATE TRIGGER trg_DatHang ON HoaDonDatHang  AFTER INSERT AS 
BEGIN
	UPDATE ThongTinSP
	SET SoLuongTon = SoLuongTon + (
		SELECT SoLuongDat
		FROM inserted
		WHERE MaSP = ThongTinSP.MaSP
	)
	FROM ThongTinSP
	JOIN inserted ON ThongTinSP.MaSP = inserted.MaSP
END
GO

CREATE TRIGGER trg_CapNhatDatHang on HoaDonDatHang after update AS
BEGIN
   UPDATE ThongTinSP SET SoLuongTon = SoLuongTon +
	   (SELECT SoLuongDat FROM inserted WHERE MaSP = ThongTinSP.MaSP) -
	   (SELECT SoLuongDat FROM deleted WHERE MaSP = ThongTinSP.MaSP)
   FROM ThongTinSP 
   JOIN deleted ON ThongTinSP.MaSP = deleted.MaSP
End
GO

create TRIGGER trg_HuyDatHang ON HoaDonDatHang FOR DELETE AS 
BEGIN
	UPDATE ThongTinSP
	SET SoLuongTon = SoLuongTon - (SELECT SoLuongDat FROM deleted WHERE MaSP = ThongTinSP.MaSP)
	FROM ThongTinSP 
	JOIN deleted ON ThongTinSP.MaSP = deleted.MaSP
END
GO

create TRIGGER NV_LessThan18 ON NhanVien FOR INSERT AS 
BEGIN
	DECLARE @Count INT=0
	SELECT @Count = COUNT(*) FROM Inserted where YEAR(GETDATE())- YEAR(Inserted.NgaySinh)<18
	IF(@Count >0)
	BEGIN
		PRINT 'NhanVien LESS THAN 18'
		ROLLBACK TRAN
	END
END
Go

--Insert
INSERT INTO NhaCungCap (TenNCC,DiaChi,DienThoai)
VALUES ('Electronic company', '30/2,Paris', '19097578');

INSERT INTO NhaCungCap (TenNCC,DiaChi,DienThoai)
VALUES ('Alice company', '25/2,America', '752738');

INSERT INTO NhaCungCap (TenNCC,DiaChi,DienThoai)
VALUES ('Micro-Star International','Taiwan','0247 3000911');

INSERT INTO NhaCungCap (TenNCC, DiaChi, DienThoai)
VALUES ('Dell Technologies','Round Rock,Texas,USA','1800 545 455');

INSERT INTO NhaCungCap (TenNCC, DiaChi, DienThoai)
VALUES ('AsusTek Computer Inc','Taiwan','1800 6588');

INSERT INTO NhaCungCap (TenNCC, DiaChi, DienThoai)
VALUES ('Acer Inc','Taiwan','028 3910 6888');

INSERT INTO NhaCungCap (TenNCC, DiaChi, DienThoai)
VALUES ('Lenovo','China','028 3526 8885');

INSERT INTO NhaCungCap (TenNCC, DiaChi, DienThoai)
VALUES ('Hewlett-Packard','California, Palo Alto, USA','1800588868');

INSERT INTO NhaCungCap (TenNCC, DiaChi, DienThoai)
VALUES ('LG Electronics','Korea','18001503 ');

INSERT INTO NhaCungCap (TenNCC, DiaChi, DienThoai)
VALUES ('Vivo Technology','China','18006101 ');

Go
INSERT INTO Account (UserName, PassWord)
VALUES ('NV1','NV1');
INSERT INTO Account (UserName, PassWord)
VALUES ('NV2','NV2');
INSERT INTO Account (UserName, PassWord)
VALUES ('NV3','NV3');
INSERT INTO Account (UserName, PassWord)
VALUES ('NV4','NV4');
INSERT INTO Account (UserName, PassWord)
VALUES ('NV5','NV5');
INSERT INTO Account (UserName, PassWord)
VALUES ('NV6','NV6');
INSERT INTO Account (UserName, PassWord)
VALUES ('NV7','NV7');
INSERT INTO Account (UserName, PassWord)
VALUES ('NV8','NV8');
INSERT INTO Account (UserName, PassWord)
VALUES ('NV9','NV9');
INSERT INTO Account (UserName, PassWord)
VALUES ('NV10','NV10');
INSERT INTO Account (UserName, PassWord)
VALUES ('NV11','NV11');
INSERT INTO Account (UserName, PassWord)
VALUES ('NV12','NV12');
INSERT INTO Account (UserName, PassWord)
VALUES ('NV13','NV13');
INSERT INTO Account (UserName, PassWord)
VALUES ('NV14','NV14');
INSERT INTO Account (UserName, PassWord)
VALUES ('NV15','NV15');
INSERT INTO Account (UserName, PassWord)
VALUES ('NV16','NV16');
INSERT INTO Account (UserName, PassWord)
VALUES ('NV17','NV17');
INSERT INTO Account (UserName, PassWord)
VALUES ('NV18','NV18');
INSERT INTO Account (UserName, PassWord)
VALUES ('NV19','NV19');
INSERT INTO Account (UserName, PassWord)
VALUES ('NV20','NV20');
INSERT INTO Account (UserName, PassWord)
VALUES ('NV21','NV21');
INSERT INTO Account (UserName, PassWord)
VALUES ('NV22','NV22');
INSERT INTO Account (UserName, PassWord)
VALUES ('NV23','NV23');
INSERT INTO Account (UserName, PassWord)
VALUES ('NV24','NV24');
INSERT INTO Account (UserName, PassWord)
VALUES ('NV25','NV25');

INSERT INTO Account (UserName, PassWord)
VALUES ('KH1','KH1');
INSERT INTO Account (UserName, PassWord)
VALUES ('KH2','KH2');
INSERT INTO Account (UserName, PassWord)
VALUES ('KH3','KH3');
INSERT INTO Account (UserName, PassWord)
VALUES ('KH4','KH4');
INSERT INTO Account (UserName, PassWord)
VALUES ('KH5','KH5');
INSERT INTO Account (UserName, PassWord)
VALUES ('KH6','KH6');
INSERT INTO Account (UserName, PassWord)
VALUES ('KH7','KH7');
INSERT INTO Account (UserName, PassWord)
VALUES ('KH8','KH8');
INSERT INTO Account (UserName, PassWord)
VALUES ('KH9','KH9');
INSERT INTO Account (UserName, PassWord)
VALUES ('KH10','KH10');
INSERT INTO Account (UserName, PassWord)
VALUES ('KH11','KH11');
INSERT INTO Account (UserName, PassWord)
VALUES ('KH12','KH12');
INSERT INTO Account (UserName, PassWord)
VALUES ('KH13','KH13');
INSERT INTO Account (UserName, PassWord)
VALUES ('KH14','KH14');
INSERT INTO Account (UserName, PassWord)
VALUES ('KH15','KH15');
INSERT INTO Account (UserName, PassWord)
VALUES ('KH16','KH16');
INSERT INTO Account (UserName, PassWord)
VALUES ('KH17','KH17');
INSERT INTO Account (UserName, PassWord)
VALUES ('KH18','KH18');
INSERT INTO Account (UserName, PassWord)
VALUES ('KH19','KH19');
INSERT INTO Account (UserName, PassWord)
VALUES ('KH20','KH20');
INSERT INTO Account (UserName, PassWord)
VALUES ('KH21','KH21');
INSERT INTO Account (UserName, PassWord)
VALUES ('KH22','KH22');
INSERT INTO Account (UserName, PassWord)
VALUES ('KH23','KH23');
INSERT INTO Account (UserName, PassWord)
VALUES ('KH24','KH24');
INSERT INTO Account (UserName, PassWord)
VALUES ('KH25','KH25');
INSERT INTO Account (UserName, PassWord)
VALUES ('KH26','KH26');
INSERT INTO Account (UserName, PassWord)
VALUES ('KH27','KH27');
INSERT INTO Account (UserName, PassWord)
VALUES ('KH28','KH28');
INSERT INTO Account (UserName, PassWord)
VALUES ('KH29','KH29');
INSERT INTO Account (UserName, PassWord)
VALUES ('KH30','KH30');


Go

INSERT INTO ThongTinSP( TenSP, ImageDataName, GiaSP, ThoiGianBaoHanh, XuatXu, ThongSo, SoLuongTon)
VALUES('Laptop Asus ZenBook UX325EA i5','Laptop Asus ZenBook', 23700000,2,'China','Intel core I5 9500H (8 GBDDR4 2933 MHz up to 32GB/ SSD 512 GB NVMe PCIe/ 15.6"Full HD (1920 x 1080)144Hz/GTX 1650 4GB/Windows 10 Home SL)',80);

INSERT INTO ThongTinSP( TenSP, ImageDataName, GiaSP, ThoiGianBaoHanh, XuatXu, ThongSo, SoLuongTon)
VALUES('Laptop Asus TUF Gaming FX516PC i7','Laptop Asus TUF Gaming', 28500000,2,'China','Intel core I7 11370H (8 GB DDR4 3200MHz up to 32GB/ SSD 512 GB NVMe PCIe/15.6"Full HD (1920 x 1080)144Hz/RTX 3050 4GB/Windows 10 Home SL)',100);

INSERT INTO ThongTinSP( TenSP, ImageDataName, GiaSP, ThoiGianBaoHanh, XuatXu, ThongSo, SoLuongTon)
VALUES('Laptop Asus ExpertBook B9400CEA i7','Laptop Asus ExpertBook', 36500000,1,'China','Intel core I7 11370H (16 GBLPDDR4X (On board)4267 MHz/SSD 512 GB NVMe PCIe/14"Full HD (1920 x 1080)/Card Intel Iris Xe/Windows 10 Home SL)',75);
INSERT INTO ThongTinSP( TenSP, ImageDataName, GiaSP, ThoiGianBaoHanh, XuatXu, ThongSo, SoLuongTon)
VALUES('Laptop Dell Vostro 3500','Laptop Dell Vostro', 18500000,1,'USA','Intel core I5 11370H (8 GBDDR4 2666 MHz up to 32GB/SSD 512 GB NVMe PCIe +1HDD SATA/15.6"Full HD (1920 x 1080)/Card Intel Iris Xe/Windows 10 Home SL)',125);

INSERT INTO ThongTinSP( TenSP, ImageDataName, GiaSP, ThoiGianBaoHanh, XuatXu, ThongSo, SoLuongTon)
VALUES('Laptop Dell Gaming G315','Laptop Dell Gaming', 31500000,3,'USA','Intel core  i7 10750H (8 GBDDR4 2666 MHz up to 64GB/SSD 512 GB/15.6"Full HD (1920 x 1080)120Hz/Card RTX 3050 4GB/Windows 10 Home SL)',125);

INSERT INTO ThongTinSP( TenSP, ImageDataName, GiaSP, ThoiGianBaoHanh, XuatXu, ThongSo, SoLuongTon)
VALUES('Laptop Dell XPS 13 9310 i7','Laptop Dell XPS', 59500000,3,'USA','Intel core  i7 1165G7 (16 GBLPDDR4X (On board)4267 MHz up to 64GB/512 GB SSD NVMe PCIe/13.4"4K,UHD (3840 x 2400)/Card Intel Iris Xe/Windows 10 Home SL)',55);

INSERT INTO ThongTinSP( TenSP, ImageDataName, GiaSP, ThoiGianBaoHanh, XuatXu, ThongSo, SoLuongTon)
VALUES('Laptop Dell Inspiron 7400 i5','Laptop Dell Inspiron ', 31800000,2,'USA','Intel core  i5 1135G7 (16 GBLPDDR4X (On board)4267 MHz up to 32GB/512 GB SSD NVMe PCIe/14"2K/Card MX350 2GB/Windows 10 Home SL)',140);

INSERT INTO ThongTinSP( TenSP, ImageDataName, GiaSP, ThoiGianBaoHanh, XuatXu, ThongSo, SoLuongTon)
VALUES('Laptop Dell Vostro 5510 i5','Laptop Dell Vostro', 22600000,2,'USA','Intel core  i5 11300H (8 GB DDR4 3200 MHz up to 32GB/SSD 512 GB/15.6"Full HD (1920 x 1080)/ Card Intel Iris Xe/Windows 10 Home SL)',140);

INSERT INTO ThongTinSP( TenSP, ImageDataName, GiaSP, ThoiGianBaoHanh, XuatXu, ThongSo, SoLuongTon)
VALUES('Laptop Acer Predator Triton 300 i7','Laptop Acer Predator Triton', 49990000,2,'USA','Intel core  i7 11800H (16GB DDR4 3200 MHz up to 32GB/512 GB SSD NVMe PCIe /15.6"QHD (2560 x 1440)165Hz/Card RTX 3070 8GB/Windows 10 Home SL)',95);

INSERT INTO ThongTinSP( TenSP, ImageDataName, GiaSP, ThoiGianBaoHanh, XuatXu, ThongSo, SoLuongTon)
VALUES('Laptop Acer Predator Helios PH315 i7','Laptop Acer Predator Helios', 38990000,2,'USA','Intel core  i7 11800H (16GB DDR4 3200 MHz up to 64GB/512 GB SSD NVMe PCIe/15.6"Full HD (1920 x 1080), 144Hz144Hz/Card RTX 3050Ti 4GB/Windows 10 Home SL)',78);

INSERT INTO ThongTinSP( TenSP, ImageDataName, GiaSP, ThoiGianBaoHanh, XuatXu, ThongSo, SoLuongTon)
VALUES('Laptop Acer Swift 5 SF514','Laptop Acer Swift', 27990000,2,'USA','Intel core  I7 8565U (8GB DDR4 2133 MHz up to 32GB/256 GB SSD NVMe PCIe/14"Full HD (1920 x 1080)/Card Intel UHD 620/Windows 10 Home SL)',140);
INSERT INTO ThongTinSP( TenSP, ImageDataName, GiaSP, ThoiGianBaoHanh, XuatXu, ThongSo, SoLuongTon)
VALUES('Laptop Acer Aspire A514','Laptop Acer Aspire', 18000000,1,'USA','Intel core  i5 1135G7 (8GB DDR4 3200 MHz up to 32GB/512 GB SSD NVMe PCIe/15.6"QHD (2560 x 1440)165Hz/Card RTX 3070 8GB/Windows 10 Home SL)',140);

INSERT INTO ThongTinSP( TenSP, ImageDataName, GiaSP, ThoiGianBaoHanh, XuatXu, ThongSo, SoLuongTon)
VALUES('Laptop Apple MacBook Air M1 2020','Laptop Apple MacBook Air', 28000000,2,'USA','Apple M1 (Ram 8GB/ 512 GB SSD/13.3"Retina (2560 x 1600)/)',120);

INSERT INTO ThongTinSP( TenSP, ImageDataName, GiaSP, ThoiGianBaoHanh, XuatXu, ThongSo, SoLuongTon)
VALUES('Laptop Apple MacBook Pro M1 2020','Laptop Apple MacBook Pro', 25000000,3,'USA','Apple M1 (32M Cache, up to 4.8 GHz/Card 8GPU/ 13.3"Retina (2560 x 1600)/Mac OS)',40);

INSERT INTO ThongTinSP( TenSP, ImageDataName, GiaSP, ThoiGianBaoHanh, XuatXu, ThongSo, SoLuongTon)
VALUES('Laptop Apple MacBook Pro 16 M1 Max 2021','Laptop Apple MacBook Pro Max', 91000000,4,'USA','Apple M1 Max400GB/s memory bandwidth (Ram 32GB up to 64GB/1TB SSD/16.2 inchLiquid Retina XDR display (3456 x 2234)120Hz/Card 32 core-GPU/Mac OS )',20);

INSERT INTO ThongTinSP( TenSP, ImageDataName, GiaSP, ThoiGianBaoHanh, XuatXu, ThongSo, SoLuongTon)
VALUES('Laptop Apple MacBook Pro 16 M1 Pro','Laptop Apple MacBook Pro Pro', 70000000,4,'USA','Apple M1 Pro200GB/s memory bandwidth (Ram 16GB up to 64GB/ 512 GB SSD/16.2 inchLiquid Retina XDR display (3456 x 2234)120Hz/ Card 16 core-GPU/ Mac OS)',20);

INSERT INTO ThongTinSP( TenSP, ImageDataName, GiaSP, ThoiGianBaoHanh, XuatXu, ThongSo, SoLuongTon)
VALUES('Laptop HP EliteBook X360 1030','Laptop HP EliteBook', 49000000,3,'USA','Intel core i7 1165G7 2.8GHz (Ram: 16 GBLPDDR4X (On board)4267 MHz/SSD 512 GB NVMe PCIe/13.3"Full HD (1920 x 1080)/Card Card tích h?pIntel Iris Xe/Windows 10 Pro)',120);
INSERT INTO ThongTinSP( TenSP, ImageDataName, GiaSP, ThoiGianBaoHanh, XuatXu, ThongSo, SoLuongTon)
VALUES('Laptop HP Omen 15 i7','Laptop HP Omen', 55500000,2,'USA','Intel core i7 10750H 2.6GHz (16 GB DDR4 2933 MHz up to 32GB/ 1 TB SSD M.2 PCIe/15.6"Full HD (1920 x 1080)300Hz/Card RTX 2070 Max-Q 8GB/Windows 10 Home SL)',140);

INSERT INTO ThongTinSP( TenSP, ImageDataName, GiaSP, ThoiGianBaoHanh, XuatXu, ThongSo, SoLuongTon)
VALUES('Laptop HP Gaming VICTUS 16','Laptop HP Gaming VICTUS', 24500000,2,'USA','AMD Ryzen™ 5 5600H 3.3GHz (8GB DDR4 3200MHz up to 32GB/16.1"Full HD (1920 x 1080)144Hz/Card RTX 3050 4GB/ Windows 10 Home SL)',55);

INSERT INTO ThongTinSP( TenSP, ImageDataName, GiaSP, ThoiGianBaoHanh, XuatXu, ThongSo, SoLuongTon)
VALUES('Laptop HP Pavilion 15','Laptop HP Pavilion', 23000000,2,'USA','Intel core I7 10750H 2.6GHz (8GB DDR4 2933 MHz up to 32GB/SSD 512 GB NVMe PCIeIntel Optane 32GB (H10)/15.6"Full HD (1920 x 1080)/GTX 1650Ti 4GB/Windows 10 Home SL)',95);

INSERT INTO ThongTinSP( TenSP, ImageDataName, GiaSP, ThoiGianBaoHanh, XuatXu, ThongSo, SoLuongTon)
VALUES('Laptop MSI Gaming GL65 Leopard 10SDK','Laptop MSI Gaming GL', 25000000,2,'China','Intel core I7 10750H 2.6GHz (8GB DDR4 3200Mhz up to 64GB/SSD 512 GB NVMe PCIe/15.6"Full HD (1920 x 1080)144Hz/Card GTX 1650 4GB/Windows 10 Home SL)',140);

INSERT INTO ThongTinSP( TenSP, ImageDataName, GiaSP, ThoiGianBaoHanh, XuatXu, ThongSo, SoLuongTon)
VALUES('Laptop MSI Gaming GS66 Stealth','Laptop MSI Gaming GS', 65000000,2,'China','Intel core I7 11800H  2.3 GHz (32 GB DDR4 3200MHz up to 64GB/2TB SSD NVMe PCLe /15.6"Full HD (1920 x 1080)360Hz/Card RTX 3070 Max-Q 8GB/Windows 10 Home SL)',95);

INSERT INTO ThongTinSP( TenSP, ImageDataName, GiaSP, ThoiGianBaoHanh, XuatXu, ThongSo, SoLuongTon)
VALUES('Laptop MSI Gaming GF65 Thin i5','Laptop MSI Gaming GF', 29000000,2,'China','Intel core i5 10500H 2.5GHz (16GB DDR4 3200MHz up to 32GB/ 512 GB SSD NVMe PCIe /15.6"Full HD (1920 x 1080)144Hz/Card RTX 3060 Max-Q 6GB/Windows 10 Home SL)',140);

INSERT INTO ThongTinSP( TenSP, ImageDataName, GiaSP, ThoiGianBaoHanh, XuatXu, ThongSo, SoLuongTon)
VALUES('Laptop MSI Gaming GE66 Raider i7','Laptop MSI Gaming GE', 59900000,2,'China','Intel core i7 11800H 2.30GHz (16GB DDR4 32MHz up to 32GB/ 512 GB SSD NVMe PCIe / 15.6"Full HD (1920 x 1080)360Hz/Card RTX 3070 8GB/)',125);

INSERT INTO ThongTinSP( TenSP, ImageDataName, GiaSP, ThoiGianBaoHanh, XuatXu, ThongSo, SoLuongTon)
VALUES('Laptop MSI Modern 14 i3','Laptop MSI Modern ', 14500000,2,'China','Intel core i3 1115G4 3GHz(8GB DDR4 up to 32GB/ 256 GB SSD NVMe PCIe/ 4"Full HD (1920 x 1080)/Card Intel UHD/Windows 10 Home)',140);

INSERT INTO ThongTinSP( TenSP, ImageDataName, GiaSP, ThoiGianBaoHanh, XuatXu, ThongSo, SoLuongTon)
VALUES('Laptop MSI Gaming Bravo 15','Laptop MSI Gaming Bravo ', 32000000,2,'China','AMD Ryzen 55600H3.3GHz (8GB DDR4 up to 32GB/512GB SSD NVMe PCIe/15.6"Full HD (1920 x 1080)144Hz/Card AMD Radeon RX 5500M, 4GB/Windows 10 Home)',140);

INSERT INTO ThongTinSP( TenSP, ImageDataName, GiaSP, ThoiGianBaoHanh, XuatXu, ThongSo, SoLuongTon)
VALUES('Laptop MSI Katana GF76 i7','Laptop MSI Katana GF ', 31500000,2,'China','Intel core  i7 11800H (16GB DDR4 3200 MHz up to 32GB/512 GB SSD NVMe PCIe /17.3"Full HD (1920 x 1080)144Hz/Card RTX 3070 4GB/Windows 10 Home SL)',78);

INSERT INTO ThongTinSP( TenSP, ImageDataName, GiaSP, ThoiGianBaoHanh, XuatXu, ThongSo, SoLuongTon)
VALUES('Laptop MSI Gaming GP76 i7','Laptop MSI Gaming GP76 ', 51500000,2,'China','Intel core  i7 11800H 2.3GHz (16GB DDR4 3200 MHz up to 32GB/1TB SSD NVMe PCIe /17.3"Full HD (1920 x 1080)240Hz/Card RTX 3070 8GB/Windows 10 Home SL)',140);

INSERT INTO ThongTinSP( TenSP, ImageDataName, GiaSP, ThoiGianBaoHanh, XuatXu, ThongSo, SoLuongTon)
VALUES('Laptop LG Gram 17 2021 i7','Laptop LG Gram 17 ', 54900000,2,'China','Intel core  i7 1165G7 2.8GHz (16 GBLPDDR4X (On board)4266 MHz up to 64GB/1TB SSD NVMe PCIe /17"WQXGA (2560 x 1600)/Card Intel Iris Xe/Windows 10 Home SL)',140);
INSERT INTO ThongTinSP( TenSP, ImageDataName, GiaSP, ThoiGianBaoHanh, XuatXu, ThongSo, SoLuongTon)
VALUES( 'Laptop LG Gram 16 2021','Laptop LG Gram 16 ', 50900000,2,'China','Intel core  i7 1165G7 2.8GHz (16 GBLPDDR4X (On board)4266 MHz up to 64GB/512GB SSD NVMe PCIe /17"WQXGA (2560 x 1600)/Card Intel Iris Xe/Windows 10 Home SL)',78);

INSERT INTO ThongTinSP( TenSP, ImageDataName, GiaSP, ThoiGianBaoHanh, XuatXu, ThongSo, SoLuongTon)
VALUES('Laptop LG Gram 14 2021 i7','Laptop LG Gram 14 ', 47900000,2,'China','Intel core  i7 1165G7 2.8GHz (16 GBLPDDR4X (On board)4266 MHz up to 64GB/512GB SSD NVMe PCIe /14"WUXGA (1920 x 1200)/Card Intel Iris Xe/Windows 10 Home SL)',42);

INSERT INTO ThongTinSP( TenSP, ImageDataName, GiaSP, ThoiGianBaoHanh, XuatXu, ThongSo, SoLuongTon)
VALUES('Laptop Asus ROG Zephyrus G14 Alan Walker R9','Laptop Asus ROG Zephyrus ', 44900000,2,'China','Ryzen 95900HS 3GHz (16 GBDDR4 3200mhZ up to 64GB/1TB SSD NVMe PCIe /14"QHD (2560 x 1440)120Hz/Card RTX 3050Ti 4GB/Windows 10 Home SL)',125);

INSERT INTO ThongTinSP( TenSP, ImageDataName, GiaSP, ThoiGianBaoHanh, XuatXu, ThongSo, SoLuongTon)
VALUES('Laptop HP Envy 13 i7','Laptop HP Envy  ', 30500000,2,'Taiwan','Intel Core i7 1165G72 8GHz (8 GB DDR4 (On board)2933 MHz up to 32GB/512GB SSD NVMe PCIe /13.3"Full HD (1920 x 1080)/Card Intel Iris Xe/Windows 10 Home SL)',140);

INSERT INTO ThongTinSP( TenSP, ImageDataName, GiaSP, ThoiGianBaoHanh, XuatXu, ThongSo, SoLuongTon)
VALUES('Laptop HP Envy 14','Laptop HP Envy 14  ', 28500000,2,'Taiwan','Intel Core i7 1165G72 8GHz (16 GB DDR4 (On board)2933 MHz up to 32GB/1TB SSD NVMe PCIe /15"Full HD (1920 x 1080)/Card Intel Iris Xe/Windows 10 Home SL)',80);

INSERT INTO ThongTinSP( TenSP, ImageDataName, GiaSP, ThoiGianBaoHanh, XuatXu, ThongSo, SoLuongTon)
VALUES('Laptop Dell Inspiron 3505 R3','Laptop Dell Inspiron 3505', 19000000,2,'China','ADM Ryzen R3 3250U2.6GHz (8GB DDR4 up to 32GB/ 256 GB SSD NVMe PCIe /15.6"Full HD (1920 x 1080)144Hz/Card Radeon/Windows 10 Home SL)',125) ;

INSERT INTO ThongTinSP( TenSP, ImageDataName, GiaSP, ThoiGianBaoHanh, XuatXu, ThongSo, SoLuongTon)
VALUES('Laptop HP 240 G8 i5','Laptop HP 240 G8', 18000000,2,'China','Intel core  i5 1135G7 2.4GHz  (8GB DDR4 3200MHz up to 32GB/ 256 GB SSD NVMe PCIe /14"Full HD (1920 x 1080)/Card Intel Iris Xe/Windows 10 Home SL)',140);

INSERT INTO ThongTinSP( TenSP, ImageDataName, GiaSP, ThoiGianBaoHanh, XuatXu, ThongSo, SoLuongTon)
VALUES('Laptop HP Probook 440 G8','Laptop HP Probook 440 G8', 20000000,2,'China','Intel core  i5 1135G7 2.4GHz  (8GB DDR4 3200MHz up to 32GB/ 256 GB SSD NVMe PCIe /14"Full HD (1920 x 1080)/Card Intel Iris Xe/Windows 10 Home SL)',140) ;

INSERT INTO ThongTinSP( TenSP, ImageDataName, GiaSP, ThoiGianBaoHanh, XuatXu, ThongSo, SoLuongTon)
VALUES('Laptop GIGABYTE Gaming G5','Laptop GIGABYTE Gaming G5', 29500000,1,'China','Intel core  i51 1400H 2.7GHz  (16GB DDR4 3200MHz up to 32GB/ 512GB SSD NVMe PCIe /15.6"Full HD (1920 x 1080)144Hz/Card RTX 3050Ti 4GB/Windows 10 Home SL)',74) ;

INSERT INTO ThongTinSP( TenSP, ImageDataName, GiaSP, ThoiGianBaoHanh, XuatXu, ThongSo, SoLuongTon)
VALUES('Laptop MSI Summit E13 Flip','Laptop MSI Summit E13 Flip ', 39500000,2,'China','Intel core  i7 1185G7 3GHz (16 GBLPDDR4 (On board)2133 MHz up to 64GB/SSD 1 TB NVMe PCIe Gen4x4 /13.4"Full HD+ (1920 x 1200)/Card Intel Iris Xe/Windows 10 Home SL)',125);

INSERT INTO ThongTinSP( TenSP, ImageDataName, GiaSP, ThoiGianBaoHanh, XuatXu, ThongSo, SoLuongTon)
VALUES('Laptop Lenovo Ideapad Gaming 3','Laptop Lenovo Ideapad Gaming 3  ', 25500000,2,'China','Intel core  i71 185G7 2.6GHz (16 GBLPDDR4 (On board)2133 MHz up to 64GB/SSD 512GB NVMe PCIe Gen4x4 /15.6"Full HD (1920 x 1080)120Hz/Card GTX 1650Ti 4GB/Windows 10 Home SL)',140);

INSERT INTO ThongTinSP( TenSP, ImageDataName, GiaSP, ThoiGianBaoHanh, XuatXu, ThongSo, SoLuongTon)
VALUES('Laptop Lenovo Yoga Duet 7 i5','Laptop Lenovo Yoga Duet 7 ', 26500000,2,'China','Intel core  i5 10210U 1.6GHz (8 GBDDR4 (On board)2666 MHz up to 32GB/SSD 512GB NVMe PCIe Gen4x4 /13 inchWQHD (2160x1350)/Card ntel UHD/Windows 10 Home SL)',140);

INSERT INTO ThongTinSP( TenSP, ImageDataName, GiaSP, ThoiGianBaoHanh, XuatXu, ThongSo, SoLuongTon)
VALUES('Laptop Lenovo ThinkBook 14s Yoga i5','Laptop Lenovo ThinkBook  Yoga', 24500000,2,'China','Intel core  i5 1135G7 1.6GHz (8 GBDDR4 (On board)2666 MHz up to 32GB/SSD 512GB NVMe PCIe Gen4x4 /14"Full HD (1920 x 1080)/Card ntel UHD/Windows 10 Home SL)',86);

INSERT INTO ThongTinSP( TenSP, ImageDataName, GiaSP, ThoiGianBaoHanh, XuatXu, ThongSo, SoLuongTon)
VALUES('Laptop Asus ZenBook Flip UX363EA','Laptop Asus ZenBook Flip', 33500000,2,'China','Intel core  i7 1165G7 2.8GHz (16 GBLPDDR4X (On board)4266 MHz up to 32GB/SSD 512GB NVMe PCIe Gen4x4 /13.3"Full HD (1920 x 1080) OLED/Card Intel Iris Xe/Windows 10 Home SL)',102);

Go
insert into GioHang(Id_Account, MaSP,TenSP,GiaSP,SoLuong) values(55,31,'Laptop LG Gram 14 2021 i7',  47900000,6)
insert into GioHang(Id_Account, MaSP,TenSP,GiaSP,SoLuong) values(55,32,'Laptop Asus ROG Zephyrus G14 Alan Walker R9', 44900000,8)
insert into GioHang(Id_Account, MaSP,TenSP,GiaSP,SoLuong) values(55,33,'Laptop HP Envy 13 i7', 30500000,10)

insert into GioHang(Id_Account, MaSP,TenSP,GiaSP,SoLuong) values(54,37,'Laptop HP Probook 440 G8',  20000000,1)
insert into GioHang(Id_Account, MaSP,TenSP,GiaSP,SoLuong) values(54,38,'Laptop GIGABYTE Gaming G5', 29500000,2)
insert into GioHang(Id_Account, MaSP,TenSP,GiaSP,SoLuong) values(54,39,'Laptop MSI Summit E13 Flip', 39500000,4)

insert into GioHang(Id_Account, MaSP,TenSP,GiaSP,SoLuong) values(53,40,'Laptop Lenovo Ideapad Gaming 3',  25500000,3)
insert into GioHang(Id_Account, MaSP,TenSP,GiaSP,SoLuong) values(53,28,'Laptop MSI Gaming GP76 i7', 51500000,5)
insert into GioHang(Id_Account, MaSP,TenSP,GiaSP,SoLuong) values(53,29,'Laptop MSI Katana GF76 i7', 31500000,2)



Go
INSERT INTO NhanVien( HoTen, NgaySinh, SDT, QueQuan, STK, Id_Account)
VALUES ('Ly Quoc Dung', '2001-04-26','0383264201','An Giang', '12354896',1);
INSERT INTO NhanVien( HoTen, NgaySinh, SDT, QueQuan, STK, Id_Account)
VALUES ('Doan Tran Dang Khoa', '2001-08-26','0383264205','Ben Tre', '985464',2);
INSERT INTO NhanVien( HoTen, NgaySinh, SDT, QueQuan, STK, Id_Account)
VALUES ('Le Thi Kim Ngan', '2001-02-04','0383264223','Tien Giang', '231721',3);
INSERT INTO NhanVien( HoTen, NgaySinh, SDT, QueQuan, STK, Id_Account)
VALUES ('Bui Thi Ngan Tuyen', '2001-11-15','0382451687','Tien Giang', '321658',4);

INSERT INTO NhanVien( HoTen, NgaySinh, SDT, QueQuan, STK, Id_Account)
VALUES ('Dao Thi Tien', '2001-03-12','0384376891','Tay Ninh', '932761',5);
INSERT INTO NhanVien( HoTen, NgaySinh, SDT, QueQuan, STK, Id_Account)
VALUES ('Le Van Nguyen', '1998-11-18','0382432416','Kien Giang', '436741',6);

INSERT INTO NhanVien( HoTen, NgaySinh, SDT, QueQuan, STK, Id_Account)
VALUES ('Le Thi Ha', '2000-09-29','0384353267','Ben Tre', '925617',7);
INSERT INTO NhanVien( HoTen, NgaySinh, SDT, QueQuan, STK, Id_Account)
VALUES ('Nguyen Thi Hue', '1999-12-18','0381748928','An Giang', '382901',8);

INSERT INTO NhanVien( HoTen, NgaySinh, SDT, QueQuan, STK, Id_Account)
VALUES ('Nguyen Van An', '2001-03-26','0383291074','Tien Giang', '323942',9);
INSERT INTO NhanVien( HoTen, NgaySinh, SDT, QueQuan, STK, Id_Account)
VALUES ('Do Vinh Tuong', '1997-12-20','0385983618','An Giang', '982167',10);

INSERT INTO NhanVien( HoTen, NgaySinh, SDT, QueQuan, STK, Id_Account)
VALUES ('Le Thi Cuc', '2001-09-22','0380937821','Tien Giang', '982716',11);
INSERT INTO NhanVien( HoTen, NgaySinh, SDT, QueQuan, STK, Id_Account)
VALUES ('Tran Van Duy', '1999-11-21','038093781','Vinh Long', '389210',12);

INSERT INTO NhanVien( HoTen, NgaySinh, SDT, QueQuan, STK, Id_Account)
VALUES ('Nguyen Nhat Linh', '1999-09-25','0312346418','TPHCM', '124267',13);
INSERT INTO NhanVien( HoTen, NgaySinh, SDT, QueQuan, STK, Id_Account)
VALUES ('Nguyen Van Toan', '2001-11-10','0383720983','TPHCM', '436572',14);

INSERT INTO NhanVien( HoTen, NgaySinh, SDT, QueQuan, STK, Id_Account)
VALUES ('Le Thi Anh', '1999-07-25','0383720923','TPHCM', '136428',15);
INSERT INTO NhanVien( HoTen, NgaySinh, SDT, QueQuan, STK, Id_Account)
VALUES ('Tran Van Nguyen', '2001-04-10','0383987379','TPHCM', '498372',16);

INSERT INTO NhanVien( HoTen, NgaySinh, SDT, QueQuan, STK, Id_Account)
VALUES ('Le Duy Phuoc', '1999-04-25','0389827810','TPHCM', '489206',17);
INSERT INTO NhanVien( HoTen, NgaySinh, SDT, QueQuan, STK, Id_Account)
VALUES ('Le Tuong Vy', '1998-02-13','0380987419','Tien Giang', '342678',18);

INSERT INTO NhanVien( HoTen, NgaySinh, SDT, QueQuan, STK, Id_Account)
VALUES ('Tran Thi Chi', '1998-02-24','0384298301','TPHCM', '389263',19);
INSERT INTO NhanVien( HoTen, NgaySinh, SDT, QueQuan, STK, Id_Account)
VALUES ('Tran Khai Vy', '2001-03-27','0383894877','An Giang', '982071',20);

INSERT INTO NhanVien( HoTen, NgaySinh, SDT, QueQuan, STK, Id_Account)
VALUES ('Nguyen Nhu Y', '2001-06-26','0388937621','TPHCM', '268197',21);
INSERT INTO NhanVien( HoTen, NgaySinh, SDT, QueQuan, STK, Id_Account)
VALUES ('Bui Thi Yen', '1998-02-27','0383789794','Ben Tre', '489261',22);

INSERT INTO NhanVien( HoTen, NgaySinh, SDT, QueQuan, STK, Id_Account)
VALUES ('Nguyen Phuoc Tuan', '2001-08-26','0387829181','TPHCM', '267183',23);
INSERT INTO NhanVien( HoTen, NgaySinh, SDT, QueQuan, STK, Id_Account)
VALUES ('Nguyen Xuan Truc', '2001-11-20','0387839173','Ben Tre', '782912',24);
INSERT INTO NhanVien( HoTen, NgaySinh, SDT, QueQuan, STK, Id_Account)
VALUES ('Nguyen Anh Thi', '2001-12-15','0388736182','Ben Tre', '478372',25);

Go


INSERT INTO HoaDonDatHang(MaNCC, MaNV, MaSP, NgayLapHoaDonDatHang, GiaTri, SoLuongDat)
VALUES (9, 21, 31,'2020-06-19',2030000000,40);

INSERT INTO HoaDonDatHang(MaNCC, MaNV, MaSP, NgayLapHoaDonDatHang, GiaTri, SoLuongDat)
VALUES (3, 3, 25,'2020-07-11',1300000000,100);

INSERT INTO HoaDonDatHang(MaNCC, MaNV, MaSP, NgayLapHoaDonDatHang, GiaTri, SoLuongDat)
VALUES (3, 1, 22,'2020-07-22',322000000,50);

INSERT INTO HoaDonDatHang(MaNCC, MaNV, MaSP, NgayLapHoaDonDatHang, GiaTri, SoLuongDat)
VALUES (4, 12, 8,'2020-07-25',1000000000,100);

INSERT INTO HoaDonDatHang(MaNCC, MaNV, MaSP, NgayLapHoaDonDatHang, GiaTri, SoLuongDat)
VALUES (5, 19, 32,'2020-08-05',360000000,90);

INSERT INTO HoaDonDatHang(MaNCC, MaNV, MaSP, NgayLapHoaDonDatHang, GiaTri, SoLuongDat)
VALUES (5, 20, 3,'2020-08-12',2000000000,60);

INSERT INTO HoaDonDatHang(MaNCC, MaNV, MaSP, NgayLapHoaDonDatHang, GiaTri, SoLuongDat)
VALUES (3, 2, 23,'2020-08-30',1410000000,100);

INSERT INTO HoaDonDatHang(MaNCC, MaNV, MaSP, NgayLapHoaDonDatHang, GiaTri, SoLuongDat)
VALUES (5, 21, 2,'2020-09-11',210000000,70);

INSERT INTO HoaDonDatHang(MaNCC, MaNV, MaSP, NgayLapHoaDonDatHang, GiaTri, SoLuongDat)
VALUES (5, 20, 1,'2020-09-12',1100000000,50);

INSERT INTO HoaDonDatHang(MaNCC, MaNV, MaSP, NgayLapHoaDonDatHang, GiaTri, SoLuongDat)
VALUES (3, 3, 24,'2020-09-18',580000000,90);

INSERT INTO HoaDonDatHang(MaNCC, MaNV, MaSP, NgayLapHoaDonDatHang, GiaTri, SoLuongDat)
VALUES (8, 21, 19,'2020-09-25',120000000,50);

INSERT INTO HoaDonDatHang(MaNCC, MaNV, MaSP, NgayLapHoaDonDatHang, GiaTri, SoLuongDat)
VALUES (3, 2, 26,'2020-09-26',300000000,100);

INSERT INTO HoaDonDatHang(MaNCC, MaNV, MaSP, NgayLapHoaDonDatHang, GiaTri, SoLuongDat)
VALUES (8, 21, 37,'2020-10-12',186000000,100);

INSERT INTO HoaDonDatHang(MaNCC, MaNV, MaSP, NgayLapHoaDonDatHang, GiaTri, SoLuongDat)
VALUES (3, 8, 27,'2020-10-24',1800000000,60);

INSERT INTO HoaDonDatHang(MaNCC, MaNV, MaSP, NgayLapHoaDonDatHang, GiaTri, SoLuongDat)
VALUES (9, 21, 30,'2020-10-25',439000000,40);

INSERT INTO HoaDonDatHang(MaNCC, MaNV, MaSP, NgayLapHoaDonDatHang, GiaTri, SoLuongDat)
VALUES (3, 8, 28,'2020-10-25',510000000,100);

INSERT INTO HoaDonDatHang(MaNCC, MaNV, MaSP, NgayLapHoaDonDatHang, GiaTri, SoLuongDat)
VALUES (4, 14, 6,'2020-10-29',290000000,50);

INSERT INTO HoaDonDatHang(MaNCC, MaNV, MaSP, NgayLapHoaDonDatHang, GiaTri, SoLuongDat)
VALUES (3, 10, 39,'2020-11-14',320000000,90);

INSERT INTO HoaDonDatHang(MaNCC, MaNV, MaSP, NgayLapHoaDonDatHang, GiaTri, SoLuongDat)
VALUES (6, 8, 10,'2020-11-25',260000000,60);

INSERT INTO HoaDonDatHang(MaNCC, MaNV, MaSP, NgayLapHoaDonDatHang, GiaTri, SoLuongDat)
VALUES (5, 16, 43,'2020-11-28',2000000000,65);

INSERT INTO HoaDonDatHang(MaNCC, MaNV, MaSP, NgayLapHoaDonDatHang, GiaTri, SoLuongDat)
VALUES (4, 22, 4,'2020-11-29',1600000000,90);

INSERT INTO HoaDonDatHang(MaNCC, MaNV, MaSP, NgayLapHoaDonDatHang, GiaTri, SoLuongDat)
VALUES (4, 22, 5,'2020-12-04',300000000,90);

INSERT INTO HoaDonDatHang(MaNCC, MaNV, MaSP, NgayLapHoaDonDatHang, GiaTri, SoLuongDat)
VALUES (4, 14, 7,'2020-12-09',310000000,100);

INSERT INTO HoaDonDatHang(MaNCC, MaNV, MaSP, NgayLapHoaDonDatHang, GiaTri, SoLuongDat)
VALUES (4, 23, 35,'2020-12-17',1500000000,90);

INSERT INTO HoaDonDatHang(MaNCC, MaNV, MaSP, NgayLapHoaDonDatHang, GiaTri, SoLuongDat)
VALUES (6, 8, 9,'2020-12-24',240000000,50);

INSERT INTO HoaDonDatHang(MaNCC, MaNV, MaSP, NgayLapHoaDonDatHang, GiaTri, SoLuongDat)
VALUES (6, 8, 11,'2020-12-28',270000000,100);

INSERT INTO HoaDonDatHang(MaNCC, MaNV, MaSP, NgayLapHoaDonDatHang, GiaTri, SoLuongDat)
VALUES (7, 21, 42,'2021-01-14',260000000,80);

INSERT INTO HoaDonDatHang(MaNCC, MaNV, MaSP, NgayLapHoaDonDatHang, GiaTri, SoLuongDat)
VALUES (8, 21, 18,'2021-01-29',225000000,100);

INSERT INTO HoaDonDatHang(MaNCC, MaNV, MaSP, NgayLapHoaDonDatHang, GiaTri, SoLuongDat)
VALUES (8, 21, 20,'2021-03-13',115000000,50);

INSERT INTO HoaDonDatHang(MaNCC, MaNV, MaSP, NgayLapHoaDonDatHang, GiaTri, SoLuongDat)
VALUES (8, 21, 33,'2021-03-25',300000000,100);

INSERT INTO HoaDonDatHang(MaNCC, MaNV, MaSP, NgayLapHoaDonDatHang, GiaTri, SoLuongDat)
VALUES (8, 21, 36,'2021-04-12',1700000000,100);

INSERT INTO HoaDonDatHang(MaNCC, MaNV, MaSP, NgayLapHoaDonDatHang, GiaTri, SoLuongDat)
VALUES (7, 21, 40,'2021-04-14',250000000,100);

INSERT INTO HoaDonDatHang(MaNCC, MaNV, MaSP, NgayLapHoaDonDatHang, GiaTri, SoLuongDat)
VALUES (6, 8, 12,'2021-04-26',205000000,100);

INSERT INTO HoaDonDatHang(MaNCC, MaNV, MaSP, NgayLapHoaDonDatHang, GiaTri, SoLuongDat)
VALUES (8, 21, 17,'2021-05-22',480000000,100);

INSERT INTO HoaDonDatHang(MaNCC, MaNV, MaSP, NgayLapHoaDonDatHang, GiaTri, SoLuongDat)
VALUES (7, 21, 41,'2021-10-12',200000000,100);

INSERT INTO HoaDonDatHang(MaNCC, MaNV, MaSP, NgayLapHoaDonDatHang, GiaTri, SoLuongDat)
VALUES (9, 21, 29,'2021-10-14',530000000,100);

Go

INSERT INTO KhachHang( HoTen, NgaySinh, SDT, Gmail,Id_Account)
VALUES ('Le Thi Kim Ngan', '2001-08-30','03832642202','lethikimngan@gmail.com',1);
INSERT INTO KhachHang( HoTen, NgaySinh, SDT, Gmail,Id_Account)
VALUES ('Bui Thi Ngan Tuyen', '2001-10-30','0384845202','buithingantuyen@gmail.com',2);
INSERT INTO KhachHang( HoTen, NgaySinh, SDT, Gmail,Id_Account)
VALUES ('Le Thi Vy', '2001-02-21','0381738219','lethivy@gmail.com',3);
INSERT INTO KhachHang( HoTen, NgaySinh, SDT, Gmail,Id_Account)
VALUES ('Bui Thi Huyen', '1998-12-30','0386736216','buithihuyen@gmail.com',4);
INSERT INTO KhachHang( HoTen, NgaySinh, SDT, Gmail,Id_Account)
VALUES ('Tran Van Tien', '2001-03-30','0387632819','tranvantien@gmail.com',5);
INSERT INTO KhachHang( HoTen, NgaySinh, SDT, Gmail,Id_Account)
VALUES ('Bui Thi Yen', '2001-02-12','0383672819','buithiyen@gmail.com',6);
INSERT INTO KhachHang( HoTen, NgaySinh, SDT, Gmail,Id_Account)
VALUES ('Nguyen Van Ha', '2001-05-24','0388739124','nguyenvanha@gmail.com',7);
INSERT INTO KhachHang( HoTen, NgaySinh, SDT, Gmail,Id_Account)
VALUES ('Bui Thi Kim', '1999-01-23','0386748362','buithikim@gmail.com',8);
INSERT INTO KhachHang( HoTen, NgaySinh, SDT, Gmail,Id_Account)
VALUES ('Nguyen Thi Ly', '1992-06-24','0383827184','nguyenthily@gmail.com',9);
INSERT INTO KhachHang( HoTen, NgaySinh, SDT, Gmail,Id_Account)
VALUES ('Ly Van Cuong', '1996-03-23','0383617461','lyvancuong@gmail.com',10);

INSERT INTO KhachHang( HoTen, NgaySinh, SDT, Gmail,Id_Account)
VALUES ('Doan Tuong Vy', '2001-12-1','0387483628','doantuongvy@gmail.com',11);
INSERT INTO KhachHang( HoTen, NgaySinh, SDT, Gmail,Id_Account)
VALUES ('Nguyen Van Khoi', '1994-12-11','0382435638','nguyenvankhoi@gmail.com',12);
INSERT INTO KhachHang( HoTen, NgaySinh, SDT, Gmail,Id_Account)
VALUES ('Tran Van Tuan', '1991-02-21','038763520','tranvantuan@gmail.com',13);
INSERT INTO KhachHang( HoTen, NgaySinh, SDT, Gmail,Id_Account)
VALUES ('Le Quang Nguyen', '1996-06-28','0387483729','lequangnguyen@gmail.com',14);
INSERT INTO KhachHang( HoTen, NgaySinh, SDT, Gmail,Id_Account)
VALUES ('Truong Ngoc Thanh', '1993-09-27','0387638914','truongngocthanh@gmail.com',15);
INSERT INTO KhachHang( HoTen, NgaySinh, SDT, Gmail,Id_Account)
VALUES ('Le Thi Linh', '2000-11-24','0384356782','lethilinh@gmail.com',16);
INSERT INTO KhachHang( HoTen, NgaySinh, SDT, Gmail,Id_Account)
VALUES ('Nguyen Phuong Tram', '1994-05-24','0388738362','nguyenphuongtram@gmail.com',17);
INSERT INTO KhachHang( HoTen, NgaySinh, SDT, Gmail,Id_Account)
VALUES ('Tran Trung Kien', '1994-08-16','0385783912','trantrungkien@gmail.com',18);
INSERT INTO KhachHang( HoTen, NgaySinh, SDT, Gmail,Id_Account)
VALUES ('Tran Phuong Linh ', '1999-09-22','0383487931','tranphuonglinh@gmail.com',19);
INSERT INTO KhachHang( HoTen, NgaySinh, SDT, Gmail,Id_Account)
VALUES ('Le Duy Khiem', '1994-05-21','0387382681','leduykhiem@gmail.com',20);

INSERT INTO KhachHang( HoTen, NgaySinh, SDT, Gmail,Id_Account)
VALUES ('Nguyen Phu Quy', '2001-12-13','0384356428','nguyenphuquy@gmail.com',21);
INSERT INTO KhachHang( HoTen, NgaySinh, SDT, Gmail,Id_Account)
VALUES ('Do Minh Tri', '1996-12-22','0383678291','dominhtri@gmail.com',22);
INSERT INTO KhachHang( HoTen, NgaySinh, SDT, Gmail,Id_Account)
VALUES ('Le Thi Hong', '1998-04-21','038324531','lethihong@gmail.com',23);
INSERT INTO KhachHang( HoTen, NgaySinh, SDT, Gmail,Id_Account)
VALUES ('Le Quang Khanh', '1996-09-12','03867382642','lequangkhanh@gmail.com',24);
INSERT INTO KhachHang( HoTen, NgaySinh, SDT, Gmail,Id_Account)
VALUES ('Tran Kim Uyen', '1999-05-27','03878365','trankimuyen@gmail.com',25);
INSERT INTO KhachHang( HoTen, NgaySinh, SDT, Gmail,Id_Account)
VALUES ('Nguyen Kim Anh', '2000-11-04','0387836282','nguyenkimanh@gmail.com',26);
INSERT INTO KhachHang( HoTen, NgaySinh, SDT, Gmail,Id_Account)
VALUES ('Nguyen Thi Xuyen', '1999-05-24','0388726351','nguyenthixuyen@gmail.com',27);
INSERT INTO KhachHang( HoTen, NgaySinh, SDT, Gmail,Id_Account)
VALUES ('Tran Thi Tran', '1992-07-18','0387638625','tranthitran@gmail.com',28);
INSERT INTO KhachHang( HoTen, NgaySinh, SDT, Gmail,Id_Account)
VALUES ('Tran Phuong Anh ', '1999-10-22','0387638265','tranphuonganh@gmail.com',29);
INSERT INTO KhachHang( HoTen, NgaySinh, SDT, Gmail,Id_Account)
VALUES ('Nguyen Van Minh', '1992-08-21','0383678262','nguyenvanminh@gmail.com',30);

Go
INSERT INTO HoaDonBanHang( Id_Account,userName, firstlastname, diachi, numberphone, gender, nationality, noted,ngaylaphoadonbanhang)
VALUES (55, 'kimngan042', 'ngan','12 Vo Van Ngan','0383****202', 'female','Viet nam', 'Dat Truoc','2020-10-12');
INSERT INTO HoaDonBanHang(Id_Account, userName, firstlastname, diachi, numberphone, gender, nationality, noted,ngaylaphoadonbanhang)
VALUES (54,'ngantuyen015', 'tuyen','16 Hoang Dieu Thu Duc','038****282', 'female','Viet nam', 'Dat Truoc','2020-05-02');
INSERT INTO HoaDonBanHang(Id_Account, userName, firstlastname, diachi, numberphone, gender, nationality, noted,ngaylaphoadonbanhang)
VALUES (53,'thivy231', 'vy','102/Le Van Duyet','038****219', 'female','Viet nam', 'Da thanh toan','2019-04-03');
INSERT INTO HoaDonBanHang( Id_Account,userName, firstlastname, diachi, numberphone, gender, nationality, noted,ngaylaphoadonbanhang)
VALUES (52, 'kimngan042', 'ngan','12 Vo Van Ngan','0383****202', 'female','Viet nam', 'Dat Truoc','2020-10-12');
INSERT INTO HoaDonBanHang(Id_Account, userName, firstlastname, diachi, numberphone, gender, nationality, noted,ngaylaphoadonbanhang)
VALUES (51,'ngantuyen015', 'tuyen','16 Hoang Dieu Thu Duc','038****282', 'female','Viet nam', 'Dat Truoc','2019-08-01');
INSERT INTO HoaDonBanHang(Id_Account, userName, firstlastname, diachi, numberphone, gender, nationality, noted,ngaylaphoadonbanhang)
VALUES (50,'thivy231', 'vy','102/Le Van Duyet','038****219', 'female','Viet nam', 'Da thanh toan','2020-05-03');

INSERT INTO HoaDonBanHang( Id_Account,userName, firstlastname, diachi, numberphone, gender, nationality, noted,ngaylaphoadonbanhang)
VALUES (49, 'kimngan042', 'ngan','12 Vo Van Ngan','0383****202', 'female','Viet nam', 'Dat Truoc','2001-10-12');
INSERT INTO HoaDonBanHang(Id_Account, userName, firstlastname, diachi, numberphone, gender, nationality, noted,ngaylaphoadonbanhang)
VALUES (48,'ngantuyen015', 'tuyen','16 Hoang Dieu Thu Duc','038****282', 'female','Viet nam', 'Dat Truoc','2001-05-02');
INSERT INTO HoaDonBanHang(Id_Account, userName, firstlastname, diachi, numberphone, gender, nationality, noted,ngaylaphoadonbanhang)
VALUES (47,'thivy231', 'vy','102/Le Van Duyet','038****219', 'female','Viet nam', 'Da thanh toan','2001-05-03');
INSERT INTO HoaDonBanHang(Id_Account, userName, firstlastname, diachi, numberphone, gender, nationality, noted,ngaylaphoadonbanhang)
VALUES (46,'huyenbui', 'Huyen','Binh Duong','038****216', 'female','Viet nam', 'Da Thanh Toan','2001-08-05');
INSERT INTO HoaDonBanHang( Id_Account,userName, firstlastname, diachi, numberphone, gender, nationality, noted,ngaylaphoadonbanhang)
VALUES (45,'yenbui211', 'yen','14/38 Tang Nhon Phu Quan 9','038****819', 'female','Viet nam', 'Dat Truoc','2001-12-05');
INSERT INTO HoaDonBanHang(Id_Account, userName, firstlastname, diachi, numberphone, gender, nationality, noted,ngaylaphoadonbanhang)
VALUES (44,'hanguyenvan098', 'ha','Linh Trung Thu Duc','038****124', 'male','Viet nam', 'Da thanh toan','2001-04-01');
INSERT INTO HoaDonBanHang(Id_Account, userName, firstlastname, diachi, numberphone, gender, nationality, noted,ngaylaphoadonbanhang)
VALUES (43,'kimbui', 'kim','18 Vo Van Ngan','038****362', 'male','Viet nam', 'Da thanh toan','2001-01-01');
INSERT INTO HoaDonBanHang(Id_Account, userName, firstlastname, diachi, numberphone, gender, nationality, noted,ngaylaphoadonbanhang)
VALUES (42,'lynguyen', 'ly','Binh Duong','038****184', 'female','Viet nam', 'Dat truoc','2001-02-01');
INSERT INTO HoaDonBanHang(Id_Account, userName, firstlastname, diachi, numberphone, gender, nationality, noted,ngaylaphoadonbanhang)
VALUES (41,'tranvantien', 'tien','28 Nguyen Duy Trinh Quan 2','038****362', 'male','Viet nam', 'Da thanh toan','2001-02-02');
INSERT INTO HoaDonBanHang(Id_Account, userName, firstlastname, diachi, numberphone, gender, nationality, noted,ngaylaphoadonbanhang)
VALUES (40,'lynguyen', 'ly','Linh Xuan Thu Duc','038****461', 'female','Viet nam', 'Dat truoc','2020-12-12');

INSERT INTO HoaDonBanHang(Id_Account, userName, firstlastname, diachi, numberphone, gender, nationality, noted,ngaylaphoadonbanhang)
VALUES (39,'vydoan221s', 'vy','Linh Xuan Thu Duc','0383****628', 'male','Viet nam', 'Dat Truoc','2020-02-12');
INSERT INTO HoaDonBanHang(Id_Account, userName, firstlastname, diachi, numberphone, gender, nationality, noted,ngaylaphoadonbanhang)
VALUES (38,'khoinguyenvan', 'khoi','22 Hoang Dieu Thu Duc','038****638', 'female','Viet nam', 'Da Thanh Toan','2020-03-05');
INSERT INTO HoaDonBanHang(Id_Account, userName, firstlastname, diachi, numberphone, gender, nationality, noted,ngaylaphoadonbanhang)
VALUES (37,'tuanvan', 'tuan','Tang Nhon Phu A quan 9','038****520', 'female','Viet nam', 'Da thanh toan','2020-02-09');
INSERT INTO HoaDonBanHang(Id_Account, userName, firstlastname, diachi, numberphone, gender, nationality, noted,ngaylaphoadonbanhang)
VALUES (36,'quangnguyen', 'nguyen','Quan Binh Thanh','038****729', 'female','Viet nam', 'Da Thanh Toan','2020-12-10');
INSERT INTO HoaDonBanHang(Id_Account, userName, firstlastname, diachi, numberphone, gender, nationality, noted,ngaylaphoadonbanhang)
VALUES (35,'ngocthanh', 'thanh','Quan 9','038****914', 'male','Viet nam', 'Dat Truoc','2020-10-12');
INSERT INTO HoaDonBanHang(Id_Account, userName, firstlastname, diachi, numberphone, gender, nationality, noted,ngaylaphoadonbanhang)
VALUES (34,'linhle', 'linh','101 Vo Van Ngan','038****782', 'male','Viet nam', 'Dat truoc','2020-10-10');
INSERT INTO HoaDonBanHang(Id_Account, userName, firstlastname, diachi, numberphone, gender, nationality, noted,ngaylaphoadonbanhang)
VALUES (33,'phuongtram', 'tram','Quan 5','038****362', 'male','Viet nam', 'Da thanh toan','2020-05-09');
INSERT INTO HoaDonBanHang(Id_Account, userName, firstlastname, diachi, numberphone, gender, nationality, noted,ngaylaphoadonbanhang)
VALUES (32,'trantrungkien', 'kien','Quan 9','038****912', 'female','Viet nam', 'Dat truoc','2019-06-07');
INSERT INTO HoaDonBanHang(Id_Account, userName, firstlastname, diachi, numberphone, gender, nationality, noted,ngaylaphoadonbanhang)
VALUES (31,'tranphuonglinh', 'linh','401 Nguyen Duy Trinh Quan 2','038****931', 'male','Viet nam', 'Da thanh toan','2019-08-02');
INSERT INTO HoaDonBanHang(Id_Account, userName, firstlastname, diachi, numberphone, gender, nationality, noted,ngaylaphoadonbanhang)
VALUES (30,'leduykhiem', 'khiem','Linh Trung Thu Duc','038****681', 'female','Viet nam', 'Dat Truoc','2019-02-06');

GO

INSERT INTO ThongTinUuDai(MaKH, MaHDBH, DiemTichLuy, ThoiGianTichLuy)
VALUES (1,1, 2,'2020-11-10');
INSERT INTO ThongTinUuDai(MaKH, MaHDBH, DiemTichLuy, ThoiGianTichLuy)
VALUES (2,2, 5,'2021-01-21');
INSERT INTO ThongTinUuDai(MaKH, MaHDBH, DiemTichLuy, ThoiGianTichLuy)
VALUES (3,2, 10,'2021-01-21');
INSERT INTO ThongTinUuDai(MaKH, MaHDBH, DiemTichLuy, ThoiGianTichLuy)
VALUES (4,2, 5,'2021-01-22');
INSERT INTO ThongTinUuDai(MaKH, MaHDBH, DiemTichLuy, ThoiGianTichLuy)
VALUES (5,2, 8,'2021-01-24');
INSERT INTO ThongTinUuDai(MaKH, MaHDBH, DiemTichLuy, ThoiGianTichLuy)
VALUES (6,1, 12,'2021-01-27');
INSERT INTO ThongTinUuDai(MaKH, MaHDBH, DiemTichLuy, ThoiGianTichLuy)
VALUES (7,2, 4,'2021-02-14');
INSERT INTO ThongTinUuDai(MaKH, MaHDBH, DiemTichLuy, ThoiGianTichLuy)
VALUES (8,2, 14,'2021-02-16');
INSERT INTO ThongTinUuDai(MaKH, MaHDBH, DiemTichLuy, ThoiGianTichLuy)
VALUES (9,2, 4,'2021-02-20');
INSERT INTO ThongTinUuDai(MaKH, MaHDBH, DiemTichLuy, ThoiGianTichLuy)
VALUES (10,2, 18,'2021-02-21');

INSERT INTO ThongTinUuDai(MaKH, MaHDBH, DiemTichLuy, ThoiGianTichLuy)
VALUES (11,2, 6,'2021-02-22');
INSERT INTO ThongTinUuDai(MaKH, MaHDBH, DiemTichLuy, ThoiGianTichLuy)
VALUES (12,1, 4,'2021-02-22');
INSERT INTO ThongTinUuDai(MaKH, MaHDBH, DiemTichLuy, ThoiGianTichLuy)
VALUES (13,3, 7,'2021-02-23');
INSERT INTO ThongTinUuDai(MaKH, MaHDBH, DiemTichLuy, ThoiGianTichLuy)
VALUES (14,2, 3,'2021-02-28');
INSERT INTO ThongTinUuDai(MaKH, MaHDBH, DiemTichLuy, ThoiGianTichLuy)
VALUES (15,1, 9,'2021-03-11');
INSERT INTO ThongTinUuDai(MaKH, MaHDBH, DiemTichLuy, ThoiGianTichLuy)
VALUES (16,3, 10,'2021-03-20');
INSERT INTO ThongTinUuDai(MaKH, MaHDBH, DiemTichLuy, ThoiGianTichLuy)
VALUES (17,2, 4,'2021-03-22');
INSERT INTO ThongTinUuDai(MaKH, MaHDBH, DiemTichLuy, ThoiGianTichLuy)
VALUES (18,1, 8,'2021-04-10');
INSERT INTO ThongTinUuDai(MaKH, MaHDBH, DiemTichLuy, ThoiGianTichLuy)
VALUES (19,2, 4,'2021-04-20');
INSERT INTO ThongTinUuDai(MaKH, MaHDBH, DiemTichLuy, ThoiGianTichLuy)
VALUES (20,1, 12,'2021-04-21');

INSERT INTO ThongTinUuDai(MaKH, MaHDBH, DiemTichLuy, ThoiGianTichLuy)
VALUES (21,2, 12,'2021-04-22');
INSERT INTO ThongTinUuDai(MaKH, MaHDBH, DiemTichLuy, ThoiGianTichLuy)
VALUES (22,3, 4,'2021-05-09');
INSERT INTO ThongTinUuDai(MaKH, MaHDBH, DiemTichLuy, ThoiGianTichLuy)
VALUES (23,2, 6,'2021-05-11');
INSERT INTO ThongTinUuDai(MaKH, MaHDBH, DiemTichLuy, ThoiGianTichLuy)
VALUES (24,1, 12,'2021-05-17');
INSERT INTO ThongTinUuDai(MaKH, MaHDBH, DiemTichLuy, ThoiGianTichLuy)
VALUES (25,3, 20,'2021-05-20');
INSERT INTO ThongTinUuDai(MaKH, MaHDBH, DiemTichLuy, ThoiGianTichLuy)
VALUES (26,3, 12,'2021-06-04');
INSERT INTO ThongTinUuDai(MaKH, MaHDBH, DiemTichLuy, ThoiGianTichLuy)
VALUES (27,2, 8,'2021-10-11');
INSERT INTO ThongTinUuDai(MaKH, MaHDBH, DiemTichLuy, ThoiGianTichLuy)
VALUES (28,1, 14,'2021-10-12');
INSERT INTO ThongTinUuDai(MaKH, MaHDBH, DiemTichLuy, ThoiGianTichLuy)
VALUES (29,3, 16,'2021-10-14');
INSERT INTO ThongTinUuDai(MaKH, MaHDBH, DiemTichLuy, ThoiGianTichLuy)
VALUES (30,2, 18,'2021-10-20');
GO
 

--Trigger Phan Quyen
Create trigger insertAccount on Account for insert as
declare @UserName NVARCHAR(50),  @PassWord NVARCHAR(50)
select @UserName = inserted.UserName , @PassWord = inserted.PassWord from inserted
declare @createlogin NVARCHAR(200)
declare @createuser NVARCHAR(200)
set @createlogin='CREATE LOGIN '+@UserName +' WITH PASSWORD =''' +@PassWord+''''
set @createuser='CREATE USER  '+@UserName +' FOR LOGIN ' +@UserName 
if(@UserName is not null)
Begin
	exec(@createlogin)
	exec(@createuser)
	if(@UserName not like 'NV%' )
		Begin
		print('Khach hang')
		exec  ('GRANT SELECT ON ThongTinSP TO ' + @UserName )
		exec  ('GRANT SELECT ON ThongTinUuDai TO ' + @UserName )
		exec  ('GRANT  insert,select,delete ON GioHang TO ' + @UserName )
		exec  ('GRANT SELECT ON KhachHang TO ' + @UserName )
		exec  ('GRANT update(PassWord),select,insert ON Account TO ' + @UserName )
		exec  ('GRANT SELECT ON HoaDonBanHang TO ' + @UserName )
		exec  ('DENY ALL ON HoaDonDatHang TO ' + @UserName )
		exec  ('DENY ALL ON NhaCungCap TO ' + @UserName )
		exec  ('DENY ALL ON NhanVien TO ' + @UserName )
		End
End

select  MaHDBH,HoaDonBanHang.Id_Account,userName,firstlastname,diachi, numberphone,gender,nationality,noted,ngaylaphoadonbanhang,MaSP,TenSP,GiaSP,SoLuong from HoaDonBanHang,GioHang where HoaDonBanHang.Id_Account=GioHang.Id_Account and month(HoaDonBanHang.ngaylaphoadonbanhang) like '%5%'
select  MaHDBH,HoaDonBanHang.Id_Account,userName,firstlastname,diachi, numberphone,gender,nationality,noted,ngaylaphoadonbanhang,MaSP,TenSP,GiaSP,SoLuong from HoaDonBanHang,GioHang where HoaDonBanHang.Id_Account=GioHang.Id_Account and month(HoaDonBanHang.ngaylaphoadonbanhang) like '%10%'