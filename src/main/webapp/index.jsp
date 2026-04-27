<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>NexusShop Modern UI</title>

<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700&display=swap" rel="stylesheet">

<style>
:root {
  --bg:#0f172a;
  --card:#111827;
  --primary:#6366f1;
  --accent:#22c55e;
  --text:#e5e7eb;
  --muted:#9ca3af;
}

body {
  margin:0;
  font-family:Inter;
  background:var(--bg);
  color:var(--text);
}

/* HEADER */
header {
  display:flex;
  justify-content:space-between;
  padding:20px 40px;
  background:rgba(0,0,0,0.4);
  backdrop-filter:blur(10px);
  position:sticky;
  top:0;
}

.logo {
  font-size:22px;
  font-weight:700;
}

nav a {
  margin:0 10px;
  color:var(--muted);
}

nav a:hover {
  color:white;
}

/* HERO */
.hero {
  text-align:center;
  padding:100px 20px;
}

.hero h1 {
  font-size:50px;
  background:linear-gradient(to right,#fff,#a5b4fc);
  -webkit-background-clip:text;
  -webkit-text-fill-color:transparent;
}

.btn {
  background:linear-gradient(135deg,#6366f1,#22c55e);
  padding:12px 20px;
  border:none;
  border-radius:30px;
  color:white;
  cursor:pointer;
}

/* GRID */
.grid {
  display:grid;
  grid-template-columns:repeat(auto-fit,minmax(250px,1fr));
  gap:20px;
  padding:40px;
}

/* CARD */
.card {
  background:var(--card);
  border-radius:15px;
  overflow:hidden;
  transition:0.3s;
}

.card:hover {
  transform:translateY(-10px);
  box-shadow:0 20px 40px rgba(0,0,0,0.6);
}

.card img {
  width:100%;
  height:200px;
  object-fit:cover;
}

.card-body {
  padding:15px;
}

.price {
  color:var(--accent);
  font-weight:700;
}

/* FLOAT CART */
.cart {
  position:fixed;
  bottom:20px;
  right:20px;
  background:var(--primary);
  padding:15px;
  border-radius:50%;
  cursor:pointer;
}

/* FOOTER */
footer {
  text-align:center;
  padding:30px;
  color:var(--muted);
}
</style>
</head>

<body>

<header>
  <div class="logo">NexusShop</div>
  <nav>
    <a href="#">Home</a>
    <a href="#">Products</a>
    <a href="#">Deals</a>
  </nav>
</header>

<section class="hero">
  <h1>Next Gen Shopping</h1>
  <p>Premium products. Modern experience.</p>
  <button class="btn">Shop Now</button>
</section>

<section class="grid" id="products"></section>

<div class="cart">🛒</div>

<footer>
  © 2026 NexusShop
</footer>

<script>
const products = [
  {name:"iPhone 14", price:999, img:"https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb"},
  {name:"MacBook Pro", price:1999, img:"https://images.unsplash.com/photo-1593642632823"},
  {name:"Headphones", price:199, img:"https://images.unsplash.com/photo-1518441902110"},
  {name:"Shoes", price:150, img:"https://images.unsplash.com/photo-1542291026"}
];

const container = document.getElementById("products");

products.forEach(p=>{
  container.innerHTML += `
    <div class="card">
      <img src="${p.img}">
      <div class="card-body">
        <h3>${p.name}</h3>
        <p class="price">$${p.price}</p>
        <button class="btn">Add to Cart</button>
      </div>
    </div>
  `;
});
</script>

</body>
</html>
