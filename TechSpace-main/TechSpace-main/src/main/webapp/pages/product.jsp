<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheets/product.css">
</head>
<body>
    <header>
        <div class="brand">TECH SPACE</div>
        <nav>
            <ul class="navigation">
                <li><a href="#home">HOME</a></li>
                <li><a href="#shop">SHOP</a></li>
                <li><a href="#about">ABOUT US</a></li>
            </ul>
        </nav>
        <div class="header-icons">
            <a href="#account"><span>👤</span></a>
            <a href="#favorites"><span>❤️</span></a>
            <a href="#search"><span>🔍</span></a>
        </div>
    </header>
    
    <!-- Main content and other sections... -->
    <div class="main-content">
        <div class="product-info">
            <h1 class="product-title">Iphone 15 Pro Max</h1>
            <p class="product-description">Meet AirPods Max: The epitome of</br> immersive sound and luxury design.</br> With custom drivers, active noise</br> cancellation,and seamless Apple </br>integration, elevate your audio experience</br> to new heights.</p>
            <button class="shop-now-btn">Shop Now</button>
            
        </div>
      <img src="${pageContext.request.contextPath}/stylesheets/images/image 77.jpg"
						alt="Samsung Galaxy S23 Ultra">
    </div>
    <div class="navbar">
        <a href="#!" data-category="smartphone">Smartphones & Tablets</a>
        <a href="#!" data-category="wearable">Wearable Technology</a>
        <a href="#!" data-category="Laptops">Laptops & Computers</a>
        <a href="#!" data-category="Audio">Audio Devices</a>
        <a href="#!" data-category="Gamming">Gamming</a>
        <a href="#!" data-category="Home">Home Appliances</a>
    </div>
<div id="all-products" class="product-grid">
    <div class="products">
      <div class="product" data-category="smartphone">
        <div class="product-card">
          <img src="${pageContext.request.contextPath}/stylesheets/images/Frame 720.png"
						alt="Samsung Galaxy S23 Ultra">
          <button class="add-to-cart-btn">Add to Cart</button>
        </div>
        <h3>Samsung Galaxy S23 Ultra</h3>
        <p class="price">Rs. 2,09,999</p>
      </div>
      <div class="product"  data-category="wearable">
        <div class="product-card">
			<img src="${pageContext.request.contextPath}/stylesheets/images//Frame 720 (1).png"
						alt="Sony WH-1000XM4 Headphones">
          <button class="add-to-cart-btn">Add to Cart</button>
        </div>
        <h3>Sony WH-1000XM4 Headphones</h3>
        <p class="price">Rs. 40,000</p>
      </div>
      <div class="product"  data-category="Laptops">
        <div class="product-card">
			<img src="${pageContext.request.contextPath}/stylesheets/images/Frame 722.png"
						alt="Apple Watch Series 7">
          <button class="add-to-cart-btn">Add to Cart</button>
        </div>
        <h3>Apple Watch Series 7</h3>
        <p class="price">Rs. 70,000</p>
      </div>
      <div class="product" data-category="smartphone">
        <div class="product-card">
          <img src="${pageContext.request.contextPath}/stylesheets/images/Frame 720.png"
						alt="Samsung Galaxy S23 Ultra">
          <button class="add-to-cart-btn">Add to Cart</button>
        </div>
        <h3>Samsung Galaxy S23 Ultra</h3>
        <p class="price">Rs. 2,09,999</p>
      </div>
      <div class="product"  data-category="wearable">
        <div class="product-card">
			<img src="${pageContext.request.contextPath}/stylesheets/images//Frame 720 (1).png"
						alt="Sony WH-1000XM4 Headphones">
          <button class="add-to-cart-btn">Add to Cart</button>
        </div>
        <h3>Sony WH-1000XM4 Headphones</h3>
        <p class="price">Rs. 40,000</p>
      </div>
      <div class="product"  data-category="Laptops">
        <div class="product-card">
			<img src="${pageContext.request.contextPath}/stylesheets/images/Frame 722.png"
						alt="Apple Watch Series 7">
          <button class="add-to-cart-btn">Add to Cart</button>
        </div>
        <h3>Apple Watch Series 7</h3>
        <p class="price">Rs. 70,000</p>
      </div>

	
    </div>
    
  <a href="#!" class="back-to-top"> Back to Top</a>

    <script>
        // Filter products by category
        document.addEventListener("DOMContentLoaded", () => {
            const navbarLinks = document.querySelectorAll('.navbar a');
            navbarLinks.forEach(link => {
                link.addEventListener('click', function(e) {
                    e.preventDefault();
                    const category = this.getAttribute('data-category');
                    filterProducts(category);
                    updateActiveClass(navbarLinks, this);
                });
            });

            function filterProducts(category) {
                const products = document.querySelectorAll('#all-products .product');
                products.forEach(product => {
                    if ( product.getAttribute('data-category') === category) {
                        product.style.display = ''; 
                    } else {
                        product.style.display = 'none';
                    }
                });
            }

            function updateActiveClass(links, activeLink) {
                links.forEach(link => {
                    link.classList.remove('active');
                });
                activeLink.classList.add('active');
            }
        });
        document.addEventListener("DOMContentLoaded", function() {
  const backToTopButton = document.querySelector('.back-to-top');

  // Function to scroll to the top of the page
  backToTopButton.addEventListener('click', function() {
    window.scrollTo({
      top: 0,
      behavior: 'smooth' // Smooth scroll
    });
  });
});

    </script>
</body>
</html>