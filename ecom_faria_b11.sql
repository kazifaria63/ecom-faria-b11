-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2024 at 12:16 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom_faria_b11`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 = active and 0 = in active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Apple', 'good', 'admin/image/brand/955.jpg', 1, '2024-07-17 12:20:40', '2024-07-22 12:16:45'),
(3, 'Easy', 'Easy', 'admin/image/brand/880.png', 1, '2024-07-20 15:27:48', '2024-07-22 12:20:06'),
(4, 'HP', 'hp', 'admin/image/brand/807.jpg', 1, '2024-07-22 12:17:52', '2024-07-22 12:17:52'),
(5, 'Xaomi', 'Redmi', 'admin/image/brand/787.jpg', 1, '2024-07-22 12:19:13', '2024-07-22 12:19:13'),
(6, 'Gucci', 'Gucci', 'admin/image/brand/661.jpg', 1, '2024-07-22 12:21:19', '2024-07-22 12:21:19');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('8f364de938db3363b6636b72302e1478', 'i:1;', 1723575054),
('8f364de938db3363b6636b72302e1478:timer', 'i:1723575054;', 1723575054),
('d6802a41d5cfe94757e97939ab1f4a1d', 'i:1;', 1723845075),
('d6802a41d5cfe94757e97939ab1f4a1d:timer', 'i:1723845075;', 1723845075);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 = active and 0= in active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(6, 'Man Fashion', 'Man Fashion', 'admin/image/category/1051733280.webp', 1, '2024-07-16 11:54:59', '2024-07-16 11:54:59'),
(7, 'Women Fashion', 'good', 'admin/image/category/707242833.jpg', 1, '2024-07-16 13:49:19', '2024-07-16 13:49:19'),
(8, 'Electronics', 'Electronics', 'admin/image/category/195563974.jpg', 1, '2024-07-22 12:10:05', '2024-07-22 12:10:05'),
(9, 'Kids', 'Kids', 'admin/image/category/1190640315.jpg', 1, '2024-07-22 12:10:45', '2024-07-22 12:10:45');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `code`, `description`, `created_at`, `updated_at`) VALUES
(2, 'Black', '#000000', 'Black', '2024-07-17 13:22:56', '2024-07-17 13:22:56'),
(4, 'Red', '#ff0000', 'Red', '2024-07-20 15:06:23', '2024-07-20 15:06:23'),
(5, 'Green', '#008040', 'Green', '2024-07-22 12:23:15', '2024-07-22 12:23:15');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `date_of_birth` text DEFAULT NULL,
  `blood_group` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `nid` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `mobile`, `password`, `date_of_birth`, `blood_group`, `image`, `nid`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Faria', 'faria63@gmail.com', '1242345', '$2y$12$qAcpQNLRRgIRExroMfbR4.7OWTGOBo2oAcyuSvMUoGY5fJyO9Ll6G', NULL, NULL, NULL, NULL, NULL, '2024-08-16 09:43:40', '2024-08-16 09:43:40');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_07_12_155148_add_two_factor_columns_to_users_table', 1),
(5, '2024_07_12_155545_create_personal_access_tokens_table', 1),
(6, '2024_07_16_101309_create_categories_table', 2),
(7, '2024_07_16_183230_create_sub_categories_table', 3),
(8, '2024_07_16_222651_create_brands_table', 4),
(9, '2024_07_17_182508_create_units_table', 5),
(10, '2024_07_17_190030_create_colors_table', 6),
(11, '2024_07_17_192540_create_sizes_table', 7),
(12, '2024_07_18_160057_create_products_table', 8),
(13, '2024_07_18_180313_create_product_colors_table', 9),
(14, '2024_07_18_180429_create_product_sizes_table', 9),
(15, '2024_07_18_182545_create_product_images_table', 10),
(16, '2024_08_16_143422_create_orders_table', 11),
(17, '2024_08_16_144253_create_customers_table', 12),
(18, '2024_08_16_194151_create_order_details_table', 13);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_total` int(11) NOT NULL,
  `tax_total` int(11) NOT NULL,
  `shipping_total` int(11) NOT NULL,
  `order_date` text NOT NULL,
  `order_timestamp` text NOT NULL,
  `order_status` varchar(255) NOT NULL DEFAULT 'Pending',
  `delivery_address` text NOT NULL,
  `delivery_status` varchar(255) NOT NULL DEFAULT 'Pending',
  `delivery_date` text DEFAULT NULL,
  `delivery_timestamp` text DEFAULT NULL,
  `payment_method` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL DEFAULT 'Pending',
  `payment_date` text DEFAULT NULL,
  `payment_timestamp` text DEFAULT NULL,
  `currency` varchar(255) NOT NULL DEFAULT 'BDT',
  `transaction_id` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `order_total`, `tax_total`, `shipping_total`, `order_date`, `order_timestamp`, `order_status`, `delivery_address`, `delivery_status`, `delivery_date`, `delivery_timestamp`, `payment_method`, `payment_status`, `payment_date`, `payment_timestamp`, `currency`, `transaction_id`, `created_at`, `updated_at`) VALUES
(1, 1, 836939, 109153, 100, '2024-08-16', '1723766400', 'Pending', 'GNHG', 'Pending', NULL, NULL, 'Cash', 'Pending', NULL, NULL, 'BDT', NULL, '2024-08-16 14:19:01', '2024-08-16 14:19:01'),
(2, 1, 27063, 3517, 100, '2024-08-16', '1723766400', 'Pending', 'dsgr', 'Pending', NULL, NULL, 'Cash', 'Pending', NULL, NULL, 'BDT', NULL, '2024-08-16 14:30:13', '2024-08-16 14:30:13'),
(3, 1, 53649, 6985, 100, '2024-08-16', '1723766400', 'Pending', 'Basila', 'Pending', NULL, NULL, 'Cash', 'Pending', NULL, NULL, 'BDT', NULL, '2024-08-16 14:31:39', '2024-08-16 14:31:39');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `product_price` varchar(255) NOT NULL,
  `product_qty` varchar(255) NOT NULL,
  `product_color` varchar(255) NOT NULL,
  `product_size` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `product_name`, `product_code`, `product_price`, `product_qty`, `product_color`, `product_size`, `created_at`, `updated_at`) VALUES
