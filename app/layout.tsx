import type { Metadata } from "next";

export const metadata: Metadata = { title: "CBE Digital Banking", description: "Simple, secure digital banking from the Commercial Bank of Ethiopia." };

export default function RootLayout({ children }: Readonly<{ children: React.ReactNode }>) { return <html lang="en"><body>{children}</body></html>; }
