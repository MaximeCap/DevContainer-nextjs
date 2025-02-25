"use client";
import { ReactLenis } from "lenis/react";
import { FC, PropsWithChildren } from "react";

export const LenisProvider: FC<PropsWithChildren> = (props) => {
  return <ReactLenis root>{props.children}</ReactLenis>;
};