(1, 2, 7, 'Kids Mobile', '05', '23446', '1', 'Red', 'Small', '2024-08-16 14:30:13', '2024-08-16 14:30:13'),
(2, 3, 3, 'Formal Shirt', '01', '46564', '1', 'Black', 'Extra extra Large', '2024-08-16 14:31:39', '2024-08-16 14:31:39');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` text NOT NULL,
  `code` varchar(255) NOT NULL,
  `regular_price` float NOT NULL,
  `selling_price` float NOT NULL,
  `stock_amount` int(11) NOT NULL,
  `short_description` text NOT NULL,
  `long_description` longtext NOT NULL,
  `sales_count` int(11) NOT NULL DEFAULT 0,
  `hit_count` int(11) NOT NULL DEFAULT 0,
  `featured_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 = featured and 0= not featured',
  `image` text NOT NULL,
  `meta_title` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 = active and 0= inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `sub_category_id`, `brand_id`, `unit_id`, `name`, `slug`, `code`, `regular_price`, `selling_price`, `stock_amount`, `short_description`, `long_description`, `sales_count`, `hit_count`, `featured_status`, `image`, `meta_title`, `meta_description`, `status`, `created_at`, `updated_at`) VALUES
(3, 6, 3, 3, 2, 'Formal Shirt', 'formal-shirt', '01', 23454, 46564, 354, 'Formal Shirt for man', '<figure class=\"image\"><img src=\"http://localhost/ecom-faria-b11/public/website/assets/img/offer/kids.png\" alt=\"img\"></figure>', 0, 0, 0, 'admin/image/product/1389154812.jpg', 'Formal Shirt for man', 'Formal Shirt for man', 1, '2024-07-22 12:30:15', '2024-07-22 12:30:15'),
(4, 6, 4, 2, 2, 'Apple Watch', 'apple-watch', '02', 234456, 657676, 543, 'Apple Watch for gents', '<ul><li>-298days</li><li>-1Hours</li><li>-35Minutes</li><li>-39Seconds</li></ul><h2>20% OFF FOR ALL T-SHIRT COLLECTION</h2><p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Porro quisquam, odit assumenda sit modi commodi esse necessitatibus temporibus aperiam veritatis eveniet!</p><p><a href=\"http://localhost/ecom-faria-b11/public/#!\">View More</a></p>', 0, 0, 0, 'admin/image/product/159799870.webp', 'Apple Watch for gents', 'Apple Watch for gents', 1, '2024-07-22 12:37:35', '2024-08-16 16:11:33'),
(5, 7, 2, 6, 2, 'Necklace', 'necklace', '03', 345522, 123455, 567, 'Necklace for Women', '<p><a href=\"http://localhost/ecom-faria-b11/public/blog-single.html\">Read More</a></p><p><a href=\"http://localhost/ecom-faria-b11/public/blog-single.html\"><img src=\"http://localhost/ecom-faria-b11/public/website/assets/img/blog/post3.png\" alt=\"img\">&nbsp;</a></p><p><a href=\"http://localhost/ecom-faria-b11/public/blog-single.html\">25 February 2019</a></p><h4><a href=\"http://localhost/ecom-faria-b11/public/blog-single.html\">Shopbop Spring Sale Selects (All Under/Around $100!)</a></h4><p>I ended up returning this one and keeping the one below but I loved both!</p><p><a href=\"http://localhost/ecom-faria-b11/public/blog-single.html\">Read More</a></p><h2>Follow Us Instagram</h2><p>Mauris luctus nisi sapien tristique dignissim ornare</p><p>&nbsp;</p><p>&nbsp;</p><p><a href=\"http://localhost/ecom-faria-b11/public/#!\"><img src=\"http://localhost/ecom-faria-b11/public/website/assets/img/logo.png\" alt=\"logo\"></a></p><p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Obcaecati culpa assumenda voluptas placeat amet consectetur adipisicing elit. Obcaecati culpa assumenda voluptas placeat.</p><ul><li>&nbsp;</li><li>&nbsp;</li><li>&nbsp;</li><li>&nbsp;</li><li>&nbsp;</li></ul><h3>INFORMATION</h3><ul><li><a href=\"http://localhost/ecom-faria-b11/public/index.html\">Home</a></li><li><a href=\"http://localhost/ecom-faria-b11/public/about-us.html\">About Us</a></li><li><a href=\"http://localhost/ecom-faria-b11/public/privacy-policy.html\">Privacy Policy</a></li><li><a href=\"http://localhost/ecom-faria-b11/public/faq.html\">Frequently Questions</a></li><li><a href=\"http://localhost/ecom-faria-b11/public/order-tracking.html\">Order Tracking</a></li><li><a href=\"http://localhost/ecom-faria-b11/public/compare.html\">Compare</a></li></ul><h3>Your Account</h3><ul><li><a href=\"http://localhost/ecom-faria-b11/public/cart.html\">Cart View One</a></li><li><a href=\"http://localhost/ecom-faria-b11/public/cart-2.html\">Cart View Two</a></li><li><a href=\"http://localhost/ecom-faria-b11/public/empty-cart.html\">Empty Cart</a></li><li><a href=\"http://localhost/ecom-faria-b11/public/checkout.html\">Checkout View One</a></li><li><a href=\"http://localhost/ecom-faria-b11/public/checkout-2.html\">Checkout View Two</a></li><li><a href=\"http://localhost/ecom-faria-b11/public/wishlist.html\">Wishlist</a></li></ul><h3>NEWSLETTER</h3><p>&nbsp;</p><p>© CopyRight 2022 AndShop</p>', 0, 0, 0, 'admin/image/product/878595273.webp', 'Necklace for Women', 'Necklace for Women', 1, '2024-07-22 12:42:57', '2024-08-16 16:14:41'),
(6, 8, 6, 2, 2, 'Apple-n250', 'apple-n250', '04', 244556, 546773, 654, 'Apple Laptop 256gb ssd card 1tb harddisk with 4gb ram', '<p>Apple Laptop 256gb ssd card 1tb harddisk with 4gb ram&nbsp;</p>', 0, 0, 0, 'admin/image/product/1493810708.jpg', 'Apple Laptop 256gb ssd card 1tb harddisk with 4gb ram', 'Apple Laptop 256gb ssd card 1tb harddisk with 4gb ram', 1, '2024-07-22 12:47:13', '2024-08-16 16:15:13'),
(7, 9, 5, 5, 2, 'Kids Mobile', 'kids-mobile', '05', 3454570, 23446, 543, 'Toy mobile for kids for fun', '<p>Toy mobile for kids for fun</p>', 0, 0, 0, 'admin/image/product/894406211.jpg', 'Toy mobile for kids for fun', 'Toy mobile for kids for fun', 1, '2024-07-22 12:51:59', '2024-08-16 16:15:58'),
(8, 7, 7, 2, 2, 'Ladies Apple Watch', 'ladies-apple-watch', '06', 45664, 46674, 764, 'Beautifull Ladies Apple Watch', '<p>Beautifull Ladies Apple Watch</p>', 0, 0, 0, 'admin/image/product/1579253423.webp', 'Beautifull Ladies Apple Watch', 'Beautifull Ladies Apple Watch', 1, '2024-07-22 12:54:38', '2024-08-16 16:12:06'),
(9, 7, 2, 6, 2, 'Ladies Dress', 'ladies-dress', '07', 654433, 345767, 3467, 'Beautifull ladies dress collection for women', '<ul><li><a href=\"http://localhost/ecom-faria-b11/public/#!\">New Arrival</a></li><li><a href=\"http://localhost/ecom-faria-b11/public/#!\">Trending</a></li><li><a href=\"http://localhost/ecom-faria-b11/public/#!\">Best Sellers</a></li><li><a href=\"http://localhost/ecom-faria-b11/public/#!\">Featured</a></li><li><a href=\"http://localhost/ecom-faria-b11/public/#!\">On sall</a></li></ul><p><a href=\"http://localhost/ecom-faria-b11/public/product-single.html\"><img src=\"http://localhost/ecom-faria-b11/public/website/assets/img/product-image/product1.png\" alt=\"Product\"> <img src=\"http://localhost/ecom-faria-b11/public/website/assets/img/product-image/product2.png\" alt=\"Product\"> </a>New&nbsp;</p><p>&nbsp;</p><p><a href=\"http://localhost/ecom-faria-b11/public/product/details\">Blue Dress For Woman</a></p><p>$38.50&nbsp;</p><p><a href=\"http://localhost/ecom-faria-b11/public/product-single.html\"><img src=\"http://localhost/ecom-faria-b11/public/website/assets/img/product-image/product3.png\" alt=\"Product\"> <img src=\"http://localhost/ecom-faria-b11/public/website/assets/img/product-image/product4.png\" alt=\"Product\"> </a>New&nbsp;</p><p>&nbsp;</p><p><a href=\"http://localhost/ecom-faria-b11/public/product-single.html\">Woman Full Sliv Dresss</a></p><p>&nbsp;</p><p><a href=\"http://localhost/ecom-faria-b11/public/product-single.html\">Blue Dress For Woman&nbsp;</a></p><p>&nbsp;</p><p><a href=\"http://localhost/ecom-faria-b11/public/product-single.html\">Woman Full Sliv Dresss</a></p><p>$38.50&nbsp;</p><p><a href=\"http://localhost/ecom-faria-b11/public/product-single.html\"><img src=\"http://localhost/ecom-faria-b11/public/website/assets/img/product-image/product9.png\" alt=\"Product\"> <img src=\"http://localhost/ecom-faria-b11/public/website/assets/img/product-image/product10.png\" alt=\"Product\"></a></p>', 0, 0, 0, 'admin/image/product/1096834448.webp', 'Beautifull ladies dress collection for women', 'Beautifull ladies dress collection for women', 1, '2024-07-22 12:59:24', '2024-08-16 16:13:50'),
(10, 7, 2, 6, 2, 'Ladies Fashion Casual Star Digital Full Diamond British Watch Powder Crystal Love Earrings Necklace Ring Bracelet Gift Set', 'ladies-fashion-casual-star-digital-full-diamond-british-watch-powder-crystal-love-earrings-necklace-ring-bracelet-gift-set', 'Ladies Fashion', 1134, 999, 6, 'Ladies Fashion Casual Star Digital Full Diamond British Watch Powder Crystal Love Earrings Necklace Ring Bracelet Gift Set', '<h2>Product details of 6pcs Ladies Fashion Casual Star Digital Full Diamond British Watch Powder Crystal Love Earrings Necklace Ring Bracelet Gift Set</h2><ul><li>6pcs Ladies Fashion Casual Star Digital Full Diamond British Watch Powder Crystal Love Earrings Necklace Ring Bracelet Gift Set</li></ul><p>Movement type: Quartz Watch</p><p>Applicable people: Woman</p><p>Watch band length Approx: 200mm</p><p>Watch band Width Approx: 16mm</p><p>Watch case diameter Approx: 34mm</p><p>Watch case Thickness Approx: 8mm</p><p>Package included:</p><p>- 1 * Wrist watch</p><p>- 5* accessory</p><p>【Watch box not included】(life waterproof )only can splash a little water,can not be washed or in bathing,swimming,diving.</p><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/S024432f137b54b1faa9cc15302d41725q.jpg_2200x2200q80.jpg_.webp\"></figure><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/Se3258554cf8e4616b4e52a80b253df5br.jpg_2200x2200q80.jpg_.webp\"></figure><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/Sce4c14549ba54f7b9925c3b6479c4f370.jpg_2200x2200q80.jpg_.webp\"></figure><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/Sc7f06beb63bc4f9d9bf7648ced2f64a3V.jpg_2200x2200q80.jpg_.webp\"></figure><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/S057a13d6832249b08ef712a7a7325e87b.jpg_2200x2200q80.jpg_.webp\"></figure><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/Sd303f114141d41f4ab121ee189bf86e89.jpg_2200x2200q80.jpg_.webp\"></figure><h2>Specifications of 6pcs Ladies Fashion Casual Star Digital Full Diamond British Watch Powder Crystal Love Earrings Necklace Ring Bracelet Gift Set</h2><ul><li>Brand</li></ul><p>No Brand</p><ul><li>SKU</li></ul><p>406590088_BD-2016817337</p><ul><li>Model</li></ul><p>JHZ35-MSG-TZ02</p><p>What’s in the box</p><p>মহিলাদের জন্য বিলাসবহুল কোয়ার্টজ ঘড়ি এবং গহনা সেট ফ্যাশনেবল ক্যাজুয়াল স্টাইল ডিজিটাল ফুল ডায়মন্ড ব্রিটিশ ব্র্যান্ড অ্যালয় উপাদান</p><p><br>&nbsp;</p>', 0, 0, 0, 'admin/image/product/740831626.webp', 'Ladies Fashion Casual Star Digital Full Diamond British Watch Powder Crystal Love Earrings Necklace Ring Bracelet Gift Set', 'Ladies Fashion Casual Star Digital Full Diamond British Watch Powder Crystal Love Earrings Necklace Ring Bracelet Gift Set', 1, '2024-08-16 15:54:21', '2024-08-16 15:54:21'),
(11, 7, 2, 2, 2, 'New Lxury Love Rhinestone Jewelry Ladies Ring Necklace Earrings Bracelet Set Simple Digital Leather Strap Quartz Watch', 'new-lxury-love-rhinestone-jewelry-ladies-ring-necklace-earrings-bracelet-set-simple-digital-leather-strap-quartz-watch', 'New Lxury', 900, 750, 6, 'New Lxury Love Rhinestone Jewelry Ladies Ring Necklace Earrings Bracelet Set Simple Digital Leather Strap Quartz Watch', '<h2>Product details of 6 PCS New Lxury Love Rhinestone Jewelry Ladies Ring Necklace Earrings Bracelet Set Simple Digital Leather Strap Quartz Watch</h2><ul><li>6 PCS New Lxury Love Rhinestone Jewelry Ladies Ring Necklace Earrings Bracelet Set Simple Digital Leather Strap Quartz Watch</li></ul><p><strong>• Rhinestone-encrusted design :</strong>The jewelry set is adorned with sparkling rhinestones, adding a touch of glamour to any outfit.</p><p>&nbsp;</p><p><strong>• Versatile accessory set :</strong>This set includes a ring, necklace, earrings, and bracelet, making it a versatile addition to any jewelry collection.</p><p>&nbsp;</p><p><strong>• Simple yet stylish design :</strong>The sleek and minimalist design of the watch and jewelry set makes it perfect for both casual and formal occasions.</p><p>&nbsp;</p><p><strong>• Durable alloy case material :</strong>The watch\'s durable alloy case material ensures long-lasting wear and protection against everyday wear and tear.</p><p>&nbsp;</p><p>Description</p><p>Movement type: Quartz watch</p><p>Suitable for: female</p><p>Strap length :230mm</p><p>Strap width :16mm</p><p>Case diameter :35mm</p><p>Case thickness :8mm</p><p>The package includes:</p><p>- 1 * Watch</p><p>-5-furnaces jewelry set</p><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/Sdb28e77b5a5046558c6e5b749da5e5fca.jpg_2200x2200q80.jpg_.webp\"></figure><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/Se1be66b520e743658313443c153be81eP.jpg_2200x2200q80.jpg_.webp\"></figure><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/S23211933177241eba03ac3946d89879em.jpg_2200x2200q80.jpg_.webp\"></figure><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/S28c6d5b19c244d89ab5bc01be8bcaa8el.jpg_2200x2200q80.jpg_.webp\"></figure><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/S86e7ab45d9a84e00a6d5148deee3002c5.jpg_2200x2200q80.jpg_.webp\"></figure><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/S16cc9a3a29a7467e875dac37d92b06f9p.jpg_2200x2200q80.jpg_.webp\"></figure><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/S16ac65988af948e39c9add0d3e27ec79p.jpg_2200x2200q80.jpg_.webp\"></figure><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/S3b6c41c7acce4b27b711ade1ea861aa34.jpg_2200x2200q80.jpg_.webp\"></figure><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/S062ac9637dbf456eb34eae9db1db2eaee.jpg_2200x2200q80.jpg_.webp\"></figure><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/Sde23d8096e8e44be84ee9af5370b8b55w.jpg_2200x2200q80.jpg_.webp\"></figure><p>&nbsp;</p><h2>Specifications of 6 PCS New Lxury Love Rhinestone Jewelry Ladies Ring Necklace Earrings Bracelet Set Simple Digital Leather Strap Quartz Watch</h2><ul><li>Brand</li></ul><p>No Brand</p><ul><li>SKU</li></ul><p>393259277_BD-1960286635</p><ul><li>Model</li></ul><p>JHA05-SD-TZ01</p><p>What’s in the box</p><p>ডিজিটাল লেদার স্ট্র্যাপ রাউন্ড ডায়াল অ্যালয় কেস বাকল ক্ল্যাপ সহ মহিলাদের ফ্যাশন ক্যাজুয়াল কোয়ার্টজ ঘড়ির জন্য লাক্সারি লাভ কাঁচের গয়না সেট</p><p><br>&nbsp;</p>', 0, 0, 0, 'admin/image/product/1325118416.webp', 'New Lxury Love Rhinestone Jewelry Ladies Ring Necklace Earrings Bracelet Set Simple Digital Leather Strap Quartz Watch', 'New Lxury Love Rhinestone Jewelry Ladies Ring Necklace Earrings Bracelet Set Simple Digital Leather Strap Quartz Watch', 1, '2024-08-16 15:57:00', '2024-08-16 15:57:00'),
(12, 7, 2, 6, 2, 'Pearl White Kundan Choker Necklace With Earring - Necklace For Girls', 'pearl-white-kundan-choker-necklace-with-earring-necklace-for-girls', 'Pearl White', 450, 350, 6, 'Pearl White Kundan Choker Necklace With Earring - Necklace For Girls', '<h2>Product details of Pearl White Kundan Choker Necklace With Earring - Necklace For Girls</h2><ul><li>Product Type: Indian Pakistani Wedding Bridal choker necklace set</li><li>Item type: German Necklace.</li><li>Main material: Metal.</li><li>Color: White, Silver &amp; Golden</li><li>Length: 40cm.</li><li>Durability: Long.</li><li>Product: Indian.</li></ul><p>&nbsp;</p><h2>Specifications of Pearl White Kundan Choker Necklace With Earring - Necklace For Girls</h2><ul><li>Brand</li></ul><p>No Brand</p><ul><li>SKU</li></ul><p>123991769_BD-1815464893</p><ul><li>Material</li></ul><p>Metal</p><p>What’s in the box</p><p>Pearl White Kundan Choker Necklace With Earring</p>', 0, 0, 0, 'admin/image/product/1353082140.webp', 'Pearl White Kundan Choker Necklace With Earring - Necklace For Girls', 'Pearl White Kundan Choker Necklace With Earring - Necklace For Girls', 1, '2024-08-16 15:59:03', '2024-08-16 15:59:03'),
(13, 7, 7, 3, 2, '3 Eyes Alloy Strap Wristwatch', '3-eyes-alloy-strap-wristwatch', 'ii', 1000, 999, 6, 'Quartz Watch Set Women Fashion Silver Round 3 Eyes Alloy Strap Wristwatch Gift Rhinestone Watch For Women Jewelry Set', '<h2>Product details of 5PCS Quartz Watch Set Women Fashion Silver Round 3 Eyes Alloy Strap Wristwatch Gift Rhinestone Watch For Women Jewelry Set</h2><ul><li>5PCS Quartz Watch Set Women Fashion Silver Round 3 Eyes Alloy Strap Wristwatch Gift Rhinestone Watch For Women Jewelry Set</li></ul><p><strong>• Fashionable and trendy design :</strong>The watch set features a stylish and modern design that complements any outfit, making it a perfect accessory for fashion-conscious women.</p><p>&nbsp;</p><p><strong>• Durable and long-lasting :</strong>Made of high-quality alloy material, the watch set is resistant to wear and tear, ensuring long-lasting use.</p><p>&nbsp;</p><p><strong>• Easy to wear and adjust :</strong>The watch set comes with a comfortable rhinestone strap that can be easily adjusted to fit any wrist size, making it a convenient accessory for everyday use.</p><p>&nbsp;</p><p><strong>• Accurate timekeeping :</strong>The watch set uses quartz movement, which provides accurate timekeeping, ensuring that you always have the correct time at hand.</p><p>&nbsp;</p><p>&nbsp;</p><p>Movement type: Quartz Watch</p><p>&nbsp;</p><p>Applicable people: Women</p><p>&nbsp;</p><p>Watch band length Approx:220mm</p><p>&nbsp;</p><p>Watch band Width Approx:18mm</p><p>&nbsp;</p><p>Watch case diameter Approx:37mm</p><p>&nbsp;</p><p>Watch case Thickness Approx:8mm</p><p>&nbsp;</p><p>Package included:</p><p>&nbsp;</p><p>- 1 x Wrist watch</p><p>&nbsp;</p><p>-4 X Bracelet</p><p>&nbsp;</p><p>【Watch box not included】(life waterproof )only can splash a little water,can not be washed or in bathing,swimming,diving.</p><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/Sf592bc093dbd4f1baf8004d2052409c5G.jpg_2200x2200q80.jpg_.webp\"></figure><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/S12f310193a9a4158a22ac84a2cd8bcee6.jpg_2200x2200q80.jpg_.webp\"></figure><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/S371a7db92d4f4c29bfe80814aece7a29T.jpg_2200x2200q80.jpg_.webp\"></figure><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/S18441d7325a843bcbe04a0619044109a2.jpg_2200x2200q80.jpg_.webp\"></figure><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/S54a324ba6faa4bcd870a41c21c0db020j.jpg_2200x2200q80.jpg_.webp\"></figure><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/Sb2a34eb7f4d747cf8c59768c88500e2eC.jpg_2200x2200q80.jpg_.webp\"></figure><h2>Specifications of 5PCS Quartz Watch Set Women Fashion Silver Round 3 Eyes Alloy Strap Wristwatch Gift Rhinestone Watch For Women Jewelry Set</h2><ul><li>Brand</li></ul><p>No Brand</p><ul><li>SKU</li></ul><p>404536398_BD-2004554251</p><ul><li>Strap Material</li></ul><p>Alloy</p><ul><li>Movement</li></ul><p>Quartz</p><p>What’s in the box</p><p>মহিলাদের জন্য ফ্যাশন নৈমিত্তিক কোয়ার্টজ ঘড়ি সেট 5PCS সঙ্গে খাদ চাবুক কাঁচের হাত ঘড়ি গয়না ফ্যাশন আনুষাঙ্গিক</p><p><br>&nbsp;</p>', 0, 0, 0, 'admin/image/product/59093774.webp', 'Quartz Watch Set Women Fashion Silver Round 3 Eyes Alloy Strap Wristwatch Gift Rhinestone Watch For Women Jewelry Set', 'Quartz Watch Set Women Fashion Silver Round 3 Eyes Alloy Strap Wristwatch Gift Rhinestone Watch For Women Jewelry Set', 1, '2024-08-16 16:02:21', '2024-08-16 16:02:21'),
(14, 7, 7, 5, 2, 'Elegant Wristwatch Quartz Watch', 'elegant-wristwatch-quartz-watch', 'Elegant', 960, 499, 6, 'Watches Set Luxury Rhinestone Women Fashion Elegant Wristwatch Quartz Watch For Girl Ladies Clock Montre Femme', '<h2>Product details of 6pcs Set Watches Set Luxury Rhinestone Women Fashion Elegant Wristwatch Quartz Watch For Girl Ladies Clock Montre Femme</h2><ul><li>6pcs Set Watches Set Luxury Rhinestone Women Fashion Elegant Wristwatch Quartz Watch For Girl Ladies Clock Montre Femme</li></ul><p><strong>• Rhinestone-encrusted design :</strong>The watches are adorned with sparkling rhinestones, adding a touch of elegance and glamour to any outfit.</p><p>&nbsp;</p><p><strong>• Stainless steel band :</strong>The band is made of durable stainless steel, ensuring the watch stays securely fastened and lasts for years to come.</p><p>&nbsp;</p><p><strong>• Quartz movement :</strong>The watches use quartz movement, providing accurate timekeeping and reliability.</p><p>&nbsp;</p><p><strong>• Fashionable and casual style :</strong>The watches have a fashionable and casual design, making them suitable for both formal and informal occasions.</p><p>&nbsp;</p><p>Movement type: Quartz Watch</p><p>Applicable people: Women</p><p>Watch band length Approx:210mm</p><p>Watch band Width Approx:14mm</p><p>Watch case diameter Approx:30mm</p><p>Watch case Thickness Approx:9mm</p><p>Package included:</p><p>- 1 x Wrist watch，- 1 x Bracelet</p><p>-2 x earrings,- 1 x necklace,- 1 x ring</p><p>【Watch box not included】(life waterproof )only can splash a little water,can not be washed or in bathing,swimming,diving.</p><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/S34cd39d557e948fabeb124d050e744bfh.jpg_2200x2200q80.jpg_.webp\"></figure><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/Sdd019cb1574b4a939de83978936881796.jpg_2200x2200q80.jpg_.webp\"></figure><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/S41f10a8997d740028aadf655528f1cc4Y.jpg_2200x2200q80.jpg_.webp\"></figure><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/S732ef4c1fc844a138cf055ccb09909ebe.jpg_2200x2200q80.jpg_.webp\"></figure><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/S83fa7b75b5b34e809393f88e5ca413b56.jpg_2200x2200q80.jpg_.webp\"></figure><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/See9bc4fa5f264561a75d023b4a0a6b151.jpg_2200x2200q80.jpg_.webp\"></figure><p>&nbsp;</p><h2>Specifications of 6pcs Set Watches Set Luxury Rhinestone Women Fashion Elegant Wristwatch Quartz Watch For Girl Ladies Clock Montre Femme</h2><ul><li>Brand</li></ul><p>No Brand</p><ul><li>SKU</li></ul><p>397460212_BD-1972870929</p><ul><li>Movement</li></ul><p>Quartz</p><p>What’s in the box</p><p>স্টেইনলেস স্টিল ব্যান্ড সহ মেয়েদের জন্য বিলাসবহুল কাঁচের মহিলাদের কোয়ার্টজ রিস্টওয়াচ সেট মার্জিত ফ্যাশন ঘড়ি</p><p><br>&nbsp;</p>', 0, 0, 0, 'admin/image/product/717411128.webp', 'Watches Set Luxury Rhinestone Women Fashion Elegant Wristwatch Quartz Watch For Girl Ladies Clock Montre Femme', 'Watches Set Luxury Rhinestone Women Fashion Elegant Wristwatch Quartz Watch For Girl Ladies Clock Montre Femme', 1, '2024-08-16 16:04:30', '2024-08-16 16:04:30'),
(15, 6, 3, 3, 2, 'Summer Men\'s Casual Sports Suit Bicycle Printed Sports Outdoor Jogging Sweatshirt', 'summer-mens-casual-sports-suit-bicycle-printed-sports-outdoor-jogging-sweatshirt', 'Summer Men\'s', 3760, 1599, 6, 'Summer Men\'s Casual Sports Suit Bicycle Printed Sports Outdoor Jogging Sweatshirt Sweatpants Breathable Quick Drying', '<h2>Product details of Summer Men\'s Casual Sports Suit Bicycle Printed Sports Outdoor Jogging Sweatshirt Sweatpants Breathable Quick Drying 2 Piece Set</h2><ul><li>Summer Men\'s Casual Sports Suit Bicycle Printed Sports Outdoor Jogging Sweatshirt Sweatpants Breathable Quick Drying 2 Piece Set</li></ul><p><strong>• Breathable and Quick Drying Material :</strong>Made of polyester, this suit is breathable and quick drying, making it perfect for gym and fitness activities.</p><p>&nbsp;</p><p><strong>• Personalized Bicycle Printing :</strong>The suit comes with a personalized bicycle printing, adding a unique touch to your outfit.</p><p>&nbsp;</p><p><strong>• Two-Piece Set :</strong>This suit comes in a two-piece set, giving you the flexibility to mix and match with other clothing items.</p><p>&nbsp;</p><p><strong>• Short Sleeve Length :</strong>The short sleeve length of the suit makes it ideal for warmer weather, keeping you cool and comfortable.</p><p>&nbsp;</p><p>&nbsp;</p><p><strong>Specification：</strong></p><p>Size: Asian xl. Asian 2xl. Asian3XL</p><p>Color:Black.White</p><p>Material: Polyester</p><p>weight：280g</p><p><strong>Feature：</strong></p><p>A T-shirt with a fitting design that suits anyone.</p><p>The fabric is breathable, comfortable, and soft to the touch.</p><p>Good fabric is not prone to pilling and has natural elasticity.</p><p><strong>Size Recommendation:</strong></p><p>Asian XL 170-175cm 65-69KG</p><p>Asian 2XL 175-180cm 70-74KG</p><p>Asian 3XL 180-185cm 75-80KG</p><p><strong>Kindly Notice:</strong></p><p>1. This Asian Size Chart is only for your referents(Asian XL=US-M).Asiansizeis smallerthanUS/UK/RU/EU/SIZE.If you want to wear loose, it is recommended to shoot a larger size.Please allow 1-3cm differs due to manual measurement.Thank You!(All measurement in cm and please note1cm=0.39inch)</p><p>2. We appreciate that if you could allow slight color difference,as different computers may display different colors.</p><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/S98ec2c0fb1964d2e8f3ec52c7d2793a2J.jpg_2200x2200q80.jpg_.webp\"></figure><h2>Specifications of Summer Men\'s Casual Sports Suit Bicycle Printed Sports Outdoor Jogging Sweatshirt Sweatpants Breathable Quick Drying 2 Piece Set</h2><ul><li>Brand</li></ul><p>No Brand</p><ul><li>SKU</li></ul><p>391476035_BD-1953531854</p><ul><li>Main Material</li></ul><p>Polyester</p><ul><li>Material Family</li></ul><p>CASUAL</p><ul><li>Fashion Features</li></ul><p>Spring and Summer</p><p>What’s in the box</p><p>শ্বাসযোগ্য দ্রুত শুকানোর পুরুষদের স্পোর্টস স্যুট নৈমিত্তিক সাইকেল প্রিন্টেড সোয়েটশার্ট সোয়েটপ্যান্ট 2 পিস সেট বাইরে জগিং করার জন্য</p><p><br>&nbsp;</p>', 0, 0, 0, 'admin/image/product/834311443.webp', 'Summer Men\'s Casual Sports Suit Bicycle Printed Sports Outdoor Jogging Sweatshirt Sweatpants Breathable Quick Drying', 'Summer Men\'s Casual Sports Suit Bicycle Printed Sports Outdoor Jogging Sweatshirt Sweatpants Breathable Quick Drying', 1, '2024-08-16 16:07:51', '2024-08-16 16:07:51'),
(16, 6, 3, 3, 2, 'New Men\'s Round Neck Set Blazer Set Men', 'new-mens-round-neck-set-blazer-set-men', 'Set Men', 5614, 2000, 4, 'New Men\'s Round Neck Set Blazer Set Men', '<h2>Product details of New Men\'s Round Neck Set Blazer Set Men</h2><ul><li>New Men\'s Round Neck Set Blazer Set Men</li></ul><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/S36353a1dd7a64ba8b3f3b1325124eea3T.jpg_2200x2200q80.jpg_.webp\"></figure><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/S0602fac084fc4938aa7ddefb99cfba81z.jpg_2200x2200q80.jpg_.webp\"></figure><h2>Specifications of New Men\'s Round Neck Set Blazer Set Men</h2><ul><li>Brand</li></ul><p>No Brand</p><ul><li>SKU</li></ul><p>391637774_BD-1954464603</p><ul><li>Main Material</li></ul><p>Polyester</p><ul><li>Material Family</li></ul><p>CASUAL</p><ul><li>Fashion Features</li></ul><p>Four Seasons</p><p>What’s in the box</p><p>ক্যাজুয়াল রাউন্ড নেক পুরুষদের ব্লেজার সেট ফোর সিজন ফ্যাশন পলিয়েস্টার ও-নেক স্যুট জ্যাকেট প্যান্ট 2 পিস সেট</p><p><br>&nbsp;</p>', 0, 0, 0, 'admin/image/product/38416311.webp', 'New Men\'s Round Neck Set Blazer Set Men', 'New Men\'s Round Neck Set Blazer Set Men', 1, '2024-08-16 16:10:16', '2024-08-16 16:10:16');

