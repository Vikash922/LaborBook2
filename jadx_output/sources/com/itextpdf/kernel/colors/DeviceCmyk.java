package com.itextpdf.kernel.colors;

import com.itextpdf.kernel.pdf.colorspace.PdfDeviceCs;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class DeviceCmyk extends Color {
    public static final DeviceCmyk CYAN = new DeviceCmyk(100, 0, 0, 0);
    public static final DeviceCmyk MAGENTA = new DeviceCmyk(0, 100, 0, 0);
    public static final DeviceCmyk YELLOW = new DeviceCmyk(0, 0, 100, 0);
    public static final DeviceCmyk BLACK = new DeviceCmyk(0, 0, 0, 100);

    public DeviceCmyk() {
        this(0.0f, 0.0f, 0.0f, 1.0f);
    }

    public DeviceCmyk(int i, int i2, int i3, int i4) {
        this(i / 100.0f, i2 / 100.0f, i3 / 100.0f, i4 / 100.0f);
    }

    public DeviceCmyk(float f, float f2, float f3, float f4) {
        super(new PdfDeviceCs.Cmyk(), new float[]{f > 1.0f ? 1.0f : f > 0.0f ? f : 0.0f, f2 > 1.0f ? 1.0f : f2 > 0.0f ? f2 : 0.0f, f3 > 1.0f ? 1.0f : f3 > 0.0f ? f3 : 0.0f, f4 <= 1.0f ? f4 > 0.0f ? f4 : 0.0f : 1.0f});
        if (f > 1.0f || f < 0.0f || f2 > 1.0f || f2 < 0.0f || f3 > 1.0f || f3 < 0.0f || f4 > 1.0f || f4 < 0.0f) {
            LoggerFactory.getLogger((Class<?>) DeviceCmyk.class).warn(IoLogMessageConstant.COLORANT_INTENSITIES_INVALID);
        }
    }

    public static DeviceCmyk makeLighter(DeviceCmyk deviceCmyk) {
        return convertRgbToCmyk(DeviceRgb.makeLighter(convertCmykToRgb(deviceCmyk)));
    }

    public static DeviceCmyk makeDarker(DeviceCmyk deviceCmyk) {
        return convertRgbToCmyk(DeviceRgb.makeDarker(convertCmykToRgb(deviceCmyk)));
    }
}
