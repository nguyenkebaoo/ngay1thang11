Create database QLCuaHang

create table SanPham(
	MaSP int Primary key,
	TenSP Nvarchar(30)
)

create table TonKho(
	MaSP int,
	NgayTon Date,
	SLDau int ,
	SLNhap int,
	SLBan int,
	Primary key(MaSP,NgayTon),
	Constraint fk_TonKho Foreign Key(MaSP) references SanPham(MaSP)
)

create table HoaDon(
	MaHD int Primary key,
	NgayTao Date,
	TinhTrangThanhToan Nvarchar(50)
)

create table ChiTietHoaDon(
	MaHD int,
	MaSP int,
	SoLuong int,
	Primary Key(MaHD,MaSP),
	Constraint fk_CTHD_SP Foreign Key(MaSP) references SanPham(MaSP),
	Constraint fk_CTHD_HD Foreign Key(MaHD) references HoaDon(MaHD)
)