-- --------------------------------------------------------

--
-- Table structure for table `product_colors`
--

CREATE TABLE `product_colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_colors`
--

INSERT INTO `product_colors` (`id`, `product_id`, `color_id`, `created_at`, `updated_at`) VALUES
(3, 1, 4, '2024-07-20 15:23:00', '2024-07-20 15:23:00'),
(6, 2, 4, '2024-07-20 15:35:52', '2024-07-20 15:35:52'),
(7, 3, 2, '2024-07-22 12:30:15', '2024-07-22 12:30:15'),
(8, 3, 4, '2024-07-22 12:30:15', '2024-07-22 12:30:15'),
(24, 10, 4, '2024-08-16 15:54:21', '2024-08-16 15:54:21'),
(25, 11, 2, '2024-08-16 15:57:00', '2024-08-16 15:57:00'),
(26, 12, 2, '2024-08-16 15:59:03', '2024-08-16 15:59:03'),
(27, 12, 5, '2024-08-16 15:59:03', '2024-08-16 15:59:03'),
(28, 13, 4, '2024-08-16 16:02:21', '2024-08-16 16:02:21'),
(29, 13, 5, '2024-08-16 16:02:21', '2024-08-16 16:02:21'),
(30, 14, 4, '2024-08-16 16:04:30', '2024-08-16 16:04:30'),
(31, 15, 4, '2024-08-16 16:07:51', '2024-08-16 16:07:51'),
(32, 16, 4, '2024-08-16 16:10:16', '2024-08-16 16:10:16'),
(33, 4, 5, '2024-08-16 16:11:33', '2024-08-16 16:11:33'),
(34, 8, 5, '2024-08-16 16:12:06', '2024-08-16 16:12:06'),
(36, 9, 5, '2024-08-16 16:13:50', '2024-08-16 16:13:50'),
(37, 5, 5, '2024-08-16 16:14:41', '2024-08-16 16:14:41'),
(38, 6, 5, '2024-08-16 16:15:13', '2024-08-16 16:15:13'),
(39, 7, 5, '2024-08-16 16:15:58', '2024-08-16 16:15:58');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin/image/other-images/3486.jpeg', '2024-07-20 15:21:37', '2024-07-20 15:21:37'),
(2, 1, 'admin/image/other-images/3852.jpg', '2024-07-20 15:21:37', '2024-07-20 15:21:37'),
(3, 1, 'admin/image/other-images/1846.jpg', '2024-07-20 15:21:37', '2024-07-20 15:21:37'),
(4, 1, 'admin/image/other-images/2335.jpg', '2024-07-20 15:21:37', '2024-07-20 15:21:37'),
(5, 1, 'admin/image/other-images/1256.webp', '2024-07-20 15:21:37', '2024-07-20 15:21:37'),
(6, 1, 'admin/image/other-images/2660.jpg', '2024-07-20 15:21:37', '2024-07-20 15:21:37'),
(7, 1, 'admin/image/other-images/4988.jpg', '2024-07-20 15:21:37', '2024-07-20 15:21:37'),
(8, 1, 'admin/image/other-images/2907.webp', '2024-07-20 15:21:37', '2024-07-20 15:21:37'),
(9, 1, 'admin/image/other-images/1359.png', '2024-07-20 15:21:37', '2024-07-20 15:21:37'),
(13, 2, 'admin/image/other-images/3001.jpg', '2024-07-20 15:35:51', '2024-07-20 15:35:51'),
(14, 2, 'admin/image/other-images/1554.png', '2024-07-20 15:35:52', '2024-07-20 15:35:52'),
(15, 2, 'admin/image/other-images/3722.jpg', '2024-07-20 15:35:52', '2024-07-20 15:35:52'),
(16, 3, 'admin/image/other-images/490.jpg', '2024-07-22 12:30:15', '2024-07-22 12:30:15'),
(17, 3, 'admin/image/other-images/798.png', '2024-07-22 12:30:15', '2024-07-22 12:30:15'),
(18, 3, 'admin/image/other-images/2600.jpg', '2024-07-22 12:30:15', '2024-07-22 12:30:15'),
(19, 3, 'admin/image/other-images/3429.jpg', '2024-07-22 12:30:15', '2024-07-22 12:30:15'),
(20, 4, 'admin/image/other-images/3977.jpg', '2024-07-22 12:37:35', '2024-07-22 12:37:35'),
(21, 4, 'admin/image/other-images/167.jpg', '2024-07-22 12:37:35', '2024-07-22 12:37:35'),
(22, 5, 'admin/image/other-images/2637.jpg', '2024-07-22 12:42:57', '2024-07-22 12:42:57'),
(23, 5, 'admin/image/other-images/3275.jpg', '2024-07-22 12:42:57', '2024-07-22 12:42:57'),
(24, 6, 'admin/image/other-images/3373.jpg', '2024-07-22 12:47:13', '2024-07-22 12:47:13'),
(25, 7, 'admin/image/other-images/4562.jpg', '2024-07-22 12:51:59', '2024-07-22 12:51:59'),
(26, 7, 'admin/image/other-images/2057.jpg', '2024-07-22 12:51:59', '2024-07-22 12:51:59'),
(27, 7, 'admin/image/other-images/1760.jpg', '2024-07-22 12:51:59', '2024-07-22 12:51:59'),
(28, 8, 'admin/image/other-images/4512.jpg', '2024-07-22 12:54:38', '2024-07-22 12:54:38'),
(29, 8, 'admin/image/other-images/2198.jpg', '2024-07-22 12:54:38', '2024-07-22 12:54:38'),
(30, 8, 'admin/image/other-images/2472.webp', '2024-07-22 12:54:38', '2024-07-22 12:54:38'),
(34, 10, 'admin/image/other-images/2161.jpg', '2024-08-16 15:54:21', '2024-08-16 15:54:21'),
(35, 11, 'admin/image/other-images/4481.jpg', '2024-08-16 15:57:00', '2024-08-16 15:57:00'),
(36, 12, 'admin/image/other-images/1828.png', '2024-08-16 15:59:03', '2024-08-16 15:59:03'),
(37, 13, 'admin/image/other-images/2004.jpg', '2024-08-16 16:02:21', '2024-08-16 16:02:21'),
(38, 14, 'admin/image/other-images/4021.jpg', '2024-08-16 16:04:30', '2024-08-16 16:04:30'),
(39, 14, 'admin/image/other-images/2288.jpg', '2024-08-16 16:04:30', '2024-08-16 16:04:30'),
(40, 14, 'admin/image/other-images/1656.jpg', '2024-08-16 16:04:30', '2024-08-16 16:04:30'),
(41, 15, 'admin/image/other-images/2037.jpg', '2024-08-16 16:07:51', '2024-08-16 16:07:51'),
(42, 16, 'admin/image/other-images/3048.jpg', '2024-08-16 16:10:16', '2024-08-16 16:10:16'),
(43, 9, 'admin/image/other-images/2601.jpg', '2024-08-16 16:12:24', '2024-08-16 16:12:24');

