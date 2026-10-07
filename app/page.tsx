"use client";

import { useState } from "react";
import { ArrowRight, Bell, ChevronRight, Grid2X2, Home, QrCode, Search, Send, WalletCards } from "lucide-react";
import "./styles.css";

const quickActions = [
  { label: "Pay bills", icon: WalletCards, color: "purple" },
  { label: "Send money", icon: Send, color: "orange" },
  { label: "Buy airtime", icon: Grid2X2, color: "green" },
  { label: "More services", icon: Grid2X2, color: "blue" },
];

const services = [
  { title: "CBE Birr", description: "Pay, send and manage your money", image: "/assets/cbe_birr.jpg" },
  { title: "Telebirr", description: "Fast and easy mobile payments", image: "/assets/tb.png" },
  { title: "Entertainment", description: "Subscriptions and digital services", image: "/assets/dstv.png" },
];

export default function HomePage() {
  const [active, setActive] = useState("Home");
  const [banner, setBanner] = useState(0);
  const banners = ["home_ban1.jpg", "home_ban2.jpg", "home_ban3.jpg", "home_ban4.jpg", "home_ban5.jpg"];

  return (
    <main className="app-shell">
      <section className="hero">
        <nav className="topbar" aria-label="Main navigation">
          <div className="brand"><img src="/assets/cbe_logo.jpg" alt="Commercial Bank of Ethiopia" /><span>CBE Digital</span></div>
          <div className="desktop-nav"><button className="nav-active">Personal</button><button>Business</button><button>Support</button></div>
          <div className="top-actions"><button className="icon-button" aria-label="Search"><Search size={19} /></button><button className="icon-button" aria-label="Notifications"><Bell size={19} /><i /></button><button className="avatar" aria-label="Profile">A</button></div>
        </nav>
        <div className="hero-content">
          <div><p className="eyebrow">WELCOME BACK, ABEBE</p><h1>Banking made<br /><em>simple.</em></h1><p className="hero-copy">Everything you need to manage your money, pay bills, and move forward.</p><div className="hero-buttons"><button className="primary">View account <ArrowRight size={17} /></button><button className="secondary">Explore services</button></div></div>
          <div className="balance-card"><div className="card-top"><span>Available balance</span><button aria-label="Hide balance">•••</button></div><strong>ETB 24,680.00</strong><div className="card-bottom"><span>•••• 4821</span><span>VISA</span></div></div>
        </div>
      </section>

      <section className="content">
        <div className="section-heading"><div><p className="eyebrow purple-text">YOUR MONEY, YOUR WAY</p><h2>What do you need today?</h2></div><button className="text-button">View all <ChevronRight size={16} /></button></div>
        <div className="quick-grid">{quickActions.map(({ label, icon: Icon, color }) => <button className="quick-card" key={label}><span className={`action-icon ${color}`}><Icon size={21} /></span><span>{label}</span><ChevronRight className="card-arrow" size={17} /></button>)}</div>

        <div className="banner"><img src={`/assets/${banners[banner]}`} alt="CBE banking services" /><div className="banner-overlay"><p>Banking that moves with you</p><button>Learn more <ArrowRight size={15} /></button></div></div><div className="dots">{banners.map((_, i) => <button aria-label={`Banner ${i + 1}`} className={i === banner ? "dot active" : "dot"} onClick={() => setBanner(i)} key={i} />)}</div>

        <div className="section-heading services-heading"><div><p className="eyebrow purple-text">DISCOVER MORE</p><h2>Popular services</h2></div><button className="text-button">See all <ChevronRight size={16} /></button></div>
        <div className="service-grid">{services.map(service => <article className="service-card" key={service.title}><img src={service.image} alt="" /><div><h3>{service.title}</h3><p>{service.description}</p></div><ChevronRight size={18} /></article>)}</div>
      </section>

      <button className="qr-button" aria-label="Scan QR code"><QrCode size={24} /></button>
      <nav className="mobile-nav" aria-label="Mobile navigation">{["Home", "Payments", "Services", "Profile"].map((item, i) => <button key={item} className={active === item ? "mobile-active" : ""} onClick={() => setActive(item)}>{i === 0 ? <Home size={20} /> : i === 1 ? <Send size={20} /> : i === 2 ? <Grid2X2 size={20} /> : <span className="nav-avatar">A</span>}<small>{item}</small></button>)}</nav>
    </main>
  );
}
