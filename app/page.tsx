import { LenisProvider } from "./providers/lenis-provider";

export default function Home() {
  return (
    <LenisProvider>
      <div className="h-[100vh] bg-red-500">Hola</div>
      <div className="h-[100vh] bg-yellow-500">Introduction</div>
      <div className="h-[100vh] bg-green-500">About</div>
    </LenisProvider>
  );
}