-- --------------------------------------------------------

--
-- Table structure for table `product_sizes`
--

CREATE TABLE `product_sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_sizes`
--

INSERT INTO `product_sizes` (`id`, `product_id`, `size_id`, `created_at`, `updated_at`) VALUES
(3, 1, 3, '2024-07-20 15:23:00', '2024-07-20 15:23:00'),
(6, 2, 3, '2024-07-20 15:35:52', '2024-07-20 15:35:52'),
(7, 3, 1, '2024-07-22 12:30:15', '2024-07-22 12:30:15'),
(8, 3, 3, '2024-07-22 12:30:15', '2024-07-22 12:30:15'),
(23, 10, 3, '2024-08-16 15:54:21', '2024-08-16 15:54:21'),
(24, 10, 4, '2024-08-16 15:54:21', '2024-08-16 15:54:21'),
(25, 11, 3, '2024-08-16 15:57:00', '2024-08-16 15:57:00'),
(26, 12, 3, '2024-08-16 15:59:03', '2024-08-16 15:59:03'),
(27, 13, 3, '2024-08-16 16:02:21', '2024-08-16 16:02:21'),
(28, 14, 3, '2024-08-16 16:04:30', '2024-08-16 16:04:30'),
(29, 15, 3, '2024-08-16 16:07:51', '2024-08-16 16:07:51'),
(30, 16, 3, '2024-08-16 16:10:16', '2024-08-16 16:10:16'),
(31, 4, 4, '2024-08-16 16:11:33', '2024-08-16 16:11:33'),
(32, 8, 4, '2024-08-16 16:12:06', '2024-08-16 16:12:06'),
(34, 9, 4, '2024-08-16 16:13:50', '2024-08-16 16:13:50'),
(35, 5, 4, '2024-08-16 16:14:41', '2024-08-16 16:14:41'),
(36, 6, 4, '2024-08-16 16:15:13', '2024-08-16 16:15:13'),
(37, 7, 4, '2024-08-16 16:15:58', '2024-08-16 16:15:58');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('aDLlmSZUfG3B2IVclMkMoVbuucW5H9w1ReX0tw8o', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YToxMDp7czo2OiJfdG9rZW4iO3M6NDA6ImRONEVrT1RPb3RTcm9hQWJPNGNST2FveHNUWHl3S2FFSWZKcnVyTDciO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQzOiJodHRwOi8vbG9jYWxob3N0L2Vjb20tZmFyaWEtYjExL3B1YmxpYy9jYXJ0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo0OiJjYXJ0IjthOjE6e3M6NzoiZGVmYXVsdCI7TzoyOToiSWxsdW1pbmF0ZVxTdXBwb3J0XENvbGxlY3Rpb24iOjI6e3M6ODoiACoAaXRlbXMiO2E6MDp7fXM6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDt9fXM6ODoiY2hlY2tvdXQiO3M6ODoiY2hlY2tvdXQiO3M6MTE6Im9yZGVyX3RvdGFsIjtkOjUzNjQ5O3M6OToidGF4X3RvdGFsIjtkOjY5ODU7czoxNDoic2hpcHBpbmdfdG90YWwiO2k6MTAwO3M6MTA6ImN1c3RvbWVySWQiO2k6MTtzOjEyOiJjdXN0b21lck5hbWUiO3M6NToiRmFyaWEiO30=', 1723840412),
('r6k9nB6ISelYdkMqVDuDMbvtuXkhupUgX9QOZIHe', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidkthWFhRMjI0VWV6WlpVM2JkVDlyQ0lCUWtNTUg1YlRiMVpwc1dZWiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3QvZWNvbS1mYXJpYS1iMTEvcHVibGljL2NhcnQiO319', 1723840974),
('vtFPsEPZt0PTxTBxc3VWVcrGyzuMV5ecMZFz8dD4', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiRGZTdDZEN2psUUhwdThQeXNOdngycEJiWG9QVzNCV2R0RVpybjhVQyI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM4OiJodHRwOi8vbG9jYWxob3N0L2Vjb20tZmFyaWEtYjExL3B1YmxpYyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTIkeGhVMW5mNEl6YS4vWEplL2Vpdmg2ZXRoeW1mYlF2TU9ReXp1SjlwZ0suU0pCQTE4Z0JTT0siO30=', 1723846562);

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `name`, `code`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Extra extra Large', 'XXL', 'Extra Large', '2024-07-17 13:55:33', '2024-07-17 13:56:57'),
(3, 'Extra Large', 'XL', 'Extra Large', '2024-07-20 15:08:41', '2024-07-20 15:08:41'),
(4, 'Small', 'S', 'Small', '2024-07-22 12:24:47', '2024-07-22 12:24:47');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 = Active and 0 = In active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `name`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(2, 7, 'jewellery', 'good', 'admin/image/sub-category/2054436095.jpg', 1, '2024-07-16 13:50:01', '2024-07-16 13:50:01'),
(3, 6, 'Formal Suit', 'Formal Suit', 'admin/image/sub-category/737372846.jpg', 1, '2024-07-20 15:28:46', '2024-07-20 15:28:46'),
(4, 6, 'Man Watch', 'Man Watch', 'admin/image/sub-category/1566367611.webp', 1, '2024-07-22 12:13:06', '2024-07-22 12:13:06'),
(5, 8, 'Mobile', 'Mobile', 'admin/image/sub-category/253542590.jpg', 1, '2024-07-22 12:14:00', '2024-07-22 12:14:00'),
(6, 8, 'Laptop', 'Laptop', 'admin/image/sub-category/1473798521.png', 1, '2024-07-22 12:14:35', '2024-07-22 12:14:35'),
(7, 7, 'Ladies Watch', 'Ladies Watch', 'admin/image/sub-category/1932886782.webp', 1, '2024-07-22 12:16:20', '2024-07-22 12:16:20');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `code`, `description`, `status`, `created_at`, `updated_at`) VALUES
(2, 'pice', 'pice', 'pice', 1, '2024-07-17 12:56:12', '2024-07-17 12:56:12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'faria', 'faria@gmail.com', NULL, '$2y$12$xhU1nf4Iza./XJe/eivh6ethymfbQvMOQyzuJ9pgK.SJBA18gBSOK', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-15 15:21:25', '2024-07-15 15:21:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_name_unique` (`name`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `colors_name_unique` (`name`),
  ADD UNIQUE KEY `colors_code_unique` (`code`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`),
  ADD UNIQUE KEY `customers_mobile_unique` (`mobile`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_name_unique` (`name`),
  ADD UNIQUE KEY `products_code_unique` (`code`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`) USING HASH;

--
-- Indexes for table `product_colors`
--
ALTER TABLE `product_colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_sizes`
--
ALTER TABLE `product_sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sizes_name_unique` (`name`),
  ADD UNIQUE KEY `sizes_code_unique` (`code`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sub_categories_name_unique` (`name`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `units_name_unique` (`name`),
  ADD UNIQUE KEY `units_code_unique` (`code`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `product_colors`
--
ALTER TABLE `product_colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `product_sizes`
--
ALTER TABLE `product_sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
