package com.itextpdf.kernel.colors;

import com.itextpdf.kernel.exceptions.KernelExceptionMessageConstant;
import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.kernel.pdf.colorspace.PdfCieBasedCs;
import com.itextpdf.kernel.pdf.colorspace.PdfColorSpace;
import com.itextpdf.kernel.pdf.colorspace.PdfDeviceCs;
import com.itextpdf.kernel.pdf.colorspace.PdfSpecialCs;
import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public class Color {
    protected PdfColorSpace colorSpace;
    protected float[] colorValue;

    protected Color(PdfColorSpace pdfColorSpace, float[] fArr) {
        this.colorSpace = pdfColorSpace;
        if (fArr == null) {
            this.colorValue = new float[pdfColorSpace.getNumberOfComponents()];
        } else {
            this.colorValue = fArr;
        }
    }

    public static Color makeColor(PdfColorSpace pdfColorSpace) {
        return makeColor(pdfColorSpace, null);
    }

    public static Color makeColor(PdfColorSpace pdfColorSpace, float[] fArr) {
        Color indexed;
        Color color;
        Color indexed2;
        DeviceCmyk deviceCmyk;
        DeviceRgb deviceRgb;
        Color color2;
        DeviceGray deviceGray;
        boolean z = true;
        Color color3 = null;
        color3 = null;
        color3 = null;
        color3 = null;
        if (pdfColorSpace instanceof PdfDeviceCs) {
            if (pdfColorSpace instanceof PdfDeviceCs.Gray) {
                if (fArr != null) {
                    color2 = deviceGray;
                    deviceGray = new DeviceGray(fArr[0]);
                } else {
                    color2 = deviceGray;
                    deviceGray = new DeviceGray();
                }
            } else if (pdfColorSpace instanceof PdfDeviceCs.Rgb) {
                if (fArr != null) {
                    color2 = deviceRgb;
                    deviceRgb = new DeviceRgb(fArr[0], fArr[1], fArr[2]);
                } else {
                    color2 = deviceRgb;
                    deviceRgb = new DeviceRgb();
                }
            } else if (pdfColorSpace instanceof PdfDeviceCs.Cmyk) {
                if (fArr != null) {
                    color2 = deviceCmyk;
                    deviceCmyk = new DeviceCmyk(fArr[0], fArr[1], fArr[2], fArr[3]);
                } else {
                    color2 = deviceCmyk;
                    deviceCmyk = new DeviceCmyk();
                }
            }
            color = color2;
            z = false;
            color3 = color;
        } else {
            if (pdfColorSpace instanceof PdfCieBasedCs) {
                if (pdfColorSpace instanceof PdfCieBasedCs.CalGray) {
                    PdfCieBasedCs.CalGray calGray = (PdfCieBasedCs.CalGray) pdfColorSpace;
                    if (fArr != null) {
                        indexed2 = new CalGray(calGray, fArr[0]);
                        color = indexed2;
                    } else {
                        indexed = new CalGray(calGray);
                        color = indexed;
                    }
                } else if (pdfColorSpace instanceof PdfCieBasedCs.CalRgb) {
                    PdfCieBasedCs.CalRgb calRgb = (PdfCieBasedCs.CalRgb) pdfColorSpace;
                    if (fArr != null) {
                        indexed2 = new CalRgb(calRgb, fArr);
                        color = indexed2;
                    } else {
                        indexed = new CalRgb(calRgb);
                        color = indexed;
                    }
                } else if (pdfColorSpace instanceof PdfCieBasedCs.IccBased) {
                    PdfCieBasedCs.IccBased iccBased = (PdfCieBasedCs.IccBased) pdfColorSpace;
                    if (fArr != null) {
                        indexed2 = new IccBased(iccBased, fArr);
                        color = indexed2;
                    } else {
                        indexed = new IccBased(iccBased);
                        color = indexed;
                    }
                } else if (pdfColorSpace instanceof PdfCieBasedCs.Lab) {
                    PdfCieBasedCs.Lab lab = (PdfCieBasedCs.Lab) pdfColorSpace;
                    if (fArr != null) {
                        indexed2 = new Lab(lab, fArr);
                        color = indexed2;
                    } else {
                        indexed = new Lab(lab);
                        color = indexed;
                    }
                }
            } else if (pdfColorSpace instanceof PdfSpecialCs) {
                if (pdfColorSpace instanceof PdfSpecialCs.Separation) {
                    PdfSpecialCs.Separation separation = (PdfSpecialCs.Separation) pdfColorSpace;
                    if (fArr != null) {
                        indexed2 = new Separation(separation, fArr[0]);
                        color = indexed2;
                    } else {
                        indexed = new Separation(separation);
                        color = indexed;
                    }
                } else if (pdfColorSpace instanceof PdfSpecialCs.DeviceN) {
                    PdfSpecialCs.DeviceN deviceN = (PdfSpecialCs.DeviceN) pdfColorSpace;
                    if (fArr != null) {
                        indexed2 = new DeviceN(deviceN, fArr);
                        color = indexed2;
                    } else {
                        indexed = new DeviceN(deviceN);
                        color = indexed;
                    }
                } else if (pdfColorSpace instanceof PdfSpecialCs.Indexed) {
                    if (fArr != null) {
                        indexed2 = new Indexed(pdfColorSpace, (int) fArr[0]);
                        color = indexed2;
                    } else {
                        indexed = new Indexed(pdfColorSpace);
                        color = indexed;
                    }
                }
            } else if (pdfColorSpace instanceof PdfSpecialCs.Pattern) {
                color = new Color(pdfColorSpace, fArr);
            }
            z = false;
            color3 = color;
        }
        if (z) {
            throw new PdfException("Unknown color space.");
        }
        return color3;
    }

    public static DeviceRgb convertCmykToRgb(DeviceCmyk deviceCmyk) {
        float f = 1.0f - deviceCmyk.getColorValue()[0];
        float f2 = 1.0f - deviceCmyk.getColorValue()[1];
        float f3 = 1.0f - deviceCmyk.getColorValue()[2];
        float f4 = 1.0f - deviceCmyk.getColorValue()[3];
        return new DeviceRgb(f * f4, f2 * f4, f3 * f4);
    }

    public static DeviceCmyk convertRgbToCmyk(DeviceRgb deviceRgb) {
        float f = deviceRgb.getColorValue()[0];
        float f2 = deviceRgb.getColorValue()[1];
        float f3 = deviceRgb.getColorValue()[2];
        float fMax = 1.0f - Math.max(Math.max(f, f2), f3);
        float f4 = 1.0f - fMax;
        return new DeviceCmyk(((1.0f - f) - fMax) / f4, ((1.0f - f2) - fMax) / f4, ((1.0f - f3) - fMax) / f4, fMax);
    }

    public int getNumberOfComponents() {
        return this.colorValue.length;
    }

    public PdfColorSpace getColorSpace() {
        return this.colorSpace;
    }

    public float[] getColorValue() {
        return this.colorValue;
    }

    public void setColorValue(float[] fArr) {
        if (this.colorValue.length != fArr.length) {
            throw new PdfException(KernelExceptionMessageConstant.INCORRECT_NUMBER_OF_COMPONENTS, this);
        }
        this.colorValue = fArr;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Color color = (Color) obj;
        PdfColorSpace pdfColorSpace = this.colorSpace;
        if (pdfColorSpace == null ? color.colorSpace == null : pdfColorSpace.getPdfObject().equals(color.colorSpace.getPdfObject())) {
            if (Arrays.equals(this.colorValue, color.colorValue)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        PdfColorSpace pdfColorSpace = this.colorSpace;
        int iHashCode = (pdfColorSpace == null ? 0 : pdfColorSpace.getPdfObject().hashCode()) * 31;
        float[] fArr = this.colorValue;
        return iHashCode + (fArr != null ? Arrays.hashCode(fArr) : 0);
    }
}
