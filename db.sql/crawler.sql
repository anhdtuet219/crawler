-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2018 at 01:27 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crawler`
--

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `job_id` int(11) NOT NULL,
  `job_name` text NOT NULL,
  `job_link` text NOT NULL,
  `job_type` text NOT NULL,
  `job_salary` text NOT NULL,
  `job_location` text NOT NULL,
  `job_company` text NOT NULL,
  `source_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`job_id`, `job_name`, `job_link`, `job_type`, `job_salary`, `job_location`, `job_company`, `source_id`) VALUES
(1, 'Nhân Viên Kinh Doanh Quảng Cáo', 'https://careerbuilder.vn/vi/tim-viec-lam/nhan-vien-kinh-doanh-quang-cao.35AF0DD2.html', 'Tiếp thị / Marketing', 'Lương: 7 Tr - 15 Tr VND', 'Hồ Chí Minh', 'Công ty Cổ phần Quảng cáo Trực tuyến 24H', 3),
(2, 'Content Marketing', 'https://careerbuilder.vn/vi/tim-viec-lam/content-marketing.35AF064B.html', 'Tiếp thị / Marketing', 'Lương: 7 Tr - 10 Tr VND', 'Hà Nội', 'Công ty Cổ phần Base Enterprise', 3),
(3, 'Chuyên Viên Kinh Doanh', 'https://careerbuilder.vn/vi/tim-viec-lam/chuyen-vien-kinh-doanh.35AEADD8.html', 'Tiếp thị trực tuyến', 'Lương: 8 Tr - 10 Tr VND', 'Hồ Chí Minh', 'Công Ty Cổ Phần Lưới Thái Việt', 3),
(4, 'Nhân Viên Marketing Content', 'https://careerbuilder.vn/vi/tim-viec-lam/nhan-vien-marketing-content.35AE7CB0.html', 'Tiếp thị trực tuyến', 'Lương: Cạnh tranh', 'Hồ Chí Minh', 'Phòng khám chuyên khoa phẫu thuật thẩm mỹ Tiến Sĩ Trí', 3),
(5, 'Nhân Viên Tư Vấn Bán Hàng', 'https://careerbuilder.vn/vi/tim-viec-lam/nhan-vien-tu-van-ban-hang.35AEAB67.html', 'Bán lẻ / Bán sỉ', 'Lương: Trên 12 Tr VND', 'Hồ Chí Minh, Hà Nội', 'Công Ty CP Trang sức và Đồng Hồ Thụy Sĩ', 3),
(6, 'Sales Executive', 'https://careerbuilder.vn/vi/tim-viec-lam/sales-executive.35AEF67B.html', 'Bán lẻ / Bán sỉ', 'Lương: Trên 20 Tr VND', 'Hồ Chí Minh', 'Công Ty TNHH Conect', 3),
(7, 'Quản Lý Kinh Doanh Cấp Cao', 'https://careerbuilder.vn/vi/tim-viec-lam/quan-ly-kinh-doanh-cap-cao.35AEF3A6.html', 'Bán hàng / Kinh doanh', 'Lương: 8 Tr - 10 Tr VND', 'Hà Nội', 'Công ty TNHH Manulife Việt Nam', 3),
(8, 'Nhân Viên Kinh Doanh Quảng Cáo', 'https://careerbuilder.vn/vi/tim-viec-lam/nhan-vien-kinh-doanh-quang-cao.35AF0DD2.html', 'Bán hàng / Kinh doanh', 'Lương: 7 Tr - 15 Tr VND', 'Hồ Chí Minh', 'Công ty Cổ phần Quảng cáo Trực tuyến 24H', 3),
(9, 'Nhân Viên Tư Vấn Tuyển Sinh', 'https://careerbuilder.vn/vi/tim-viec-lam/nhan-vien-tu-van-tuyen-sinh.35AE9DA6.html', 'Tư vấn', 'Lương: 7 Tr - 20 Tr VND', 'Hồ Chí Minh', 'VI (Vietnam Investments) Group ', 3),
(10, 'Sales Executive', 'https://careerbuilder.vn/vi/tim-viec-lam/sales-executive.35AEF67B.html', 'Tư vấn', 'Lương: Trên 20 Tr VND', 'Hồ Chí Minh', 'Công Ty TNHH Conect', 3),
(11, 'Nhân Viên Bảo Vệ Trung Tâm Thể Dục Thể (Làm Ca) - Elite Fitness HCM', 'https://careerbuilder.vn/vi/tim-viec-lam/nhan-vien-bao-ve-trung-tam-the-duc-the-lam-ca-elite-fitness-hcm.35AEFC24.html', 'An Ninh / Bảo Vệ', 'Lương: 4 Tr - 6 Tr VND', 'Hồ Chí Minh', 'BIM Group', 3),
(12, 'Nhân Viên Bảo Vệ Part-Time (Nam)', 'https://careerbuilder.vn/vi/tim-viec-lam/nhan-vien-bao-ve-part-time-nam.35AF0F43.html', 'An Ninh / Bảo Vệ', 'Lương: 2 Tr - 3 Tr VND', 'Hồ Chí Minh', 'Trường Anh Ngữ Quốc Tế Việt Úc', 3),
(13, 'Phó Giám Đốc Ban Pháp Chế | CEO Group', 'https://careerbuilder.vn/vi/tim-viec-lam/pho-giam-doc-ban-phap-che-ceo-group.35AEB5C6.html', 'Luật / Pháp lý', 'Lương: Cạnh tranh', 'Hà Nội', 'Tập đoàn CEO', 3),
(14, 'Chuyên Viên Pháp Lý Cao Cấp', 'https://careerbuilder.vn/vi/tim-viec-lam/chuyen-vien-phap-ly-cao-cap.35AEB213.html', 'Luật / Pháp lý', 'Lương: Cạnh tranh', 'Hà Nội', 'BIM Group', 3),
(15, 'Nhân Viên Kinh Doanh Phầm Mềm - Thu Nhập 15Tr Trở Lên (30+ NVKD)', 'https://careerbuilder.vn/vi/tim-viec-lam/nhan-vien-kinh-doanh-pham-mem-thu-nhap-15tr-tro-len-30-nvkd.35AF0CF3.html', 'Dịch vụ khách hàng', 'Lương: Cạnh tranh', 'Hồ Chí Minh', 'Công ty Cổ phần MISA', 3),
(16, 'Pro Audio Sales', 'https://careerbuilder.vn/vi/tim-viec-lam/pro-audio-sales.35AEB2FB.html', 'Dịch vụ khách hàng', 'Lương: Cạnh tranh', 'Hồ Chí Minh', 'Công ty TNHH Âm Nhạc Yamaha Việt Nam', 3),
(17, 'Nhân Viên Tạp Vụ (Nam/Nữ) - Elite Fitness HCM', 'https://careerbuilder.vn/vi/tim-viec-lam/nhan-vien-tap-vu-nam-nu-elite-fitness-hcm.35AEA5AB.html', 'Lao động phổ thông', 'Lương: 4 Tr - 6 Tr VND', 'Hồ Chí Minh', 'BIM Group', 3),
(18, 'Nhân Viên Tài Xế', 'https://careerbuilder.vn/vi/tim-viec-lam/nhan-vien-tai-xe.35AEB7DA.html', 'Lao động phổ thông', 'Lương: Cạnh tranh', 'Hồ Chí Minh, Bình Dương, Đồng Nai', 'Trung tâm Hiệu chuẩn Kiểm định Khởi Toàn', 3),
(19, 'BDG- NHÂN VIÊN GIAO NHẬN HÀNG DỰ ÁN', 'https://careerbuilder.vn/vi/tim-viec-lam/bdg-nhan-vien-giao-nhan-hang-du-an.35AF0F4B.html', 'Bưu chính viễn thông', 'Lương: 0 - 0 VND', 'Bình Dương', 'KERRY EXPRESS (VIET NAM)', 3),
(20, 'Chuyên Viên Quản Lý Hệ Thống & Phần Mềm / Kho (Nữ)', 'https://careerbuilder.vn/vi/tim-viec-lam/chuyen-vien-quan-ly-he-thong-phan-mem-kho-nu.35AF07B4.html', 'Bưu chính viễn thông', 'Lương: 7 Tr - 9 Tr VND', 'Hồ Chí Minh', 'CÔNG TY CP GIẤY PHÙNG VĨNH HƯNG', 3),
(21, 'BDG- NHÂN VIÊN KHO LÀM VIỆC TẠI BÌNH DƯƠNG', 'https://careerbuilder.vn/vi/tim-viec-lam/bdg-nhan-vien-kho-lam-viec-tai-binh-duong.35AF0F70.html', 'Vận chuyển / Giao nhận / Kho vận', 'Lương: Cạnh tranh', 'Hồ Chí Minh', 'KERRY EXPRESS (VIET NAM)', 3),
(22, 'Nhân Viên Kho (Làm Việc Theo Ca) - Elite Fitness Đồng Khởi_Quận 1', 'https://careerbuilder.vn/vi/tim-viec-lam/nhan-vien-kho-lam-viec-theo-ca-elite-fitness-dong-khoi_quan-1.35AEB421.html', 'Vận chuyển / Giao nhận / Kho vận', 'Lương: 4 Tr - 6 Tr VND', 'Hồ Chí Minh', 'BIM Group', 3),
(23, 'NHÂN VIÊN PHÒNG PHÁP CHẾ - 13185', 'https://careerbuilder.vn/vi/tim-viec-lam/nhan-vien-phong-phap-che-13185.35AED113.html', 'Phi chính phủ / Phi lợi nhuận', 'Lương: 12 Tr - 20 Tr VND', 'Hà Nội', 'Hanoi Branch - Reeracoen Vietnam Co., Ltd', 3),
(24, 'Jobs In Thailand - New Vacancies For Technology Company', 'https://careerbuilder.vn/vi/tim-viec-lam/jobs-in-thailand-new-vacancies-for-technology-company.35AF0B9E.html', 'Phi chính phủ / Phi lợi nhuận', 'Lương: Cạnh tranh', 'Khác', 'iGlocal Resource JSC', 3),
(25, 'Bác Sĩ Gây Mê Hồi Sức', 'https://careerbuilder.vn/vi/tim-viec-lam/bac-si-gay-me-hoi-suc.35AEC91B.html', 'Y tế / Chăm sóc sức khỏe', 'Lương: 20 Tr - 25 Tr VND', 'Hồ Chí Minh', 'Công Ty Cổ Phần Bệnh Viện Răng Hàm Mặt Sài Gòn', 3),
(26, 'Chuyên Viên Kỹ Thuật (TP.HCM)', 'https://careerbuilder.vn/vi/tim-viec-lam/chuyen-vien-ky-thuat-tp-hcm.35AEF784.html', 'Y tế / Chăm sóc sức khỏe', 'Lương: 10 Tr - 15 Tr VND', 'Hồ Chí Minh', 'IDS Medical Systems (Vietnam) ', 3),
(27, 'Techincal Support Engineer', 'https://careerbuilder.vn/vi/tim-viec-lam/techincal-support-engineer.35AF0F2C.html', 'Dược phẩm', 'Lương: Cạnh tranh', 'Hồ Chí Minh', 'Carl Zeiss Pte. Ltd.', 3),
(28, 'KIỂM NGHIỆM VIÊN', 'https://careerbuilder.vn/vi/tim-viec-lam/kiem-nghiem-vien.35AEF613.html', 'Dược phẩm', 'Lương: 8 Tr - 13 Tr VND', 'Bình Dương', 'Abbott', 3),
(29, 'QA Manager', 'https://careerbuilder.vn/vi/tim-viec-lam/qa-manager.35AEFB0D.html', 'Dệt may / Da giày / Thời trang', 'Lương: Cạnh tranh', 'Hồ Chí Minh', 'Un-Available LTD Co.,', 3),
(30, 'Trưởng Bộ Phận Sản Xuất (Production Manager) - Tire Cord', 'https://careerbuilder.vn/vi/tim-viec-lam/truong-bo-phan-san-xuat-production-manager-tire-cord.35AEE434.html', 'Dệt may / Da giày / Thời trang', 'Lương: Cạnh tranh', 'Đồng Nai, Hồ Chí Minh, Bà Rịa - Vũng Tàu', 'Hyosung Vietnam ', 3),
(31, 'QC Nhà Máy', 'https://careerbuilder.vn/vi/tim-viec-lam/qc-nha-may.35AF0AE5.html', 'Quản lý chất lượng', 'Lương: 7 Tr - 10 Tr VND', 'Long An', 'Công Ty TNHH PEROMA Việt Nam', 3),
(32, 'Quality Engineer', 'https://careerbuilder.vn/vi/tim-viec-lam/quality-engineer.35AEF943.html', 'Quản lý chất lượng', 'Lương: Cạnh tranh', 'Đồng Nai', 'Cty TNHH Artus Vietnam', 3),
(33, 'Merchandiser', 'https://careerbuilder.vn/vi/tim-viec-lam/merchandiser.35AEF64F.html', 'Thu mua / Vật tư', 'Lương: Cạnh tranh', 'Hồ Chí Minh', 'VPĐD KT Group Inc Tại TP. Ho Chi Minh', 3),
(34, 'Nhân Viên Vật Tư - XNK', 'https://careerbuilder.vn/vi/tim-viec-lam/nhan-vien-vat-tu-xnk.35AE565B.html', 'Thu mua / Vật tư', 'Lương: Cạnh tranh', 'Hà Nội', 'BIM Group', 3),
(35, 'SITE SAFETY LEADER', 'https://careerbuilder.vn/vi/tim-viec-lam/site-safety-leader.35AF07CE.html', 'An toàn lao động', 'Lương: 14 Tr - 16 Tr VND', 'Hồ Chí Minh, Bà Rịa - Vũng Tàu, Bình Dương', 'CÔNG TY TNHH XÂY DỰNG TUẤN LÊ', 3),
(36, 'HSE Manager', 'https://careerbuilder.vn/vi/tim-viec-lam/hse-manager.35AEF9CF.html', 'An toàn lao động', 'Lương: 25 Tr - 40 Tr VND', 'Hồ Chí Minh', 'Savills Vietnam Co. Ltd', 3),
(37, 'Trưởng Bộ Phận Sản Xuất (Production Manager) - Tire Cord', 'https://careerbuilder.vn/vi/tim-viec-lam/truong-bo-phan-san-xuat-production-manager-tire-cord.35AEE434.html', 'Sản xuất / Vận hành sản xuất', 'Lương: Cạnh tranh', 'Đồng Nai, Hồ Chí Minh, Bà Rịa - Vũng Tàu', 'Hyosung Vietnam ', 3),
(38, 'Thông Dịch Tiếng Hàn ( Korean Interpreter )', 'https://careerbuilder.vn/vi/tim-viec-lam/thong-dich-tieng-han-korean-interpreter.35AF0A93.html', 'Sản xuất / Vận hành sản xuất', 'Lương: Cạnh tranh', 'Đồng Nai, Hồ Chí Minh, Bà Rịa - Vũng Tàu', 'Hyosung Vietnam ', 3),
(39, 'Nhân Viên Xuất Nhập Khẩu', 'https://careerbuilder.vn/vi/tim-viec-lam/nhan-vien-xuat-nhap-khau.35AF03A0.html', 'Xuất nhập khẩu', 'Lương: Cạnh tranh', 'Hồ Chí Minh', 'Công Ty TNHH Thương Mại Và Chuyển Phát Quốc Tế', 3),
(40, 'Nhân Viên Chứng Từ Xuất Nhập Khẩu', 'https://careerbuilder.vn/vi/tim-viec-lam/nhan-vien-chung-tu-xuat-nhap-khau.35AEFA7D.html', 'Xuất nhập khẩu', 'Lương: Cạnh tranh', 'Hồ Chí Minh', 'Công ty TNHH TM DV Giao Nhận Ánh Dương', 3),
(41, 'Phó Quản Đốc Phân Xưởng Mộc (Làm Việc Tại Cam Ranh)', 'https://careerbuilder.vn/vi/tim-viec-lam/pho-quan-doc-phan-xuong-moc-lam-viec-tai-cam-ranh.35AE5106.html', 'Đồ gỗ', 'Lương: 15 Tr - 20 Tr VND', 'Khánh Hòa', 'CÔNG TY CỔ PHẦN ĐẦU TƯ VÀ KINH DOANH GOLF LONG THÀNH', 3),
(42, 'Furniture QC Inspector', 'https://careerbuilder.vn/vi/tim-viec-lam/furniture-qc-inspector.35AEFCC9.html', 'Đồ gỗ', 'Lương: 8,8 Tr - 13,2 Tr VND', 'Bình Dương, Đồng Nai', 'PT. Mega Visindo Creative', 3),
(43, 'Chuyên viên Thiết kế đồ họa', 'https://careerbuilder.vn/vi/tim-viec-lam/chuyen-vien-thiet-ke-do-hoa.35AF0CB6.html', 'In ấn / Xuất bản', 'Lương: Cạnh tranh', 'Hồ Chí Minh', 'Lawrence S.Ting School (Trường THCS và THPT Đinh Thiện Lý)', 3),
(44, 'Customer Relationship Officer (Printing, 750USD++, HL3394)', 'https://careerbuilder.vn/vi/tim-viec-lam/customer-relationship-officer-printing-750usd-hl3394.35AEB4C7.html', 'In ấn / Xuất bản', 'Lương: Cạnh tranh', 'Hồ Chí Minh, Bình Dương, Đồng Nai', 'MegaCEO.com', 3),
(45, 'Trưởng Bộ Phận Dịch Vụ  Nhân Sự (C&B Leader)', 'https://careerbuilder.vn/vi/tim-viec-lam/truong-bo-phan-dich-vu-nhan-su-c-b-leader.35AEA043.html', 'Hàng gia dụng / Chăm sóc cá nhân', 'Lương: Cạnh tranh', 'Hồ Chí Minh', 'CÔNG TY TNHH HOA SEN VIỆT', 3),
(46, 'Nhân Viên Bán Hàng Tại Hệ Thống Siêu Thị Điện Máy  khu vực Hà Nội', 'https://careerbuilder.vn/vi/tim-viec-lam/nhan-vien-ban-hang-tai-he-thong-sieu-thi-dien-may-khu-vuc-ha-noi.35AF0FA3.html', 'Hàng gia dụng / Chăm sóc cá nhân', 'Lương: 6 Tr - 10 Tr VND', 'Hà Nội', 'Công Ty Cổ Phần TARA', 3),
(47, 'Nhân Viên Pha Chế (Part-Time) - Elite HCM', 'https://careerbuilder.vn/vi/tim-viec-lam/nhan-vien-pha-che-part-time-elite-hcm.35AF0B7D.html', 'Thực phẩm & Đồ uống', 'Lương: Cạnh tranh', 'Hồ Chí Minh', 'BIM Group', 3),
(48, 'Nhân Viên Pha Chế (Full-time) - Elite Fitness Thảo Điền - Quận 2', 'https://careerbuilder.vn/vi/tim-viec-lam/nhan-vien-pha-che-full-time-elite-fitness-thao-dien-quan-2.35AEFC33.html', 'Thực phẩm & Đồ uống', 'Lương: 4 Tr - 6 Tr VND', 'Hồ Chí Minh', 'BIM Group', 3),
(49, 'Nhân Viên Kinh Doanh Phầm Mềm - Thu Nhập 15Tr Trở Lên (30+ NVKD)', 'https://careerbuilder.vn/vi/tim-viec-lam/nhan-vien-kinh-doanh-pham-mem-thu-nhap-15tr-tro-len-30-nvkd.35AF0CF3.html', 'CNTT - Phần mềm', 'Lương: Cạnh tranh', 'Hồ Chí Minh', 'Công ty Cổ phần MISA', 3),
(50, '.NET, Java, JavaScript Developer', 'https://careerbuilder.vn/vi/tim-viec-lam/net-java-javascript-developer.35AF0CCA.html', 'CNTT - Phần mềm', 'Lương: Cạnh tranh', 'Hồ Chí Minh, Hà Nội', 'Công Ty Cổ Phần DV CN Tin Học HPT', 3),
(51, 'Chuyên Viên Công Nghệ Thông Tin IT Support', 'https://careerbuilder.vn/vi/tim-viec-lam/chuyen-vien-cong-nghe-thong-tin-it-support.35AF09D0.html', 'CNTT - Phần cứng / Mạng', 'Lương: Cạnh tranh', 'Cần Thơ', 'Tổng Công Ty Chuyển Phát Nhanh Bưu Điện', 3),
(52, 'ICT Network & System Team Leader', 'https://careerbuilder.vn/vi/tim-viec-lam/ict-network-system-team-leader.35AEB158.html', 'CNTT - Phần cứng / Mạng', 'Lương: Cạnh tranh', 'Hồ Chí Minh', 'Indo Trans Logistics', 3),
(53, 'Hành Chính Nhân Sự Tổng Hợp_ Gò Vấp Hồ Chí Minh', 'https://careerbuilder.vn/vi/tim-viec-lam/hanh-chinh-nhan-su-tong-hop_-go-vap-ho-chi-minh.35AF0E46.html', 'Nhân sự', 'Lương: 7 Tr - 9 Tr VND', 'Hồ Chí Minh', 'Công ty Cổ phần Mỹ phẩm Quốc tế Thùy Dung', 3),
(54, 'Quản Lý Tổng Vụ - GA Manager', 'https://careerbuilder.vn/vi/tim-viec-lam/quan-ly-tong-vu-ga-manager.35AF0C9F.html', 'Nhân sự', 'Lương: Cạnh tranh', 'Đồng Nai, Bà Rịa - Vũng Tàu, Hồ Chí Minh', 'Hyosung Vietnam ', 3),
(55, 'Thư Ký - Phiên Dịch', 'https://careerbuilder.vn/vi/tim-viec-lam/thu-ky-phien-dich.35AA0A35.html', 'Hành chính / Thư ký', 'Lương: Cạnh tranh', 'Hồ Chí Minh', 'Công Ty TNHH Kiểm Toán Và Tư Vấn A&C', 3),
(56, 'Quản Lý Tổng Vụ - GA Manager', 'https://careerbuilder.vn/vi/tim-viec-lam/quan-ly-tong-vu-ga-manager.35AF0C9F.html', 'Hành chính / Thư ký', 'Lương: Cạnh tranh', 'Đồng Nai, Bà Rịa - Vũng Tàu, Hồ Chí Minh', 'Hyosung Vietnam ', 3),
(57, 'Thư Ký - Phiên Dịch', 'https://careerbuilder.vn/vi/tim-viec-lam/thu-ky-phien-dich.35AA0A35.html', 'Biên phiên dịch', 'Lương: Cạnh tranh', 'Hồ Chí Minh', 'Công Ty TNHH Kiểm Toán Và Tư Vấn A&C', 3),
(58, 'Thông Dịch Viên Tiếng Hàn', 'https://careerbuilder.vn/vi/tim-viec-lam/thong-dich-vien-tieng-han.35AF0385.html', 'Biên phiên dịch', 'Lương: Cạnh tranh', 'Bình Dương', 'Công Ty TNHH ASFLOW VINA', 3),
(59, 'Chuyên Viên Cao Cấp – Mảng Xây Dựng Chương Trình - Mảng Đào Tạo', 'https://careerbuilder.vn/vi/tim-viec-lam/chuyen-vien-cao-cap-–-mang-xay-dung-chuong-trinh-mang-dao-tao.35AF0D92.html', 'Ngân hàng', 'Lương: Cạnh tranh', 'Hồ Chí Minh, KV Nam Trung Bộ', 'Ngân Hàng TMCP Công Thương Việt Nam', 3),
(60, 'Tuyển Dụng Cán Bộ Làm Việc Tại Trung Tâm Thẻ BIDV', 'https://careerbuilder.vn/vi/tim-viec-lam/tuyen-dung-can-bo-lam-viec-tai-trung-tam-the-bidv.35AEB3C4.html', 'Ngân hàng', 'Lương: Cạnh tranh', 'Hà Nội, Hồ Chí Minh', 'Ngân Hàng TMCP Đầu Tư và Phát Triển Việt Nam', 3),
(61, 'CHUYÊN VIÊN PHÂN TÍCH KỸ THUẬT', 'https://careerbuilder.vn/vi/tim-viec-lam/chuyen-vien-phan-tich-ky-thuat.35AF0F52.html', 'Chứng khoán', 'Lương: 10 Tr - 15 Tr VND', 'Hồ Chí Minh', 'Công ty Cổ phần Chứng khoán KIS Việt Nam', 3),
(62, 'Accounting and Finance Staff', 'https://careerbuilder.vn/vi/tim-viec-lam/accounting-and-finance-staff.35AF0EC6.html', 'Chứng khoán', 'Lương: 17,6 Tr - 28,6 Tr VND', 'Hà Nội', 'RGF HR Agent Vietnam Co., LTD', 3),
(63, 'Chuyên Viên Chính Sách Và Phúc Lợi (C&B)', 'https://careerbuilder.vn/vi/tim-viec-lam/chuyen-vien-chinh-sach-va-phuc-loi-c-b.35AEB21B.html', 'Bảo hiểm', 'Lương: Cạnh tranh', 'Hà Nội', 'BIM Group', 3),
(64, 'Chuyên Viên Tư Vấn Tài Chính Cấp Cao - Ngân Hàng VPBank TPHCM', 'https://careerbuilder.vn/vi/tim-viec-lam/chuyen-vien-tu-van-tai-chinh-cap-cao-ngan-hang-vpbank-tphcm.35AEE54E.html', 'Bảo hiểm', 'Lương: 12 Tr - 15 Tr VND', 'Hồ Chí Minh', 'Công ty TNHH Bảo Hiểm Nhân Thọ AIA Việt Nam', 3),
(65, 'Chuyên Viên Phòng Kế Hoạch Và Quản Lý Tài Chính Bán Lẻ', 'https://careerbuilder.vn/vi/tim-viec-lam/chuyen-vien-phong-ke-hoach-va-quan-ly-tai-chinh-ban-le.35AF0DA4.html', 'Tài chính / Đầu tư', 'Lương: Cạnh tranh', 'Hồ Chí Minh, KV Nam Trung Bộ', 'Ngân Hàng TMCP Công Thương Việt Nam', 3),
(66, 'Chuyên Viên Chính Quản Lý Rủi Ro Cân Đối Vốn, Tích Hợp', 'https://careerbuilder.vn/vi/tim-viec-lam/chuyen-vien-chinh-quan-ly-rui-ro-can-doi-von-tich-hop.35AF0D88.html', 'Tài chính / Đầu tư', 'Lương: Cạnh tranh', 'Hồ Chí Minh, KV Nam Trung Bộ', 'Ngân Hàng TMCP Công Thương Việt Nam', 3),
(67, 'Thư Ký - Phiên Dịch', 'https://careerbuilder.vn/vi/tim-viec-lam/thu-ky-phien-dich.35AA0A35.html', 'Kế toán / Kiểm toán', 'Lương: Cạnh tranh', 'Hồ Chí Minh', 'Công Ty TNHH Kiểm Toán Và Tư Vấn A&C', 3),
(68, 'Nhân Viên Kiểm Ngân Trung Tâm Quản Lý Tiền Mặt - Khu Vực Miền Nam', 'https://careerbuilder.vn/vi/tim-viec-lam/nhan-vien-kiem-ngan-trung-tam-quan-ly-tien-mat-khu-vuc-mien-nam.35AF0D6B.html', 'Kế toán / Kiểm toán', 'Lương: Cạnh tranh', 'Hồ Chí Minh, KV Nam Trung Bộ', 'Ngân Hàng TMCP Công Thương Việt Nam', 3),
(69, 'Cộng tác viên Phòng Marcom', 'https://careerbuilder.vn/vi/tim-viec-lam/cong-tac-vien-phong-marcom.35AF0F90.html', 'Tổ chức sự kiện', 'Lương: 4 Tr - 5 Tr VND', 'Hà Nội', 'Ngân Hàng TMCP Quốc Tế Việt Nam', 3),
(70, 'GIÁM SÁT TRUYỀN THÔNG (PR SUPERVISOR)', 'https://careerbuilder.vn/vi/tim-viec-lam/giam-sat-truyen-thong-pr-supervisor.35AF0F2D.html', 'Tổ chức sự kiện', 'Lương: 15 Tr - 25 Tr VND', 'Hồ Chí Minh', 'Công Ty Cổ Phần Tập Đoàn Trung Nguyên', 3),
(71, 'MARKETING EXECUTIVE  (Urgent)', 'https://careerbuilder.vn/vi/tim-viec-lam/marketing-executive-urgent.35AEF4C6.html', 'Truyền hình / Báo chí / Biên tập', 'Lương: 10 Tr - 14 Tr VND', 'Hồ Chí Minh', 'Công Ty Cổ Phần SKY Music', 3),
(72, 'Nhân Viên/Chuyên Viên Dựng Phim', 'https://careerbuilder.vn/vi/tim-viec-lam/nhan-vien-chuyen-vien-dung-phim.35AE5A33.html', 'Truyền hình / Báo chí / Biên tập', 'Lương: Cạnh tranh', 'Hồ Chí Minh', 'Công Ty Cổ Phần Đầu Tư Kinh Doanh Địa Ốc Hưng Thịnh', 3),
(73, 'SENIOR DESIGNER', 'https://careerbuilder.vn/vi/tim-viec-lam/senior-designer.35AF051B.html', 'Mỹ thuật / Nghệ thuật / Thiết kế', 'Lương: 20 Tr - 30 Tr VND', 'Hồ Chí Minh', 'Công Ty TNHH Đầu Tư Greencap	', 3),
(74, '2D Graphic Designer', 'https://careerbuilder.vn/vi/tim-viec-lam/2d-graphic-designer.35AEFD8F.html', 'Mỹ thuật / Nghệ thuật / Thiết kế', 'Lương: Cạnh tranh', 'Hồ Chí Minh', 'Công ty Cổ Phần Medicomm', 3),
(75, 'Nhân Viên Kinh Doanh Quảng Cáo', 'https://careerbuilder.vn/vi/tim-viec-lam/nhan-vien-kinh-doanh-quang-cao.35AF0DD2.html', 'Quảng cáo / Đối ngoại / Truyền Thông', 'Lương: 7 Tr - 15 Tr VND', 'Hồ Chí Minh', 'Công ty Cổ phần Quảng cáo Trực tuyến 24H', 3),
(76, 'Account Manager', 'https://careerbuilder.vn/vi/tim-viec-lam/account-manager.35AF0119.html', 'Quảng cáo / Đối ngoại / Truyền Thông', 'Lương: Cạnh tranh', 'Hồ Chí Minh', 'MAC Media', 3),
(77, 'Huấn Luyện Viên/Giáo Viên Dạy Bóng Đá', 'https://careerbuilder.vn/vi/tim-viec-lam/huan-luyen-vien-giao-vien-day-bong-da.35AF0EFC.html', 'Giải trí', 'Lương: 7 Tr - 9 Tr VND', 'Hồ Chí Minh, Hà Nội', ' Amitie Sports Club  (Công Ty Cổ Phần School Partner Việt Nam) ', 3),
(78, 'Kế Toán Tổng Hợp', 'https://careerbuilder.vn/vi/tim-viec-lam/ke-toan-tong-hop.35AF07AE.html', 'Giải trí', 'Lương: 8 Tr - 12 Tr VND', 'Hồ Chí Minh', 'CÔNG TY CỔ PHẦN ĐẦU TƯ  KHÔNG GIAN', 3),
(79, 'Sales Admin ( Chuyên Viên Hồ Sơ) | Ban Kinh Doanh CEO Group', 'https://careerbuilder.vn/vi/tim-viec-lam/sales-admin-chuyen-vien-ho-so-ban-kinh-doanh-ceo-group.35AEB5C7.html', 'Bất động sản', 'Lương: Cạnh tranh', 'Hà Nội', 'Tập đoàn CEO', 3),
(80, 'Trưởng Phòng Kế Hoạch – Kinh Doanh', 'https://careerbuilder.vn/vi/tim-viec-lam/truong-phong-ke-hoach-–-kinh-doanh.35AEF4A4.html', 'Bất động sản', 'Lương: 15 Tr - 20 Tr VND', 'Hồ Chí Minh', 'Công Ty Cổ Phần Địa Ốc 7', 3),
(81, 'Chuyên Viên Thiết Kế Nội Thất', 'https://careerbuilder.vn/vi/tim-viec-lam/chuyen-vien-thiet-ke-noi-that.35AED0A9.html', 'Nội ngoại thất', 'Lương: 8 Tr - 15 Tr VND', 'Hồ Chí Minh', 'Công Ty TNHH Thương Mại Trang Trí Nội Thất Thành Vinh', 3),
(82, 'nhân viên kinh doanh', 'https://careerbuilder.vn/vi/tim-viec-lam/nhan-vien-kinh-doanh.35AEFA06.html', 'Nội ngoại thất', 'Lương: 5 Tr - 10 Tr VND', 'Hồ Chí Minh', 'Công Ty TNHH Sản Xuất Thương Mại Dịch Vụ Nice Gates', 3),
(83, '03 Họa Viên Kiến Trúc', 'https://careerbuilder.vn/vi/tim-viec-lam/03-hoa-vien-kien-truc.35AF0F25.html', 'Kiến trúc', 'Lương: 13 Tr - 15 Tr VND', 'Hồ Chí Minh', 'Duong Dai Architects', 3),
(84, 'Chuyên viên Kiến trúc quy hoạch', 'https://careerbuilder.vn/vi/tim-viec-lam/chuyen-vien-kien-truc-quy-hoach.35AF0E73.html', 'Kiến trúc', 'Lương: Cạnh tranh', 'Hà Nội', 'Tập đoàn Capital House', 3),
(85, 'Construction Engineer', 'https://careerbuilder.vn/vi/tim-viec-lam/construction-engineer.35AF0F20.html', 'Xây dựng', 'Lương: 9 Tr - 10 Tr VND', 'Hồ Chí Minh, Bình Dương, Đồng Nai', 'Công Ty Obayashi Việt Nam', 3),
(86, 'Chuyên Viên Thương Mại', 'https://careerbuilder.vn/vi/tim-viec-lam/chuyen-vien-thuong-mai.35AEB2D8.html', 'Xây dựng', 'Lương: 9 Tr - 18 Tr VND', 'Hồ Chí Minh', 'Socon Vietnam Joint Stock Company', 3),
(87, 'Mechanical Engineer/ Master Data Engineer', 'https://careerbuilder.vn/vi/tim-viec-lam/mechanical-engineer-master-data-engineer.35AC77A7.html', 'Cơ khí / Ô tô / Tự động hóa', 'Lương: Cạnh tranh', 'Đồng Nai', 'SCHAEFFLER VIETNAM CO.,LTD', 3),
(88, 'Quản Đốc Xưởng Dịch Vụ', 'https://careerbuilder.vn/vi/tim-viec-lam/quan-doc-xuong-dich-vu.35AEB393.html', 'Cơ khí / Ô tô / Tự động hóa', 'Lương: 18 Tr - 35 Tr VND', 'Hồ Chí Minh', 'Công ty TNHH Dịch vụ Ôtô Sài Gòn Toyota Tsusho', 3),
(89, 'Quản Lý Tổng Vụ - GA Manager', 'https://careerbuilder.vn/vi/tim-viec-lam/quan-ly-tong-vu-ga-manager.35AF0C9F.html', 'Môi trường', 'Lương: Cạnh tranh', 'Đồng Nai, Bà Rịa - Vũng Tàu, Hồ Chí Minh', 'Hyosung Vietnam ', 3),
(90, 'Kỹ Sư Cảnh Quan KCN', 'https://careerbuilder.vn/vi/tim-viec-lam/ky-su-canh-quan-kcn.35AEB33A.html', 'Môi trường', 'Lương: Cạnh tranh', 'Hồ Chí Minh', 'Công ty Cổ phần KCN Hiệp Phước (HIPC)', 3),
(91, 'Customer Service Department', 'https://careerbuilder.vn/vi/tim-viec-lam/customer-service-department.35AEB300.html', 'Điện / Điện tử / Điện lạnh', 'Lương: Cạnh tranh', 'Hồ Chí Minh', 'Công ty TNHH Âm Nhạc Yamaha Việt Nam', 3),
(92, 'Kỹ Sư Điện Tử Viễn Thông', 'https://careerbuilder.vn/vi/tim-viec-lam/ky-su-dien-tu-vien-thong.35AF0BF5.html', 'Điện / Điện tử / Điện lạnh', 'Lương: Cạnh tranh', 'Hà Nội, Hải Phòng', 'Trung Tâm Mạng Lưới Mobifone Miền Bắc', 3),
(93, 'Trợ Lý Kinh Doanh', 'https://careerbuilder.vn/vi/tim-viec-lam/tro-ly-kinh-doanh.35AEF760.html', 'Hóa học', 'Lương: Cạnh tranh', 'Hồ Chí Minh', 'Công Ty CP Sản Xuất Thương Mại Dịch Vụ Minh Anh', 3),
(94, 'Management System Auditor (Chuyên gia đánh giá hệ thống)', 'https://careerbuilder.vn/vi/tim-viec-lam/management-system-auditor-chuyen-gia-danh-gia-he-thong.35AEC46A.html', 'Hóa học', 'Lương: Cạnh tranh', 'Hà Nội', 'Công ty  TNHH TUV NORD VIỆT NAM', 3),
(95, 'Production Control Manager (Binh Duong/Metal Processing) 13168', 'https://careerbuilder.vn/vi/tim-viec-lam/production-control-manager-binh-duong-metal-processing-13168.35AED07B.html', 'Khoáng sản', 'Lương: 11 Tr - 18 Tr VND', 'Bình Dương', 'Công Ty TNHH Reeracoen Việt Nam', 3),
(96, 'Tuyển Biên phiên dịch thời vụ tiếng anh hoặc tiếng ý', 'https://careerbuilder.vn/vi/tim-viec-lam/tuyen-bien-phien-dich-thoi-vu-tieng-anh-hoac-tieng-y.35AED70C.html', 'Khoáng sản', 'Lương: Cạnh tranh', 'Hà Nội, Hà Nam', 'Công Ty CP Casablanca', 3),
(97, 'Chuyên Viên Kinh Doanh: Hà Nội, Đà Nẵng / Sales Executive', 'https://careerbuilder.vn/vi/tim-viec-lam/chuyen-vien-kinh-doanh-ha-noi-da-nang-sales-executive.35AF0F69.html', 'Dầu khí', 'Lương: Dưới 40 Tr VND', 'Hà Nội, Đà Nẵng', 'Công Ty TNHH Tectyl Oil & Chemicals Vina', 3),
(98, '[Đồng Nai] Trưởng Phòng Nhân Sự - Tiếng Anh Tốt (Lương 25~30 Triệu)', 'https://careerbuilder.vn/vi/tim-viec-lam/dong-nai-truong-phong-nhan-su-tieng-anh-tot-luong-25-30-trieu.35AEB370.html', 'Dầu khí', 'Lương: 25 Tr - 30 Tr VND', 'Đồng Nai', 'Công Ty TNHH MTV Wacontre', 3),
(99, 'Trưởng phòng Kỹ thuật Bảo trì', 'https://careerbuilder.vn/vi/tim-viec-lam/truong-phong-ky-thuat-bao-tri.35AF0E71.html', 'Bảo trì / Sửa chữa', 'Lương: Cạnh tranh', 'Hồ Chí Minh', 'Metal Printing & Packaging Ltd.', 3),
(100, 'GIÁM SÁT KỸ THUẬT BẢO TRÌ ĐIỆN – ĐIỆN TỰ ĐỘNG (Electrical Automation Maintenance Supervisor)', 'https://careerbuilder.vn/vi/tim-viec-lam/giam-sat-ky-thuat-bao-tri-dien-–-dien-tu-dong-electrical-automation-maintenance-supervisor.35AEFDBE.html', 'Bảo trì / Sửa chữa', 'Lương: Cạnh tranh', 'Bà Rịa - Vũng Tàu, Hồ Chí Minh, Đồng Nai', 'Công ty Cổ Phần Giấy Sài Gòn - Saigon Paper', 3),
(101, 'Academic Coordinator', 'https://careerbuilder.vn/vi/tim-viec-lam/academic-coordinator.35AF0D4B.html', 'Thư viện', 'Lương: 5 Tr - 7 Tr VND', 'Hồ Chí Minh', 'Công Ty Cổ Phần Quản Lý Giáo Dục Và Đầu Tư  E M G', 3),
(102, 'Scheduling Officer', 'https://careerbuilder.vn/vi/tim-viec-lam/scheduling-officer.35AF0D46.html', 'Thư viện', 'Lương: Cạnh tranh', 'Hồ Chí Minh', 'Bảo mật', 3),
(103, 'Chuyên Viên Đào Tạo Nội Bộ', 'https://careerbuilder.vn/vi/tim-viec-lam/chuyen-vien-dao-tao-noi-bo.35AEB518.html', 'Giáo dục / Đào tạo', 'Lương: 5 Tr - 8 Tr VND', 'Hà Nội', 'Tổ Hợp Công Nghệ Giáo Dục Topica', 3),
(104, 'Giảng Viên Anh Ngữ', 'https://careerbuilder.vn/vi/tim-viec-lam/giang-vien-anh-ngu.35AF0AE4.html', 'Giáo dục / Đào tạo', 'Lương: Cạnh tranh', 'Hồ Chí Minh', 'Trường Anh Ngữ Quốc Tế Việt Úc', 3),
(105, 'Kỹ Sư Cảnh Quan KCN', 'https://careerbuilder.vn/vi/tim-viec-lam/ky-su-canh-quan-kcn.35AEB33A.html', 'Lâm Nghiệp', 'Lương: Cạnh tranh', 'Hồ Chí Minh', 'Công ty Cổ phần KCN Hiệp Phước (HIPC)', 3),
(106, 'Đội Trưởng Cây Xanh - Cảnh Quan', 'https://careerbuilder.vn/vi/tim-viec-lam/doi-truong-cay-xanh-canh-quan.35AEB2EA.html', 'Lâm Nghiệp', 'Lương: 15 Tr - 20 Tr VND', 'Hồ Chí Minh', 'Công Ty Cổ Phần XD & KD Nhà Đại Phúc', 3),
(107, 'Quản lý Nguôn nước nuôi Tôm Thương Phẩm', 'https://careerbuilder.vn/vi/tim-viec-lam/quan-ly-nguon-nuoc-nuoi-tom-thuong-pham.35AF0629.html', 'Thủy sản / Hải sản', 'Lương: Cạnh tranh', 'Bạc Liêu', 'Công Ty Cổ Phần Thủy Sản Việt Úc - Chi Nhánh Thành Phố Hồ Chí Minh', 3),
(108, 'Kế toán tổng hợp', 'https://careerbuilder.vn/vi/tim-viec-lam/ke-toan-tong-hop.35AEE6AB.html', 'Thủy sản / Hải sản', 'Lương: 7 Tr - 10 Tr VND', 'Hồ Chí Minh', 'H-TALENTSEARCH\'s CLIENT', 3),
(109, 'Management Trainee', 'https://careerbuilder.vn/vi/tim-viec-lam/management-trainee.35AF08F0.html', 'Công nghệ thực phẩm / Dinh dưỡng', 'Lương: 6 Tr - 10 Tr VND', 'Hà Nội, Hồ Chí Minh, Đà Nẵng', 'Công Ty Cổ Phần Đồ Hộp Hạ Long', 3),
(110, 'Management System Auditor (Chuyên gia đánh giá hệ thống)', 'https://careerbuilder.vn/vi/tim-viec-lam/management-system-auditor-chuyen-gia-danh-gia-he-thong.35AEC46A.html', 'Công nghệ thực phẩm / Dinh dưỡng', 'Lương: Cạnh tranh', 'Hà Nội', 'Công ty  TNHH TUV NORD VIỆT NAM', 3),
(111, 'Sales Admin', 'https://careerbuilder.vn/vi/tim-viec-lam/sales-admin.35AC673A.html', 'Thống kê', 'Lương: 8 Tr - 12 Tr VND', 'Hồ Chí Minh', 'Công Ty CP SX-TM Lý Bảo Minh', 3),
(112, 'Data Analyst', 'https://careerbuilder.vn/vi/tim-viec-lam/data-analyst.35AEA998.html', 'Thống kê', 'Lương: Cạnh tranh', 'Hồ Chí Minh', 'Home Credit Vietnam', 3),
(113, 'Kỹ Sư Cảnh Quan KCN', 'https://careerbuilder.vn/vi/tim-viec-lam/ky-su-canh-quan-kcn.35AEB33A.html', 'Nông nghiệp', 'Lương: Cạnh tranh', 'Hồ Chí Minh', 'Công ty Cổ phần KCN Hiệp Phước (HIPC)', 3),
(114, 'PRODUCT DEVELOPER', 'https://careerbuilder.vn/vi/tim-viec-lam/product-developer.35AEF004.html', 'Nông nghiệp', 'Lương: 20 Tr - 21 Tr VND', 'Lâm Đồng', 'Tropical Development & Investment Company Limited', 3),
(115, 'Pricing Executive _ Forwarding Field', 'https://careerbuilder.vn/vi/tim-viec-lam/pricing-executive-_-forwarding-field.35AF0E10.html', 'Hàng hải', 'Lương: Cạnh tranh', 'Hồ Chí Minh', 'EVERICH VIETNAM', 3),
(116, 'NHÂN VIÊN CHỨNG TỪ XNK', 'https://careerbuilder.vn/vi/tim-viec-lam/nhan-vien-chung-tu-xnk.35AF0D16.html', 'Hàng hải', 'Lương: Cạnh tranh', 'Bình Dương', 'CÔNG TY TNHH GIAO NHẬN THƯƠNG MẠI RỒNG Á CHÂU', 3),
(117, 'Nhân Viên Quản Lý Chất Lượng(QA)', 'https://careerbuilder.vn/vi/tim-viec-lam/nhan-vien-quan-ly-chat-luong-qa.35AEF2C3.html', 'Công nghệ sinh học', 'Lương: Cạnh tranh', 'Hồ Chí Minh', 'Công ty TNHH MTV Nhà máy Công nghệ Sinh học và Thiết bị Y tế', 3),
(118, 'Nhân Viên QA', 'https://careerbuilder.vn/vi/tim-viec-lam/nhan-vien-qa.35AF0F61.html', 'Công nghệ sinh học', 'Lương: 6,5 Tr - 7 Tr VND', 'Hồ Chí Minh', 'Công ty TNHH DV TM SX Trí Đức', 3),
(119, 'Chuyên viên Giải phóng Mặt bằng (SL:04) - Công ty CP Đầu tư và Xây dựng Tam Sơn', 'https://careerbuilder.vn/vi/tim-viec-lam/chuyen-vien-giai-phong-mat-bang-sl-04-cong-ty-cp-dau-tu-va-xay-dung-tam-son.35AF0E8B.html', 'Trắc địa / Địa Chất', 'Lương: Cạnh tranh', 'Hà Nội', ' Công ty CP Đầu tư và Xây dựng Tam Sơn', 3),
(120, 'Trưởng phòng Giải phóng mặt bằng - Công ty CP Đầu tư và Xây dựng Tam Sơn', 'https://careerbuilder.vn/vi/tim-viec-lam/truong-phong-giai-phong-mat-bang-cong-ty-cp-dau-tu-va-xay-dung-tam-son.35AF0DEF.html', 'Trắc địa / Địa Chất', 'Lương: Cạnh tranh', 'Hà Nội', 'Công ty CP Đầu tư và Xây dựng Tam Sơn', 3),
(121, 'KỸ SƯ THIẾT KẾ CẤP THOÁT NƯỚC', 'https://careerbuilder.vn/vi/tim-viec-lam/ky-su-thiet-ke-cap-thoat-nuoc.35AEF426.html', 'Thủy lợi', 'Lương: 10 Tr - 13,8 Tr VND', 'Hồ Chí Minh', 'Công Ty TNHH Tư Vấn Thiết Kế Xây dựng Anh Linh ( ALINCO)', 3),
(122, 'Chuyên Viên Dự Toán Phòng Kinh Tế Đấu Thầu', 'https://careerbuilder.vn/vi/tim-viec-lam/chuyen-vien-du-toan-phong-kinh-te-dau-thau.35AEC968.html', 'Thủy lợi', 'Lương: Cạnh tranh', 'Hà Nội', 'Công ty Cổ phần FECON', 3),
(123, 'Regulatory Affair Executive (Làm Việc Tại Bình Dương)', 'https://careerbuilder.vn/vi/tim-viec-lam/regulatory-affair-executive-lam-viec-tai-binh-duong.35AE5CF9.html', 'Chăn nuôi / Thú y', 'Lương: Cạnh tranh', 'Bình Dương', 'Công Ty TNHH Guyomarc\'h Việt Nam', 3),
(124, 'Sales Veterinary Medicine', 'https://careerbuilder.vn/vi/tim-viec-lam/sales-veterinary-medicine.35AF0F97.html', 'Chăn nuôi / Thú y', 'Lương: 8 Tr - 20 Tr VND', 'Đồng Bằng Sông Cửu Long, KV Đông Nam Bộ, KV Nam Trung Bộ', 'CÔNG TY TNHH MTV NEW WELL POWER VIỆT NAM', 3),
(125, 'Nhân viên pha chế - Bartender', 'https://careerbuilder.vn/vi/tim-viec-lam/nhan-vien-pha-che-bartender.35AF0FB2.html', 'Du lịch', 'Lương: 5 Tr - 10 Tr VND', 'Hồ Chí Minh', 'Công ty TNHH XNK Liên Thái Bình Dương', 3),
(126, 'Trưởng Phòng Chăm Sóc Khách Hàng (dịch vụ du lịch)', 'https://careerbuilder.vn/vi/tim-viec-lam/truong-phong-cham-soc-khach-hang-dich-vu-du-lich.35AF0FA9.html', 'Du lịch', 'Lương: 25 Tr - 30 Tr VND', 'Hồ Chí Minh', 'Công Ty Harvey Nash (Việt Nam)', 3),
(127, 'Nhân Viên Chăm Sóc Khách Hàng - Elite Fitness Vinh', 'https://careerbuilder.vn/vi/tim-viec-lam/nhan-vien-cham-soc-khach-hang-elite-fitness-vinh.35AE5EAD.html', 'Nhà hàng / Khách sạn', 'Lương: 5 Tr - 7 Tr VND', 'Hà Nội, Nghệ An, Hồ Chí Minh', 'Elite Fitness Vinh', 3),
(128, '[Đà Nẵng] Trợ Lý Quản Lý Nhà Hàng Phở 24', 'https://careerbuilder.vn/vi/tim-viec-lam/da-nang-tro-ly-quan-ly-nha-hang-pho-24.35AEAD95.html', 'Nhà hàng / Khách sạn', 'Lương: 5 Tr - 7 Tr VND', 'Đà Nẵng', 'Viet Thai International', 3),
(129, 'Giám Đốc Nhân Sự - Công Ty TNHH Hàng Không Tre Việt (Bamboo Airways)', 'https://careerbuilder.vn/vi/tim-viec-lam/giam-doc-nhan-su-cong-ty-tnhh-hang-khong-tre-viet-bamboo-airways.35AE5B55.html', 'Hàng không', 'Lương: Cạnh tranh', 'Hà Nội', 'Công Ty TNHH Hàng Không Tre Việt (Bamboo Airways)', 3),
(130, 'Network Control Agent, QCC & Transportation', 'https://careerbuilder.vn/vi/tim-viec-lam/network-control-agent-qcc-transportation.35AF0E80.html', 'Hàng không', 'Lương: Cạnh tranh', 'Hà Nội', 'DHL-VNPT Express Ltd.', 3),
(131, 'Quality Manager', 'https://careerbuilder.vn/vi/tim-viec-lam/quality-manager.35AEB4BB.html', 'Ngành khác', 'Lương: 20 Tr - 25 Tr VND', 'Hồ Chí Minh', 'Van Thiel & CO', 3),
(132, 'Product Development Assistant Coordinator -', 'https://careerbuilder.vn/vi/tim-viec-lam/product-development-assistant-coordinator.35AEC4F6.html', 'Ngành khác', 'Lương: 10 Tr - 15 Tr VND', 'Hồ Chí Minh', 'Van Thiel & CO', 3),
(133, 'PNJP - NHÂN VIÊN MÃ GIÁ', 'https://careerbuilder.vn/vi/tim-viec-lam/pnjp-nhan-vien-ma-gia.35AF0FA6.html', 'Việc làm nổi bật trong tuần', 'Lương: 8 Tr - 11 Tr VND', 'Hồ Chí Minh', '						\r\n								\r\n							Công Ty TNHH MTV Chế Tác và Kinh Doanh Trang Sức PNJ\r\n																	\r\n						', 3),
(134, 'Planner', 'https://careerbuilder.vn/vi/tim-viec-lam/planner.35AF0E7C.html', 'Việc làm nổi bật trong tuần', 'Lương: 9 Tr - 14 Tr VND', 'Đồng Nai', '						\r\n								\r\n							Sika Limited (Vietnam)\r\n																	\r\n						', 3),
(135, 'Nhân Viên Bảo Trì Điện', 'https://careerbuilder.vn/vi/tim-viec-lam/nhan-vien-bao-tri-dien.35AF0FB3.html', 'Việc làm $1000+', 'Lương: Cạnh tranh', 'Đồng Nai', 'SCHAEFFLER VIETNAM CO., LTD', 3),
(136, 'Quality Supervisor (Garments, 2000USD, X2942)', 'https://careerbuilder.vn/vi/tim-viec-lam/quality-supervisor-garments-2000usd-x2942.35AF0F9B.html', 'Việc làm $1000+', 'Lương: 33 Tr - 35,2 Tr VND', 'Hà Nội, Bắc Ninh, Hưng Yên', 'MegaCEO.com', 3),
(137, 'Lập Trình Viên', 'https://careerbuilder.vn/vi/tim-viec-lam/lap-trinh-vien.35AEC464.html', 'Mới tốt nghiệp / Thực tập', 'Lương: Cạnh tranh', 'Hồ Chí Minh', 'Công Ty CP Khoa Học Kỹ Thuật Tâm Đức', 3),
(138, 'Kỹ Sư Dự Toán Thiết Bị', 'https://careerbuilder.vn/vi/tim-viec-lam/ky-su-du-toan-thiet-bi.35AED797.html', 'Mới tốt nghiệp / Thực tập', 'Lương: Cạnh tranh', 'Hồ Chí Minh', 'Công Ty TNHH Sansei (Việt Nam)', 3),
(139, 'Chuyên Viên Đào Tạo Nội Bộ', 'https://careerbuilder.vn/vi/tim-viec-lam/chuyen-vien-dao-tao-noi-bo.35AEB518.html', 'Quản lý điều hành', 'Lương: 5 Tr - 8 Tr VND', 'Hà Nội', 'Tổ Hợp Công Nghệ Giáo Dục Topica', 3),
(140, 'Assistant Operations Manager - Elite Fitness HCM', 'https://careerbuilder.vn/vi/tim-viec-lam/assistant-operations-manager-elite-fitness-hcm.35AF0B79.html', 'Quản lý điều hành', 'Lương: 10 Tr - 12 Tr VND', 'Hồ Chí Minh', 'BIM Group', 3),
(141, 'NHÂN VIÊN SALES  - PURCHASING TẠI HÀ NAM (10 TRIỆU VNĐ)', 'https://careerbuilder.vn/vi/tim-viec-lam/nhan-vien-sales-purchasing-tai-ha-nam-10-trieu-vnd.35AF0F01.html', 'Thời vụ/ Nghề tự do', 'Lương: Cạnh Tranh', 'Hà Nam', 'Công Ty TNHH OS POWER Việt Nam', 3),
(142, 'Sales Staff (sản phẩm: vòng bi)', 'https://careerbuilder.vn/vi/tim-viec-lam/sales-staff-san-pham-vong-bi.35AF0EF0.html', 'Thời vụ/ Nghề tự do', 'Lương: 10 Tr - 18 Tr VND', 'Hà Nội', 'CÔNG TY TNHH JELLYFISH HR', 3),
(143, 'Cộng tác viên Phòng Marcom', 'https://careerbuilder.vn/vi/tim-viec-lam/cong-tac-vien-phong-marcom.35AF0F90.html', 'Tạm thời/ Dự án', 'Lương: 4 Tr - 5 Tr VND', 'Hà Nội', 'Ngân Hàng TMCP Quốc Tế Việt Nam', 3),
(144, 'Sustainability Leader', 'https://careerbuilder.vn/vi/tim-viec-lam/sustainability-leader.35AF0F38.html', 'Tạm thời/ Dự án', 'Lương: 17,6 Tr - 28,6 Tr VND', 'Gia Lai', 'iGlocal Resource JSC', 3),
(145, 'Nhân viên pha chế - Bartender', 'https://careerbuilder.vn/vi/tim-viec-lam/nhan-vien-pha-che-bartender.35AF0FB2.html', 'Việc làm tại Hồ Chí Minh', 'Lương: 5 Tr - 10 Tr VND', 'Hồ Chí Minh', 'Công ty TNHH XNK Liên Thái Bình Dương', 3),
(146, 'Nhân viên thiết kế_R & D Staff', 'https://careerbuilder.vn/vi/tim-viec-lam/nhan-vien-thiet-ke_r-d-staff.35AF0FB0.html', 'Việc làm tại Hồ Chí Minh', 'Lương: Cạnh tranh', 'Hồ Chí Minh', 'Công Ty TNHH Nidec Servo Việt Nam', 3),
(147, 'Quality Supervisor (Garments, 2000USD, X2942)', 'https://careerbuilder.vn/vi/tim-viec-lam/quality-supervisor-garments-2000usd-x2942.35AF0F9B.html', 'Việc làm tại Hà Nội', 'Lương: 33 Tr - 35,2 Tr VND', 'Hà Nội, Bắc Ninh, Hưng Yên', 'MegaCEO.com', 3),
(148, 'Junior Risk Committee & Stake Management Officer', 'https://careerbuilder.vn/vi/tim-viec-lam/junior-risk-committee-stake-management-officer.35AF0FA8.html', 'Việc làm tại Hà Nội', 'Lương: Cạnh tranh', 'Hà Nội', 'Ngân Hàng TMCP Việt Nam Thịnh Vượng - VPBANK', 3),
(149, 'Hub Manager (Thu Dau Mot)', 'https://careerbuilder.vn/vi/tim-viec-lam/hub-manager-thu-dau-mot.35AF0FA7.html', 'Việc làm tại Bình Dương', 'Lương: Cạnh tranh', 'Bình Dương', 'Công Ty TNHH Chuyển phát nhanh Lazada Việt Nam', 3),
(150, 'NHÂN VIÊN TUYỂN DỤNG', 'https://careerbuilder.vn/vi/tim-viec-lam/nhan-vien-tuyen-dung.35AF0F84.html', 'Việc làm tại Bình Dương', 'Lương: 7 Tr - 10 Tr VND', 'Bình Dương', 'Bảo mật', 3),
(151, 'Nhân Viên Bảo Trì Điện', 'https://careerbuilder.vn/vi/tim-viec-lam/nhan-vien-bao-tri-dien.35AF0FB3.html', 'Việc làm tại Đồng Nai', 'Lương: Cạnh tranh', 'Đồng Nai', 'SCHAEFFLER VIETNAM CO., LTD', 3),
(152, 'Senior Scheduling Specialist', 'https://careerbuilder.vn/vi/tim-viec-lam/senior-scheduling-specialist.35AF0FB1.html', 'Việc làm tại Đồng Nai', 'Lương: Cạnh tranh', 'Đồng Nai', 'SCHAEFFLER VIETNAM CO., LTD', 3),
(153, 'Nhân Viên Marketing (Chấp Nhận Fresher Ngành Marketing)  - Thời Vụ 6 Tháng', 'https://careerbuilder.vn/vi/tim-viec-lam/nhan-vien-marketing-chap-nhan-fresher-nganh-marketing-thoi-vu-6-thang.35AF0F9F.html', 'Việc làm tại Đà Nẵng', 'Lương: 6,5 Tr - 7,5 Tr VND', 'Đà Nẵng', 'Acacy', 3),
(154, 'Chuyên Viên Kinh Doanh: Hà Nội, Đà Nẵng / Sales Executive', 'https://careerbuilder.vn/vi/tim-viec-lam/chuyen-vien-kinh-doanh-ha-noi-da-nang-sales-executive.35AF0F69.html', 'Việc làm tại Đà Nẵng', 'Lương: Dưới 40 Tr VND', 'Hà Nội, Đà Nẵng', 'Công Ty TNHH Tectyl Oil & Chemicals Vina', 3),
(155, 'Chuyên Viên Hành Chính Nhân Sự', 'https://careerbuilder.vn/vi/tim-viec-lam/chuyen-vien-hanh-chinh-nhan-su.35AF0F76.html', 'Việc làm tại Long An', 'Lương: Cạnh tranh', 'Long An', 'Công ty Cổ phần Xây Dựng- Thương Mại An Xuân Thịnh', 3),
(156, 'KẾ TOÁN TRƯỞNG NHÀ MÁY', 'https://careerbuilder.vn/vi/tim-viec-lam/ke-toan-truong-nha-may.35AF0F55.html', 'Việc làm tại Long An', 'Lương: 18 Tr - 20 Tr VND', 'Long An', 'Tập Đoàn Tuấn Ân ', 3),
(157, 'Giám Sát Ca - Pizza Hut Bà Rịa (Sắp khai trương)', 'https://careerbuilder.vn/vi/tim-viec-lam/giam-sat-ca-pizza-hut-ba-ria-sap-khai-truong.35AF0FAC.html', 'Việc làm tại Bà Rịa - Vũng Tàu', 'Lương: Cạnh tranh', 'Bà Rịa - Vũng Tàu', 'Pizza Hut Viet Nam', 3),
(158, 'Quản Đốc sản xuất', 'https://careerbuilder.vn/vi/tim-viec-lam/quan-doc-san-xuat.35AF0EE3.html', 'Việc làm tại Bà Rịa - Vũng Tàu', 'Lương: Cạnh tranh', 'Bà Rịa - Vũng Tàu', 'IREX ENERGY JOINT TOCK COMPANY', 3),
(159, 'Sales Veterinary Medicine', 'https://careerbuilder.vn/vi/tim-viec-lam/sales-veterinary-medicine.35AF0F97.html', 'Việc làm tại Đồng Bằng Sông Cửu Long', 'Lương: 8 Tr - 20 Tr VND', 'Đồng Bằng Sông Cửu Long, KV Đông Nam Bộ, KV Nam Trung Bộ', 'CÔNG TY TNHH MTV NEW WELL POWER VIỆT NAM', 3),
(160, 'Nhân Viên Kinh Doanh Thuốc Thú Y', 'https://careerbuilder.vn/vi/tim-viec-lam/nhan-vien-kinh-doanh-thuoc-thu-y.35AF088C.html', 'Việc làm tại Đồng Bằng Sông Cửu Long', 'Lương: 8 Tr - 20 Tr VND', 'Đồng Bằng Sông Cửu Long, KV Đông Nam Bộ, KV Nam Trung Bộ', 'CÔNG TY TNHH MTV NEW WELL POWER VIỆT NAM', 3),
(161, 'Quản Lý Chất Lượng Dịch Vụ Khách Sạn', 'https://careerbuilder.vn/vi/tim-viec-lam/quan-ly-chat-luong-dich-vu-khach-san.35AEB319.html', 'Việc làm tại Cần Thơ', 'Lương: 5 Tr - 8 Tr VND', 'Bình Thuận, Cần Thơ, Lâm Đồng', 'Công Ty Cổ Phần Du Lịch Thành Thành Công', 3),
(162, 'Trình Dược Viên ETC - Ngành Hàng Dinh Dưỡng (Cần Thơ)', 'https://careerbuilder.vn/vi/tim-viec-lam/trinh-duoc-vien-etc-nganh-hang-dinh-duong-can-tho.35AEB59A.html', 'Việc làm tại Cần Thơ', 'Lương: Cạnh tranh', 'Cần Thơ', 'Abbott', 3),
(163, 'Nhân Viên Kinh Doanh', 'https://careerbuilder.vn/vi/tim-viec-lam/nhan-vien-kinh-doanh.35AF0EE9.html', 'Việc làm tại Hải Phòng', 'Lương: Cạnh tranh', 'Hải Phòng, Hà Nam, Đà Nẵng', 'Công Ty TNHH Quốc Tế Trà Giang', 3),
(164, 'Kế toán viên – MEDLATEC HẢI PHÒNG', 'https://careerbuilder.vn/vi/tim-viec-lam/ke-toan-vien-–-medlatec-hai-phong.35AF0D55.html', 'Việc làm tại Hải Phòng', 'Lương: 6 Tr - 8 Tr VND', 'Hải Phòng', 'CÔNG TY TNHH CÔNG NGHỆ VÀ XÉT NGHIỆM Y HỌC', 3),
(165, 'Chỉ Huy Trưởng Công Trình', 'https://careerbuilder.vn/vi/tim-viec-lam/chi-huy-truong-cong-trinh.35AF0DBC.html', 'Việc làm tại An Giang', 'Lương: Cạnh tranh', 'Hồ Chí Minh, An Giang, Long An', 'Công ty Cổ phần Xây Dựng- Thương Mại An Xuân Thịnh', 3),
(166, 'Quản lý Ngành hàng Phi thực phẩm - Long Xuyên', 'https://careerbuilder.vn/vi/tim-viec-lam/quan-ly-nganh-hang-phi-thuc-pham-long-xuyen.35AF0D9E.html', 'Việc làm tại An Giang', 'Lương: 15 Tr - 20 Tr VND', 'An Giang', 'MM Mega Market Vietnam', 3),
(167, 'ASM (MEKONG 3)', 'https://careerbuilder.vn/vi/tim-viec-lam/asm-mekong-3.35AF09C5.html', 'Việc làm tại Bạc Liêu', 'Lương: Cạnh tranh', 'Cà Mau, Cần Thơ, Bạc Liêu', 'Công Ty TNHH Chế Biến Thực Phẩm & Bánh Kẹo Phạm Nguyên', 3),
(168, 'Nhân Viên Phụ Tá Phát Triển Nhà Phân Phối KV Cà Mau - Bạc Liêu (Distributor Development Assistant)', 'https://careerbuilder.vn/vi/tim-viec-lam/nhan-vien-phu-ta-phat-trien-nha-phan-phoi-kv-ca-mau-bac-lieu-distributor-development-assistant.35AEAEAD.html', 'Việc làm tại Bạc Liêu', 'Lương: Cạnh tranh', 'Bạc Liêu, Cà Mau', 'Heineken Vietnam Brewery', 3),
(169, 'Nhân Viên Thẩm Định Hồ Sơ Tại Nhà - Tuyên Quang', 'https://careerbuilder.vn/vi/tim-viec-lam/nhan-vien-tham-dinh-ho-so-tai-nha-tuyen-quang.35AECD18.html', 'Việc làm tại Bắc Cạn', 'Lương: 7 Tr - 10 Tr VND', 'Tuyên Quang, Bắc Cạn, Yên Bái', 'FE Credit', 3),
(170, 'Bắc Kạn - Tuyển dụng Các vị trí Giám đốc Phòng Giao dịch, Chuyên viên KHCN, Chuyên viên Hỗ trợ hoạt động', 'https://careerbuilder.vn/vi/tim-viec-lam/bac-kan-tuyen-dung-cac-vi-tri-giam-doc-phong-giao-dich-chuyen-vien-khcn-chuyen-vien-ho-tro-hoat-dong.35AEF497.html', 'Việc làm tại Bắc Cạn', 'Lương: Cạnh tranh', 'Bắc Cạn', 'LienVietPostBank', 3),
(171, 'Nhân Viên Thẩm Định Hồ Sơ Tại Nhà - Bắc Giang', 'https://careerbuilder.vn/vi/tim-viec-lam/nhan-vien-tham-dinh-ho-so-tai-nha-bac-giang.35AF0F36.html', 'Việc làm tại Bắc Giang', 'Lương: 7 Tr - 12 Tr VND', 'Bắc Giang', 'FE Credit', 3),
(172, 'NV BIÊN PHIÊN DỊCH TIẾNG NHẬT - BẮC GIANG (500-750 USD)', 'https://careerbuilder.vn/vi/tim-viec-lam/nv-bien-phien-dich-tieng-nhat-bac-giang-500-750-usd.35AF0E09.html', 'Việc làm tại Bắc Giang', 'Lương: 11 Tr - 16,5 Tr VND', 'Bắc Giang', 'Công Ty TNHH OS POWER Việt Nam', 3),
(173, 'Quality Supervisor (Garments, 2000USD, X2942)', 'https://careerbuilder.vn/vi/tim-viec-lam/quality-supervisor-garments-2000usd-x2942.35AF0F9B.html', 'Việc làm tại Bắc Ninh', 'Lương: 33 Tr - 35,2 Tr VND', 'Hà Nội, Bắc Ninh, Hưng Yên', 'MegaCEO.com', 3),
(174, 'Nhân Viên Kỹ Thuật Ép Nhựa (500USD, NN3550)', 'https://careerbuilder.vn/vi/tim-viec-lam/nhan-vien-ky-thuat-ep-nhua-500usd-nn3550.35AF0EA2.html', 'Việc làm tại Bắc Ninh', 'Lương: 6,6 Tr - 11 Tr VND', 'Vĩnh Phúc, Hà Nội, Bắc Ninh', 'MegaCEO.com', 3),
(175, 'Trợ lý Giám đốc dự án', 'https://careerbuilder.vn/vi/tim-viec-lam/tro-ly-giam-doc-du-an.35AF0E82.html', 'Việc làm tại Bến Tre', 'Lương: 15 Tr - 25 Tr VND', 'Bến Tre, Hồ Chí Minh, Long An', 'CÔNG TY CỔ PHẦN THIÊN ANH SÀI GÒN', 3),
(176, 'NV Bán Hàng Tại Bến Tre', 'https://careerbuilder.vn/vi/tim-viec-lam/nv-ban-hang-tai-ben-tre.35AEB45A.html', 'Việc làm tại Bến Tre', 'Lương: 5 Tr - 7 Tr VND', 'Bến Tre', 'Công Ty CP SUNHOUSE Miền Nam', 3),
(177, 'Product and Mold Designer (1000USD, NN3551)', 'https://careerbuilder.vn/vi/tim-viec-lam/product-and-mold-designer-1000usd-nn3551.35AF0F8F.html', 'Việc làm tại Bình Định', 'Lương: 11 Tr - 22 Tr VND', 'Hồ Chí Minh, Bình Định, Đồng Nai', 'MegaCEO.com', 3),
(178, 'Nhân Viên Kinh Doanh Thị Trường Tại (Huyện Tây Sơn,phù Cát - Bình Định)', 'https://careerbuilder.vn/vi/tim-viec-lam/nhan-vien-kinh-doanh-thi-truong-tai-huyen-tay-son-phu-cat-binh-dinh.35AF0D21.html', 'Việc làm tại Bình Định', 'Lương: 7 Tr - 10 Tr VND', 'Bình Định', 'Acacy', 3),
(179, 'Quản lý bán hàng Khu vực Miền Đông (ASM)', 'https://careerbuilder.vn/vi/tim-viec-lam/quan-ly-ban-hang-khu-vuc-mien-dong-asm.35AF0EB3.html', 'Việc làm tại Bình Phước', 'Lương: 18 Tr - 25 Tr VND', 'Bình Dương, Bình Phước, Đồng Nai', 'Công Ty CP Sữa Quốc Tế IDP', 3),
(180, 'Nhân Viên Chứng Từ Xuất Nhập Khẩu Tiếng Trung - Bình Phước', 'https://careerbuilder.vn/vi/tim-viec-lam/nhan-vien-chung-tu-xuat-nhap-khau-tieng-trung-binh-phuoc.35AEB24A.html', 'Việc làm tại Bình Phước', 'Lương: Cạnh tranh', 'Bình Phước', 'Công Ty UNI GREEN', 3),
(181, 'Kỹ Sư M&E', 'https://careerbuilder.vn/vi/tim-viec-lam/ky-su-m-e.35AF0C7B.html', 'Việc làm tại Bình Thuận', 'Lương: 12 Tr - 16 Tr VND', 'Hồ Chí Minh, Bình Thuận, Khánh Hòa', 'Công Ty Cổ Phần Hưng Thịnh Incons', 3),
(182, 'Quản Lý Chất Lượng Dịch Vụ Khách Sạn', 'https://careerbuilder.vn/vi/tim-viec-lam/quan-ly-chat-luong-dich-vu-khach-san.35AEB319.html', 'Việc làm tại Bình Thuận', 'Lương: 5 Tr - 8 Tr VND', 'Bình Thuận, Cần Thơ, Lâm Đồng', 'Công Ty Cổ Phần Du Lịch Thành Thành Công', 3),
(183, 'Kỹ Sư Giám Sát Thi Công - Lv tại Cà Mau', 'https://careerbuilder.vn/vi/tim-viec-lam/ky-su-giam-sat-thi-cong-lv-tai-ca-mau.35AF0D7B.html', 'Việc làm tại Cà Mau', 'Lương: 7 Tr - 15 Tr VND', 'Bình Dương, Hồ Chí Minh, Cà Mau', 'Công Ty Cổ Phần Xây Dựng U&I', 3),
(184, '[Cà Mau] Chuyên Viên Tư Vấn Tài Chính - Kênh Hợp Tác Ngân Hàng', 'https://careerbuilder.vn/vi/tim-viec-lam/ca-mau-chuyen-vien-tu-van-tai-chinh-kenh-hop-tac-ngan-hang.35AEB1CF.html', 'Việc làm tại Cà Mau', 'Lương: 8 Tr - 21 Tr VND', 'Cà Mau', 'Công ty TNHH BHNT Prudential Việt Nam', 3),
(185, 'Nhân viên bán hàng - Cao Bằng', 'https://careerbuilder.vn/vi/tim-viec-lam/nhan-vien-ban-hang-cao-bang.35AF07BF.html', 'Việc làm tại Cao Bằng', 'Lương: 15 Tr - 20 Tr VND', 'Cao Bằng', 'Công Ty CP Dược Phẩm Việt Đức', 3),
(186, '[Cao Bằng] - Giám Sát Bán Hàng', 'https://careerbuilder.vn/vi/tim-viec-lam/cao-bang-giam-sat-ban-hang.35AEA97F.html', 'Việc làm tại Cao Bằng', 'Lương: Cạnh tranh', 'Cao Bằng', 'Công Ty CP Sữa Quốc Tế IDP', 3),
(187, 'Cộng tác viên Trợ Đối Tác GrabBike (Hà Nội)', 'https://careerbuilder.vn/vi/tim-viec-lam/cong-tac-vien-tro-doi-tac-grabbike-ha-noi.35AF0ED7.html', 'Việc làm tại Dak Lak', 'Lương: Cạnh tranh', 'Quảng Ninh, Vĩnh Phúc, Dak Lak', 'Công Ty TNHH GrabTaxi', 3),
(188, 'Nhân Viên Thu Hồi Nợ Tại Nhà - Đắc Lắc, Gia Lai, Bình Định', 'https://careerbuilder.vn/vi/tim-viec-lam/nhan-vien-thu-hoi-no-tai-nha-dac-lac-gia-lai-binh-dinh.35AF0CE5.html', 'Việc làm tại Dak Lak', 'Lương: 7 Tr - 12 Tr VND', 'Dak Lak, Gia Lai, Bình Định', 'FE Credit', 3),
(189, 'Đắk Nông - Tuyển dụng Chuyên viên Khách hàng Doanh nghiệp', 'https://careerbuilder.vn/vi/tim-viec-lam/dak-nong-tuyen-dung-chuyen-vien-khach-hang-doanh-nghiep.35AEFA3B.html', 'Việc làm tại Dak Nông', 'Lương: Cạnh tranh', 'Dak Nông', 'LienVietPostBank', 3),
(190, '[Viễn Thông A] Quản Lý Siêu Thị - Các Tỉnh Miền Trung', 'https://careerbuilder.vn/vi/tim-viec-lam/vien-thong-a-quan-ly-sieu-thi-cac-tinh-mien-trung.35AEAEE9.html', 'Việc làm tại Dak Nông', 'Lương: 7 Tr - 10 Tr VND', 'Đồng Nai, Dak Nông, Khánh Hòa', 'Công Ty CP SX TM XNK Viễn Thông A', 3),
(191, 'Giám Sát Bán Hàng KV Điện Biên - Sơn La', 'https://careerbuilder.vn/vi/tim-viec-lam/giam-sat-ban-hang-kv-dien-bien-son-la.35AEE182.html', 'Việc làm tại Điện Biên', 'Lương: 12 Tr - 15 Tr VND', 'Điện Biên, Sơn La', 'Công ty Cổ Phần Hương Vang', 3),
(192, 'Giám sát bán hàng( Điện Biên- Lai Châu)', 'https://careerbuilder.vn/vi/tim-viec-lam/giam-sat-ban-hang-dien-bien-lai-chau.35AEE009.html', 'Việc làm tại Điện Biên', 'Lương: Cạnh tranh', 'Lai Châu, Điện Biên', 'Công Ty Cổ Phần Diana Unicharm', 3),
(193, 'Giám Sát Bán Hàng (Kênh GT) Tại Đồng Tháp', 'https://careerbuilder.vn/vi/tim-viec-lam/giam-sat-ban-hang-kenh-gt-tai-dong-thap.35AF0CD5.html', 'Việc làm tại Đồng Tháp', 'Lương: 9,6 Tr - 16 Tr VND', 'Đồng Tháp', 'Công Ty Cổ Phần Chuỗi Thực Phẩm TH', 3),
(194, 'Chuyên Viên Hoạch Định Tài Chính Tại  Sa Đéc - Đồng Tháp', 'https://careerbuilder.vn/vi/tim-viec-lam/chuyen-vien-hoach-dinh-tai-chinh-tai-sa-dec-dong-thap.35AEB551.html', 'Việc làm tại Đồng Tháp', 'Lương: 6 Tr - 21 Tr VND', 'Đồng Tháp', 'Công Ty TNHH BHNT Prudential Việt Nam', 3),
(195, 'Sustainability Leader', 'https://careerbuilder.vn/vi/tim-viec-lam/sustainability-leader.35AF0F38.html', 'Việc làm tại Gia Lai', 'Lương: 17,6 Tr - 28,6 Tr VND', 'Gia Lai', 'iGlocal Resource JSC', 3),
(196, 'Nhân Viên Thu Hồi Nợ Tại Nhà - Đắc Lắc, Gia Lai, Bình Định', 'https://careerbuilder.vn/vi/tim-viec-lam/nhan-vien-thu-hoi-no-tai-nha-dac-lac-gia-lai-binh-dinh.35AF0CE5.html', 'Việc làm tại Gia Lai', 'Lương: 7 Tr - 12 Tr VND', 'Dak Lak, Gia Lai, Bình Định', 'FE Credit', 3),
(197, '[Viễn Thông A] Giám Đốc Kinh Doanh Khu Vực Tây Bắc', 'https://careerbuilder.vn/vi/tim-viec-lam/vien-thong-a-giam-doc-kinh-doanh-khu-vuc-tay-bac.35AEF61D.html', 'Việc làm tại Hà Giang', 'Lương: Trên 20 Tr VND', 'Vĩnh Phúc, Hà Giang, Tuyên Quang', 'Công Ty CP SX TM XNK Viễn Thông A', 3),
(198, 'Giám Sát Bán Hàng Kênh Truyền Thống Tại Tuyên Quang - Hà Giang - Mức Lương 10 – 20 triệu', 'https://careerbuilder.vn/vi/tim-viec-lam/giam-sat-ban-hang-kenh-truyen-thong-tai-tuyen-quang-ha-giang-muc-luong-10-–-20-trieu.35AEC785.html', 'Việc làm tại Hà Giang', 'Lương: 10 Tr - 20 Tr VND', 'Tuyên Quang, Hà Giang', 'CÔNG TY CP PHÂN PHỐI VÀ BÁN LẺ BT (BTCOM)', 3),
(199, 'NHÂN VIÊN SALES  - PURCHASING TẠI HÀ NAM (10 TRIỆU VNĐ)', 'https://careerbuilder.vn/vi/tim-viec-lam/nhan-vien-sales-purchasing-tai-ha-nam-10-trieu-vnd.35AF0F01.html', 'Việc làm tại Hà Nam', 'Lương: Cạnh tranh', 'Hà Nam', 'Công Ty TNHH OS POWER Việt Nam', 3),
(200, 'Nhân Viên Kinh Doanh', 'https://careerbuilder.vn/vi/tim-viec-lam/nhan-vien-kinh-doanh.35AF0EE9.html', 'Việc làm tại Hà Nam', 'Lương: Cạnh tranh', 'Hải Phòng, Hà Nam, Đà Nẵng', 'Công Ty TNHH Quốc Tế Trà Giang', 3),
(201, 'Production Manager', 'https://careerbuilder.vn/vi/tim-viec-lam/production-manager.35AE597C.html', 'Việc làm tại Hà Tây', 'Lương: 45 Tr - 50 Tr VND', 'Hà Tây', 'First Alliances', 3),
(202, '[Phủ Lỗ - Sóc Sơn] Nhân Viên Điều Phối Vận Tải', 'https://careerbuilder.vn/vi/tim-viec-lam/phu-lo-soc-son-nhan-vien-dieu-phoi-van-tai.35AE4B46.html', 'Việc làm tại Hà Tây', 'Lương: 5 Tr - 7 Tr VND', 'Hà Nội, Bắc Ninh, Hà Tây', 'Giao hàng tiết kiệm', 3),
(203, 'Hà Tĩnh - Tuyển dụng các vị trí Chuyên viên/Giao dịch viên', 'https://careerbuilder.vn/vi/tim-viec-lam/ha-tinh-tuyen-dung-cac-vi-tri-chuyen-vien-giao-dich-vien.35AF0F45.html', 'Việc làm tại Hà Tĩnh', 'Lương: Cạnh tranh', 'Hà Tĩnh', 'LienVietPostBank', 3),
(204, 'KỸ SƯ ĐƯỜNG ỐNG BIẾT TIẾNG TRUNG', 'https://careerbuilder.vn/vi/tim-viec-lam/ky-su-duong-ong-biet-tieng-trung.35AED1B4.html', 'Việc làm tại Hà Tĩnh', 'Lương: Cạnh tranh', 'Hà Tĩnh', 'CÔNG TY TNHH CHINA ECOTEK VIỆT NAM', 3),
(205, 'Nhân Viên Thẩm Định Hồ Sơ Tại Nhà - Hải Dương', 'https://careerbuilder.vn/vi/tim-viec-lam/nhan-vien-tham-dinh-ho-so-tai-nha-hai-duong.35AF0F3F.html', 'Việc làm tại Hải Dương', 'Lương: 7 Tr - 12 Tr VND', 'Hải Dương', 'FE Credit', 3),
(206, '(ĐI LÀM NGAY) NHÂN VIÊN BÁN HÀNG SIÊU THỊ TẠI KINH MÔN, HẢI DƯƠNG', 'https://careerbuilder.vn/vi/tim-viec-lam/di-lam-ngay-nhan-vien-ban-hang-sieu-thi-tai-kinh-mon-hai-duong.35AF0C85.html', 'Việc làm tại Hải Dương', 'Lương: 4 Tr - 5 Tr VND', 'Hải Dương, Hà Nội', 'Công ty TNHH Chế biến thực phẩm Đông Đô', 3),
(207, 'Giám sát bán hàng', 'https://careerbuilder.vn/vi/tim-viec-lam/giam-sat-ban-hang.35AED01E.html', 'Việc làm tại Hậu Giang', 'Lương: 8 Tr - 15 Tr VND', 'Hậu Giang, Kiên Giang, Sóc Trăng', 'Công Ty TNHH United Family Food Việt Nam', 3);
INSERT INTO `jobs` (`job_id`, `job_name`, `job_link`, `job_type`, `job_salary`, `job_location`, `job_company`, `source_id`) VALUES
(208, 'Kỹ sư tự dộng hóa', 'https://careerbuilder.vn/vi/tim-viec-lam/ky-su-tu-dong-hoa.35AEE605.html', 'Việc làm tại Hậu Giang', 'Lương: Cạnh tranh', 'Hậu Giang', 'Masan Consumer', 3),
(209, 'Nhân viên quản lý sản xuất', 'https://careerbuilder.vn/vi/tim-viec-lam/nhan-vien-quan-ly-san-xuat.35AECF3C.html', 'Việc làm tại Hòa Bình', 'Lương: Cạnh tranh', 'Hòa Bình', 'Công ty TNHH CNPlus Vina', 3),
(210, 'Nhân Viên Thẩm Định Hồ Sơ Tại Nhà - Hòa Bình', 'https://careerbuilder.vn/vi/tim-viec-lam/nhan-vien-tham-dinh-ho-so-tai-nha-hoa-binh.35AED19B.html', 'Việc làm tại Hòa Bình', 'Lương: 10 Tr - 12 Tr VND', 'Hòa Bình', 'FE Credit', 3),
(211, 'Quality Supervisor (Garments, 2000USD, X2942)', 'https://careerbuilder.vn/vi/tim-viec-lam/quality-supervisor-garments-2000usd-x2942.35AF0F9B.html', 'Việc làm tại Hưng Yên', 'Lương: 33 Tr - 35,2 Tr VND', 'Hà Nội, Bắc Ninh, Hưng Yên', 'MegaCEO.com', 3),
(212, 'Tuyển Kế toán vật tư - Gấp', 'https://careerbuilder.vn/vi/tim-viec-lam/tuyen-ke-toan-vat-tu-gap.35AF0F53.html', 'Việc làm tại Hưng Yên', 'Lương: 5,5 Tr - 6 Tr VND', 'Hưng Yên', 'Công Ty CP Anova Feed', 3),
(213, 'Trưởng Ca_Nhà Hàng_TP Vinh, Nghệ An', 'https://careerbuilder.vn/vi/tim-viec-lam/truong-ca_nha-hang_tp-vinh-nghe-an.35AEC23A.html', 'Việc làm tại Khác', 'Lương: Cạnh tranh', 'Nghệ An, Khác', 'Pizza Hut Viet Nam', 3),
(214, 'Quản Lý Kinh Doanh Khư Vực Miền Bắc (ASM)', 'https://careerbuilder.vn/vi/tim-viec-lam/quan-ly-kinh-doanh-khu-vuc-mien-bac-asm.35AF07BA.html', 'Việc làm tại Khác', 'Lương: 15 Tr - 20 Tr VND', 'Hà Nội, Khác, Khác', 'Công Ty Cổ Phần Thực Phẩm Gia Đình Anco', 3),
(215, 'KẾ TOÁN ĐIỂM', 'https://careerbuilder.vn/vi/tim-viec-lam/ke-toan-diem.35AF0F29.html', 'Việc làm tại Khánh Hòa', 'Lương: 4 Tr - 6 Tr VND', 'Khánh Hòa', 'Công ty Cổ Phần Beta Media', 3),
(216, 'Nhân Viên Bảo Vệ - Siêu Thị Co.Opmart Nha Trang', 'https://careerbuilder.vn/vi/tim-viec-lam/nhan-vien-bao-ve-sieu-thi-co-opmart-nha-trang.35AF0F10.html', 'Việc làm tại Khánh Hòa', 'Lương: 5 Tr - 7 Tr VND', 'Khánh Hòa', 'Liên Hiệp HTX Thương Mại TPHCM', 3),
(217, 'Trưởng bộ phận kho', 'https://careerbuilder.vn/vi/tim-viec-lam/truong-bo-phan-kho.35AF0F1D.html', 'Việc làm tại Kiên Giang', 'Lương: Cạnh tranh', 'Kiên Giang', 'BIM Group', 3),
(218, 'Trưởng Ban An Ninh', 'https://careerbuilder.vn/vi/tim-viec-lam/truong-ban-an-ninh.35AF0F15.html', 'Việc làm tại Kiên Giang', 'Lương: Cạnh tranh', 'Kiên Giang', 'BIM Group', 3),
(219, 'Sale Sup Tỉnh KomTum', 'https://careerbuilder.vn/vi/tim-viec-lam/sale-sup-tinh-komtum.35AEB43F.html', 'Việc làm tại Kon Tum', 'Lương: Cạnh tranh', 'Kon Tum', 'Công Ty CP SUNHOUSE Miền Nam', 3),
(220, 'Nhân Viên Bán Hàng (Gia Lai - Kontum)', 'https://careerbuilder.vn/vi/tim-viec-lam/nhan-vien-ban-hang-gia-lai-kontum.35AEC615.html', 'Việc làm tại Kon Tum', 'Lương: Cạnh tranh', 'Kon Tum, Gia Lai', 'Saint-Gobain Vietnam', 3),
(221, 'Hà Tĩnh - Tuyển dụng các vị trí Chuyên viên/Giao dịch viên', 'https://careerbuilder.vn/vi/tim-viec-lam/ha-tinh-tuyen-dung-cac-vi-tri-chuyen-vien-giao-dich-vien.35AF0F45.html', 'Việc làm tại KV Bắc Trung Bộ', 'Lương: Cạnh tranh', 'Hà Tĩnh', 'LienVietPostBank', 3),
(222, 'Trình Dược Viên Khu Vực Miền Bắc', 'https://careerbuilder.vn/vi/tim-viec-lam/trinh-duoc-vien-khu-vuc-mien-bac.35AF0EC2.html', 'Việc làm tại KV Bắc Trung Bộ', 'Lương: 4,5 Tr - 10 Tr VND', 'KV Bắc Trung Bộ', 'Công Ty Cổ Phần Dược Phẩm 2/9', 3),
(223, 'Nhân Viên Bảo Trì Điện', 'https://careerbuilder.vn/vi/tim-viec-lam/nhan-vien-bao-tri-dien.35AF0FB3.html', 'Việc làm tại KV Đông Nam Bộ', 'Lương: Cạnh tranh', 'Đồng Nai', 'SCHAEFFLER VIETNAM CO., LTD', 3),
(224, 'Giám Sát Ca - Pizza Hut Bà Rịa (Sắp khai trương)', 'https://careerbuilder.vn/vi/tim-viec-lam/giam-sat-ca-pizza-hut-ba-ria-sap-khai-truong.35AF0FAC.html', 'Việc làm tại KV Đông Nam Bộ', 'Lương: Cạnh tranh', 'Bà Rịa - Vũng Tàu', 'Pizza Hut Viet Nam', 3),
(225, 'Product and Mold Designer (1000USD, NN3551)', 'https://careerbuilder.vn/vi/tim-viec-lam/product-and-mold-designer-1000usd-nn3551.35AF0F8F.html', 'Việc làm tại KV Nam Trung Bộ', 'Lương: 11 Tr - 22 Tr VND', 'Hồ Chí Minh, Bình Định, Đồng Nai', 'MegaCEO.com', 3),
(226, 'Sales Veterinary Medicine', 'https://careerbuilder.vn/vi/tim-viec-lam/sales-veterinary-medicine.35AF0F97.html', 'Việc làm tại KV Nam Trung Bộ', 'Lương: 8 Tr - 20 Tr VND', 'Đồng Bằng Sông Cửu Long, KV Đông Nam Bộ, KV Nam Trung Bộ', 'CÔNG TY TNHH MTV NEW WELL POWER VIỆT NAM', 3),
(227, 'Sustainability Leader', 'https://careerbuilder.vn/vi/tim-viec-lam/sustainability-leader.35AF0F38.html', 'Việc làm tại KV Tây Nguyên', 'Lương: 17,6 Tr - 28,6 Tr VND', 'Gia Lai', 'iGlocal Resource JSC', 3),
(228, 'Cộng tác viên Trợ Đối Tác GrabBike (Hà Nội)', 'https://careerbuilder.vn/vi/tim-viec-lam/cong-tac-vien-tro-doi-tac-grabbike-ha-noi.35AF0ED7.html', 'Việc làm tại KV Tây Nguyên', 'Lương: Cạnh tranh', 'Quảng Ninh, Vĩnh Phúc, Dak Lak', 'Công Ty TNHH GrabTaxi', 3),
(229, 'SALES SUPERVISOR (URGENT)', 'https://careerbuilder.vn/vi/tim-viec-lam/sales-supervisor-urgent.35AF0DA1.html', 'Việc làm tại Lai Châu', 'Lương: 15 Tr - 22 Tr VND', 'Quảng Ninh, Lai Châu, Lào Cai', 'First Alliances', 3),
(230, 'Giám sát bán hàng( Điện Biên- Lai Châu)', 'https://careerbuilder.vn/vi/tim-viec-lam/giam-sat-ban-hang-dien-bien-lai-chau.35AEE009.html', 'Việc làm tại Lai Châu', 'Lương: Cạnh tranh', 'Lai Châu, Điện Biên', 'Công Ty Cổ Phần Diana Unicharm', 3),
(231, 'Giao dịch viên - KVH - MSB - Nghệ An - Phú Thọ - Lạng Sơn', 'https://careerbuilder.vn/vi/tim-viec-lam/giao-dich-vien-kvh-msb-nghe-an-phu-tho-lang-son.35AECF11.html', 'Việc làm tại Lạng Sơn', 'Lương: Cạnh tranh', 'Lạng Sơn, Nghệ An, Phú Thọ', 'Công Ty CP Quản Trị Nguồn Nhân Lực M-Talent', 3),
(232, 'Giao dịch viên - MSB - Lạng Sơn', 'https://careerbuilder.vn/vi/tim-viec-lam/giao-dich-vien-msb-lang-son.35AEE334.html', 'Việc làm tại Lạng Sơn', 'Lương: Cạnh tranh', 'Lạng Sơn', 'Công Ty CP Quản Trị Nguồn Nhân Lực M-Talent', 3),
(233, 'SALES SUPERVISOR (URGENT)', 'https://careerbuilder.vn/vi/tim-viec-lam/sales-supervisor-urgent.35AF0DA1.html', 'Việc làm tại Lào Cai', 'Lương: 15 Tr - 22 Tr VND', 'Quảng Ninh, Lai Châu, Lào Cai', 'First Alliances', 3),
(234, 'Academic Coordinator – Public School General English program', 'https://careerbuilder.vn/vi/tim-viec-lam/academic-coordinator-–-public-school-general-english-program.35AF0D7A.html', 'Việc làm tại Lào Cai', 'Lương: 8 Tr - 13 Tr VND', 'Hà Nội, Lào Cai', 'Institution of American Education (IAE)', 3),
(235, '[JHC0017584] Interpreter and translation staff', 'https://careerbuilder.vn/vi/tim-viec-lam/jhc0017584-interpreter-and-translation-staff.35AF0D3A.html', 'Việc làm tại Lâm Đồng', 'Lương: Cạnh tranh', 'Lâm Đồng', 'Iconic Co.,Ltd', 3),
(236, 'Quản Lý Chất Lượng Dịch Vụ Khách Sạn', 'https://careerbuilder.vn/vi/tim-viec-lam/quan-ly-chat-luong-dich-vu-khach-san.35AEB319.html', 'Việc làm tại Lâm Đồng', 'Lương: 5 Tr - 8 Tr VND', 'Bình Thuận, Cần Thơ, Lâm Đồng', 'Công Ty Cổ Phần Du Lịch Thành Thành Công', 3),
(237, 'Nhân Viên Kỹ Thuật Cài Đặt_Nam Định', 'https://careerbuilder.vn/vi/tim-viec-lam/nhan-vien-ky-thuat-cai-dat_nam-dinh.35AEB0AF.html', 'Việc làm tại Nam Định', 'Lương: 5 Tr - 7 Tr VND', 'Nam Định', 'Công ty Cổ phần Pico - Chi nhánh Nam Định', 3),
(238, 'Nhân Viên Thu Hồi Nợ Tại Nhà - Nam Định', 'https://careerbuilder.vn/vi/tim-viec-lam/nhan-vien-thu-hoi-no-tai-nha-nam-dinh.35AECD7C.html', 'Việc làm tại Nam Định', 'Lương: 7 Tr - 10 Tr VND', 'Nam Định', 'FE Credit', 3),
(239, 'Kế toán viên – MEDLATEC NGHỆ AN', 'https://careerbuilder.vn/vi/tim-viec-lam/ke-toan-vien-–-medlatec-nghe-an.35AF0D66.html', 'Việc làm tại Nghệ An', 'Lương: 6 Tr - 8 Tr VND', 'Nghệ An', 'CÔNG TY TNHH CÔNG NGHỆ VÀ XÉT NGHIỆM Y HỌC', 3),
(240, 'Assistant Sales Manager - Elite Fitness Vinh', 'https://careerbuilder.vn/vi/tim-viec-lam/assistant-sales-manager-elite-fitness-vinh.35AE5EAB.html', 'Việc làm tại Nghệ An', 'Lương: 11 Tr - 22 Tr VND', 'Hà Nội, Hồ Chí Minh, Nghệ An', 'BIM Group - Elite Fitness Vinh', 3),
(241, 'Direct Sales Supervisor - Ninh Bình', 'https://careerbuilder.vn/vi/tim-viec-lam/direct-sales-supervisor-ninh-binh.35AF0C30.html', 'Việc làm tại Ninh Bình', 'Lương: Cạnh tranh', 'Ninh Bình', 'FE Credit', 3),
(242, 'Nhân Viên Chăm Sóc Khách Hàng_Ninh Bình', 'https://careerbuilder.vn/vi/tim-viec-lam/nhan-vien-cham-soc-khach-hang_ninh-binh.35AEB08F.html', 'Việc làm tại Ninh Bình', 'Lương: 5 Tr - 6 Tr VND', 'Ninh Bình', 'Công ty Cổ phần Pico - Chi nhánh Ninh Bình', 3),
(243, 'Bếp Trưởng', 'https://careerbuilder.vn/vi/tim-viec-lam/bep-truong.35AEB2BF.html', 'Việc làm tại Ninh Thuận', 'Lương: 15 Tr - 25 Tr VND', 'Hồ Chí Minh, Bình Thuận, Ninh Thuận', 'Công Ty Cổ Phần Du Lịch Thành Thành Công', 3),
(244, 'Giám Sát Bán Hàng (tỉnh Ninh Thuận)', 'https://careerbuilder.vn/vi/tim-viec-lam/giam-sat-ban-hang-tinh-ninh-thuan.35AECFFA.html', 'Việc làm tại Ninh Thuận', 'Lương: Cạnh tranh', 'Ninh Thuận', 'Công Ty Cổ Phần Diana Unicharm', 3),
(245, 'Kế toán viên – MEDLATEC PHÚ THỌ', 'https://careerbuilder.vn/vi/tim-viec-lam/ke-toan-vien-–-medlatec-phu-tho.35AF0D6C.html', 'Việc làm tại Phú Thọ', 'Lương: 6 Tr - 8 Tr VND', 'Phú Thọ', 'CÔNG TY TNHH CÔNG NGHỆ VÀ XÉT NGHIỆM Y HỌC', 3),
(246, 'Kế toán viên – MEDLATEC THÁI BÌNH', 'https://careerbuilder.vn/vi/tim-viec-lam/ke-toan-vien-–-medlatec-thai-binh.35AF0D5B.html', 'Việc làm tại Phú Thọ', 'Lương: 6 Tr - 8 Tr VND', 'Phú Thọ', 'CÔNG TY TNHH CÔNG NGHỆ VÀ XÉT NGHIỆM Y HỌC', 3),
(247, 'Site Electrical Engineer [Phu Yen, Binh Dinh]', 'https://careerbuilder.vn/vi/tim-viec-lam/site-electrical-engineer-phu-yen-binh-dinh.35AF0D08.html', 'Việc làm tại Phú Yên', 'Lương: Cạnh tranh', 'Phú Yên, Hồ Chí Minh, Bình Định', 'Công Ty TNHH Archetype Việt Nam', 3),
(248, 'Nhân Viên Bán Hàng (Bình Định- Phú Yên)', 'https://careerbuilder.vn/vi/tim-viec-lam/nhan-vien-ban-hang-binh-dinh-phu-yen.35AEC61E.html', 'Việc làm tại Phú Yên', 'Lương: Cạnh tranh', 'Bình Định, Phú Yên', 'Saint-Gobain Vietnam', 3),
(249, 'Nhân Viên Thu Hồi Nợ Tại Nhà - Quảng Bình, Quảng Trị, Thừa Thiên Huế', 'https://careerbuilder.vn/vi/tim-viec-lam/nhan-vien-thu-hoi-no-tai-nha-quang-binh-quang-tri-thua-thien-hue.35AF0CC5.html', 'Việc làm tại Quảng Bình', 'Lương: 7 Tr - 12 Tr VND', 'Quảng Bình, Quảng Trị, Thừa Thiên- Huế', 'FE Credit', 3),
(250, 'Tổng Quản Lý (GM) Hệ Thống Atena Bakery & Cafe - Làm Việc Tại Đồng Hới, Quảng Bình', 'https://careerbuilder.vn/vi/tim-viec-lam/tong-quan-ly-gm-he-thong-atena-bakery-cafe-lam-viec-tai-dong-hoi-quang-binh.35AE9A4B.html', 'Việc làm tại Quảng Bình', 'Lương: 20 Tr - 25 Tr VND', 'Quảng Bình', 'Công ty Cổ phân Tập đoàn UHMGROUP', 3),
(251, 'Chuyên Viên Kiểm Soát Kinh Tế Xây Dựng', 'https://careerbuilder.vn/vi/tim-viec-lam/chuyen-vien-kiem-soat-kinh-te-xay-dung.35AF0E4E.html', 'Việc làm tại Quảng Nam', 'Lương: Cạnh tranh', 'Hồ Chí Minh, Quảng Nam, Khánh Hòa', 'Công Ty Cổ Phần Phát Triển Bất Động Sản Phát Đạt', 3),
(252, 'Nhân Viên Thu Hồi Nợ Tại Nhà - Quảng Nam', 'https://careerbuilder.vn/vi/tim-viec-lam/nhan-vien-thu-hoi-no-tai-nha-quang-nam.35AF0CFC.html', 'Việc làm tại Quảng Nam', 'Lương: 7 Tr - 12 Tr VND', 'Quảng Nam', 'FE Credit', 3),
(253, 'Nhân Viên Thu Hồi Nợ Trực Tiếp Tại Quảng Ngãi', 'https://careerbuilder.vn/vi/tim-viec-lam/nhan-vien-thu-hoi-no-truc-tiep-tai-quang-ngai.35AEB22D.html', 'Việc làm tại Quảng Ngãi', 'Lương: 7 Tr - 12 Tr VND', 'Quảng Ngãi', 'HD Saison Finance Co., Ltd', 3),
(254, 'Recruitment Staff', 'https://careerbuilder.vn/vi/tim-viec-lam/recruitment-staff.35AEE435.html', 'Việc làm tại Quảng Ngãi', 'Lương: Cạnh tranh', 'Quảng Ngãi', 'Công Ty TNHH Kỹ Nghệ Gỗ Hoa Nét', 3),
(255, 'Cộng tác viên Trợ Đối Tác GrabBike (Hà Nội)', 'https://careerbuilder.vn/vi/tim-viec-lam/cong-tac-vien-tro-doi-tac-grabbike-ha-noi.35AF0ED7.html', 'Việc làm tại Quảng Ninh', 'Lương: Cạnh tranh', 'Quảng Ninh, Vĩnh Phúc, Dak Lak', 'Công Ty TNHH GrabTaxi', 3),
(256, 'SALES SUPERVISOR (URGENT)', 'https://careerbuilder.vn/vi/tim-viec-lam/sales-supervisor-urgent.35AF0DA1.html', 'Việc làm tại Quảng Ninh', 'Lương: 15 Tr - 22 Tr VND', 'Quảng Ninh, Lai Châu, Lào Cai', 'First Alliances', 3),
(257, 'Nhân Viên Thu Hồi Nợ Tại Nhà - Quảng Bình, Quảng Trị, Thừa Thiên Huế', 'https://careerbuilder.vn/vi/tim-viec-lam/nhan-vien-thu-hoi-no-tai-nha-quang-binh-quang-tri-thua-thien-hue.35AF0CC5.html', 'Việc làm tại Quảng Trị', 'Lương: 7 Tr - 12 Tr VND', 'Quảng Bình, Quảng Trị, Thừa Thiên- Huế', 'FE Credit', 3),
(258, 'Giám Sát Bán Hàng ( Huế )', 'https://careerbuilder.vn/vi/tim-viec-lam/giam-sat-ban-hang-hue.35AEB5B1.html', 'Việc làm tại Quảng Trị', 'Lương: Cạnh tranh', 'Thừa Thiên- Huế, Quảng Trị, Quảng Bình', 'Công Ty Cổ Phần Hàng Tiêu Dùng Masan ', 3),
(259, 'ĐBSCL2 - Nhân viên Thẩm định tài sản', 'https://careerbuilder.vn/vi/tim-viec-lam/dbscl2-nhan-vien-tham-dinh-tai-san.35AF0E49.html', 'Việc làm tại Sóc Trăng', 'Lương: Cạnh tranh', 'Sóc Trăng', 'ACB - Ngân Hàng TMCP Á Châu', 3),
(260, 'Giám sát bán hàng', 'https://careerbuilder.vn/vi/tim-viec-lam/giam-sat-ban-hang.35AED01E.html', 'Việc làm tại Sóc Trăng', 'Lương: 8 Tr - 15 Tr VND', 'Hậu Giang, Kiên Giang, Sóc Trăng', 'Công Ty TNHH United Family Food Việt Nam', 3),
(261, 'Nhân Viên Thu Hồi Nợ Tại Nhà - Sơn La', 'https://careerbuilder.vn/vi/tim-viec-lam/nhan-vien-thu-hoi-no-tai-nha-son-la.35AEFB48.html', 'Việc làm tại Sơn La', 'Lương: 7 Tr - 12 Tr VND', 'Sơn La', 'FE Credit', 3),
(262, 'Nhân Viên Dịch Vụ Khách Hàng Tại Sơn La', 'https://careerbuilder.vn/vi/tim-viec-lam/nhan-vien-dich-vu-khach-hang-tai-son-la.35AEADC2.html', 'Việc làm tại Sơn La', 'Lương: 5 Tr - 7 Tr VND', 'Sơn La', 'Dai-ichi Life Việt Nam', 3),
(263, 'Tây Ninh - Tuyển dụng các vị trí chuyên viên', 'https://careerbuilder.vn/vi/tim-viec-lam/tay-ninh-tuyen-dung-cac-vi-tri-chuyen-vien.35AF0DA6.html', 'Việc làm tại Tây Ninh', 'Lương: Cạnh tranh', 'Tây Ninh', 'LienVietPostBank', 3),
(264, 'Giám Sát Rạp Chiếu Phim Tại TP.Tây Ninh', 'https://careerbuilder.vn/vi/tim-viec-lam/giam-sat-rap-chieu-phim-tai-tp-tay-ninh.35AF0CE9.html', 'Việc làm tại Tây Ninh', 'Lương: 6 Tr - 8 Tr VND', 'Tây Ninh', 'Công ty TNHH Lotte Cinema Việt Nam', 3),
(265, 'SHT - Kế toán Công nợ  (Đông Hưng - Thái Bình)', 'https://careerbuilder.vn/vi/tim-viec-lam/sht-ke-toan-cong-no-dong-hung-thai-binh.35AECFE1.html', 'Việc làm tại Thái Bình', 'Lương: 5 Tr - 6 Tr VND', 'Thái Bình', 'Công Ty Cổ Phần Quốc Tế Sơn Hà', 3),
(266, 'ASM KV Hà Nội', 'https://careerbuilder.vn/vi/tim-viec-lam/asm-kv-ha-noi.35AEFAF7.html', 'Việc làm tại Thái Bình', 'Lương: 17 Tr - 25 Tr VND', 'Hà Nam, KV Bắc Trung Bộ, Thái Bình', 'Cty CP Kỹ Nghệ Thực Phẩm Việt Nam - VIFON', 3),
(267, 'Chuyên Viên Quan Hệ Khách Hàng Doanh Nghiệp', 'https://careerbuilder.vn/vi/tim-viec-lam/chuyen-vien-quan-he-khach-hang-doanh-nghiep.35AF0C8F.html', 'Việc làm tại Thái Nguyên', 'Lương: 8 Tr - 15 Tr VND', 'Bắc Giang, Bắc Ninh, Thái Nguyên', 'Ngân Hàng TMCP Quốc Dân (NCB)', 3),
(268, 'Chuyên Viên Quan Hệ Khách Hàng Cá Nhân', 'https://careerbuilder.vn/vi/tim-viec-lam/chuyen-vien-quan-he-khach-hang-ca-nhan.35AEA041.html', 'Việc làm tại Thái Nguyên', 'Lương: 7 Tr - 10 Tr VND', 'Bắc Giang, Bắc Ninh, Thái Nguyên', 'Ngân Hàng TMCP Quốc Dân (NCB)', 3),
(269, 'Chuyên Viên Hoạch ĐịnhTài Chính Cấp Cao - Kênh Ngân Hàng Acb (Bỉm Sơn - Thanh Hóa)', 'https://careerbuilder.vn/vi/tim-viec-lam/chuyen-vien-hoach-dinhtai-chinh-cap-cao-kenh-ngan-hang-acb-bim-son-thanh-hoa.35AEB4F6.html', 'Việc làm tại Thanh Hóa', 'Lương: 6 Tr - 8 Tr VND', 'Thanh Hóa', 'Công ty TNHH Bảo Hiểm Nhân Thọ AIA Việt Nam', 3),
(270, 'Kế Toán Tổng Hợp - BOT FLC Samson', 'https://careerbuilder.vn/vi/tim-viec-lam/ke-toan-tong-hop-bot-flc-samson.35AEE660.html', 'Việc làm tại Thanh Hóa', 'Lương: Cạnh tranh', 'Thanh Hóa', 'Công Ty CP Tập Đoàn FLC', 3),
(271, 'Giáo Viên Tiếng Nhật - dạy tại Huế', 'https://careerbuilder.vn/vi/tim-viec-lam/giao-vien-tieng-nhat-day-tai-hue.35AF0E0E.html', 'Việc làm tại Thừa Thiên- Huế', 'Lương: 8 Tr - 12 Tr VND', 'Thừa Thiên- Huế', 'Công ty Cổ phần Dịch vụ Xuất khẩu Lao động và Chuyên gia (Suleco)', 3),
(272, 'Chuyên viên Quan hệ khách hàng cá nhân/doanh nghiệp (Thừa Thiên Huế)', 'https://careerbuilder.vn/vi/tim-viec-lam/chuyen-vien-quan-he-khach-hang-ca-nhan-doanh-nghiep-thua-thien-hue.35AF0D71.html', 'Việc làm tại Thừa Thiên- Huế', 'Lương: Cạnh tranh', 'Thừa Thiên- Huế', 'ABBANK - Ngân Hàng TMCP An Bình', 3),
(273, 'Giám đốc Quan hệ Khách hàng ưu tiên (SRM) - RB - MSB - Tiền Giang', 'https://careerbuilder.vn/vi/tim-viec-lam/giam-doc-quan-he-khach-hang-uu-tien-srm-rb-msb-tien-giang.35AF0FA0.html', 'Việc làm tại Tiền Giang', 'Lương: 15 Tr - 20 Tr VND', 'Tiền Giang', 'Công Ty CP Quản Trị Nguồn Nhân Lực M-Talent', 3),
(274, 'Chief Accounting', 'https://careerbuilder.vn/vi/tim-viec-lam/chief-accounting.35AF0E0D.html', 'Việc làm tại Tiền Giang', 'Lương: 33 Tr - 44 Tr VND', 'Tiền Giang', 'CÔNG TY TNHH BODYNITS', 3),
(275, 'Trình Dược viên Khu vực Miền Đông', 'https://careerbuilder.vn/vi/tim-viec-lam/trinh-duoc-vien-khu-vuc-mien-dong.35AF0EC0.html', 'Việc làm tại Toàn quốc', 'Lương: 4,5 Tr - 10 Tr VND', 'Toàn quốc', 'Công Ty Cổ Phần Dược Phẩm 2/9', 3),
(276, 'Trình Dược Viên Miền Tây - Miền Trung', 'https://careerbuilder.vn/vi/tim-viec-lam/trinh-duoc-vien-mien-tay-mien-trung.35AF0EBF.html', 'Việc làm tại Toàn quốc', 'Lương: 4,5 Tr - 10 Tr VND', 'Toàn quốc', 'Công Ty Cổ Phần Dược Phẩm 2/9', 3),
(277, 'QUẢN LÍ NGÀNH HÀNG', 'https://careerbuilder.vn/vi/tim-viec-lam/quan-li-nganh-hang.35AEE52F.html', 'Việc làm tại Trà Vinh', 'Lương: 9 Tr - 15 Tr VND', 'Trà Vinh', 'Liên Hiệp HTX Thương Mại TPHCM', 3),
(278, 'Trưởng ca Nhà sách Phương Nam (Chi nhánh Trà Vinh)', 'https://careerbuilder.vn/vi/tim-viec-lam/truong-ca-nha-sach-phuong-nam-chi-nhanh-tra-vinh.35AEFB5F.html', 'Việc làm tại Trà Vinh', 'Lương: Cạnh tranh', 'Trà Vinh', 'Công Ty Cổ Phần Văn Hóa Phương Nam', 3),
(279, 'Trợ Lý Kinh Doanh (Phụ Tùng Nhựa, 500USD, NL3482)', 'https://careerbuilder.vn/vi/tim-viec-lam/tro-ly-kinh-doanh-phu-tung-nhua-500usd-nl3482.35AEE631.html', 'Việc làm tại Tuyên Quang', 'Lương: 6,6 Tr - 11 Tr VND', 'Vĩnh Phúc, Hà Nội, Tuyên Quang', 'MegaCEO', 3),
(280, 'Deputy Financial & Accounting Manager (Manufacturing, 1300USD, LH3439)', 'https://careerbuilder.vn/vi/tim-viec-lam/deputy-financial-accounting-manager-manufacturing-1300usd-lh3439.35AECB8E.html', 'Việc làm tại Tuyên Quang', 'Lương: 24,2 Tr - 28,6 Tr VND', 'Vĩnh Phúc, Hà Nội, Tuyên Quang', 'MegaCEO.com', 3),
(281, 'Production Manager', 'https://careerbuilder.vn/vi/tim-viec-lam/production-manager.35AF0F17.html', 'Việc làm tại Vĩnh Long', 'Lương: 40 Tr - 50 Tr VND', 'Vĩnh Long', 'First Alliances', 3),
(282, 'Phó Giám Đốc Chi Nhánh (Vĩnh Long)', 'https://careerbuilder.vn/vi/tim-viec-lam/pho-giam-doc-chi-nhanh-vinh-long.35AEB409.html', 'Việc làm tại Vĩnh Long', 'Lương: Cạnh tranh', 'Vĩnh Long', 'ABBANK - Ngân Hàng TMCP An Bình', 3),
(283, 'Nhân Viên Bán Hàng Tại Hệ Thống Siêu Thị Điện MáyMediamart Vĩnh Yên - Vĩnh Phúc', 'https://careerbuilder.vn/vi/tim-viec-lam/nhan-vien-ban-hang-tai-he-thong-sieu-thi-dien-maymediamart-vinh-yen-vinh-phuc.35AF0F9E.html', 'Việc làm tại Vĩnh Phúc', 'Lương: 6 Tr - 10 Tr VND', 'Vĩnh Phúc', 'Công Ty Cổ Phần TARA', 3),
(284, 'Vĩnh Phúc - Tuyển dụng các Phòng Giao dịch vị trí Chuyên viên/Giao dịch viên', 'https://careerbuilder.vn/vi/tim-viec-lam/vinh-phuc-tuyen-dung-cac-phong-giao-dich-vi-tri-chuyen-vien-giao-dich-vien.35AF0F60.html', 'Việc làm tại Vĩnh Phúc', 'Lương: Cạnh tranh', 'Vĩnh Phúc', 'LienVietPostBank', 3);

