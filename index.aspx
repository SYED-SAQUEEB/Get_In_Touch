<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Get In Touch - WEBSPARK</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;700&display=swap" rel="stylesheet">

    <!-- Bootstrap 5 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- TailwindCSS -->
    <script src="https://cdn.tailwindcss.com"></script>

    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #1e3c72, #2a5298);
        }
        .glass-card {
            background: rgba(255, 255, 255, 0.15);
            backdrop-filter: blur(12px);
            border: 1px solid rgba(255, 255, 255, 0.2);
        }
        .letter {
            display: inline-block;
            animation: bounce 2.5s infinite;
            font-weight: 700;
        }
        .letter:nth-child(1) { animation-delay: 0s; }
        .letter:nth-child(2) { animation-delay: 0.2s; }
        .letter:nth-child(3) { animation-delay: 0.4s; }
        .letter:nth-child(4) { animation-delay: 0.6s; }
        .letter:nth-child(5) { animation-delay: 0.8s; }
        .letter:nth-child(6) { animation-delay: 1s; }
        .letter:nth-child(7) { animation-delay: 1.2s; }
        .letter:nth-child(8) { animation-delay: 1.4s; }

        @keyframes bounce {
            0%, 100% { transform: translateY(0); color: #2563eb; }
            50% { transform: translateY(-12px); color: #facc15; }
        }

        .form-control:focus {
            border-color: #2563eb;
            box-shadow: 0 0 10px rgba(37,99,235,0.4);
        }
    </style>
</head>
<body class="d-flex align-items-center justify-content-center min-vh-100 p-3">

    <form id="form1" runat="server" class="glass-card rounded-4 shadow-lg p-5 w-100" style="max-width: 900px;">
        <div class="row g-4">

            <!-- Left Section -->
            <div class="col-lg-5 text-white d-flex flex-column justify-content-center">
                <h2 class="fw-bold display-5 mb-3">Contact Us</h2>
                <p class="lead">We’re here to help! Let’s build something great together.</p>
            </div>

            <!-- Right Section -->
            <div class="col-lg-7 bg-white rounded-4 p-4 shadow-sm">
                <h1 class="text-center mb-4 fs-1">
                    <span class="letter">W</span>
                    <span class="letter">E</span>
                    <span class="letter">B</span>
                    <span class="letter">S</span>
                    <span class="letter">P</span>
                    <span class="letter">A</span>
                    <span class="letter">R</span>
                    <span class="letter">K</span>
                </h1>
                <p class="text-center text-muted mb-4">We’d love to hear from you!</p>

                <!-- Form Fields -->
                <div class="mb-3">
                    <asp:TextBox ID="txtFullName" runat="server" CssClass="form-control form-control-lg" Placeholder="Full Name"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control form-control-lg" Placeholder="Email Address"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control form-control-lg" Placeholder="Phone"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <asp:DropDownList ID="ddlService" runat="server" CssClass="form-select form-select-lg">
                        <asp:ListItem Text="Mobile App Development" Value="Mobile App Development" />
                        <asp:ListItem Text="Web Development" Value="Web Development" />
                        <asp:ListItem Text="UI/UX Design" Value="UI/UX Design" />
                        <asp:ListItem Text="Digital Marketing" Value="Digital Marketing" />
                        <asp:ListItem Text="Software Development" Value="Software Development" />
                        <asp:ListItem Text="E-Commerce Solutions" Value="E-Commerce Solutions" />
                        <asp:ListItem Text="Cloud Services (AWS/Azure)" Value="Cloud Services" />
                        <asp:ListItem Text="Cybersecurity Solutions" Value="Cybersecurity Solutions" />
                        <asp:ListItem Text="Data Analytics & BI" Value="Data Analytics" />
                        <asp:ListItem Text="Artificial Intelligence (AI/ML)" Value="Artificial Intelligence" />
                        <asp:ListItem Text="Blockchain Solutions" Value="Blockchain Solutions" />
                        <asp:ListItem Text="IT Consulting" Value="IT Consulting" />
                        <asp:ListItem Text="Game Development" Value="Game Development" />
                        <asp:ListItem Text="CRM & ERP Solutions" Value="CRM & ERP Solutions" />
                        <asp:ListItem Text="DevOps & Automation" Value="DevOps & Automation" />
                        <asp:ListItem Text="Other (Custom Requirement)" Value="Other" />
                    </asp:DropDownList>
                </div>
                <div class="mb-3">
                    <asp:TextBox ID="txtMessage" runat="server" CssClass="form-control form-control-lg" TextMode="MultiLine" Rows="4" Placeholder="Tell us about your project..."></asp:TextBox>
                </div>

                <div class="d-grid">
                    <asp:Button ID="btnSend" runat="server" CssClass="btn btn-primary btn-lg fw-semibold shadow-sm" Text="Send Message" OnClick="btnSend_Click"/>
                </div>
                <asp:Label ID="lblMessage" runat="server" CssClass="mt-3 d-block text-success fw-semibold"></asp:Label>
            </div>
        </div>
    </form>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