-- --------------------------------------------------------

--
-- Table structure for table `sources`
--

CREATE TABLE `sources` (
  `source_id` int(11) NOT NULL,
  `source_name` text NOT NULL,
  `source_seed_url` text NOT NULL,
  `source_type_job_tag` text NOT NULL,
  `source_link_tag` text NOT NULL,
  `source_title_tag` text NOT NULL,
  `source_company_tag` text NOT NULL,
  `source_location_tag` text NOT NULL,
  `source_salary_tag` text NOT NULL,
  `source_job_page_tag` text NOT NULL,
  `source_first_page` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sources`
--

INSERT INTO `sources` (`source_id`, `source_name`, `source_seed_url`, `source_type_job_tag`, `source_link_tag`, `source_title_tag`, `source_company_tag`, `source_location_tag`, `source_salary_tag`, `source_job_page_tag`, `source_first_page`) VALUES
(1, 'https://vieclam24h.vn/', 'https://vieclam24h.vn/viec-lam-quan-ly', 'div.news-title a', 'span.title-blockjob-main a', 'span.title-blockjob-main a', 'span.title-blockjob-sub a', 'span.onecol_province', 'div.note_mucluong', '', ''),
(2, 'https://www.careerlink.vn/', 'https://www.careerlink.vn', '#search-by-category ul li a', 'h2.list-group-item-heading a', 'h2.list-group-item-heading a', 'div.list-group-item-text p a.text-accent', 'div.list-group-item-text p.priority-data', 'div.list-group-item-text div small', 'ul.pagination li a', '?view=headline&page=1'),
(3, 'https://careerbuilder.vn/', 'https://careerbuilder.vn/tim-viec-lam.html', 'div#JobCategoriesListing div.colJob div.groupJob ul li a', 'h3.job a', 'h3.job a', 'p.namecom', 'p.location', 'p.salary', 'div.paginationTwoStatus a', 'trang-1-vi.html');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`job_id`),
  ADD KEY `job_source_id` (`source_id`);

--
-- Indexes for table `sources`
--
ALTER TABLE `sources`
  ADD PRIMARY KEY (`source_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `job_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=285;

--
-- AUTO_INCREMENT for table `sources`
--
ALTER TABLE `sources`
  MODIFY `source_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jobs`
--
ALTER TABLE `jobs`
  ADD CONSTRAINT `jobs_ibfk_1` FOREIGN KEY (`source_id`) REFERENCES `sources` (`source_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
