package com.itextpdf.kernel.colors;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.kernel.pdf.colorspace.PdfDeviceCs;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class DeviceRgb extends Color {
    public static final Color BLACK = new DeviceRgb(0, 0, 0);
    public static final Color WHITE = new DeviceRgb(255, 255, 255);
    public static final Color RED = new DeviceRgb(255, 0, 0);
    public static final Color GREEN = new DeviceRgb(0, 255, 0);
    public static final Color BLUE = new DeviceRgb(0, 0, 255);

    public DeviceRgb(int i, int i2, int i3) {
        this(i / 255.0f, i2 / 255.0f, i3 / 255.0f);
    }

    public DeviceRgb(float f, float f2, float f3) {
        super(new PdfDeviceCs.Rgb(), new float[]{f > 1.0f ? 1.0f : f > 0.0f ? f : 0.0f, f2 > 1.0f ? 1.0f : f2 > 0.0f ? f2 : 0.0f, f3 <= 1.0f ? f3 > 0.0f ? f3 : 0.0f : 1.0f});
        if (f > 1.0f || f < 0.0f || f2 > 1.0f || f2 < 0.0f || f3 > 1.0f || f3 < 0.0f) {
            LoggerFactory.getLogger((Class<?>) DeviceRgb.class).warn(IoLogMessageConstant.COLORANT_INTENSITIES_INVALID);
        }
    }

    public DeviceRgb(java.awt.Color color) {
        this(color.getRed(), color.getGreen(), color.getBlue());
        if (color.getAlpha() != 255) {
            LoggerFactory.getLogger((Class<?>) DeviceRgb.class).warn(MessageFormatUtil.format(IoLogMessageConstant.COLOR_ALPHA_CHANNEL_IS_IGNORED, Integer.valueOf(color.getAlpha())));
        }
    }

    public DeviceRgb() {
        this(0.0f, 0.0f, 0.0f);
    }

    public static DeviceRgb makeLighter(DeviceRgb deviceRgb) {
        float f = deviceRgb.getColorValue()[0];
        float f2 = deviceRgb.getColorValue()[1];
        float f3 = deviceRgb.getColorValue()[2];
        float fMax = Math.max(f, Math.max(f2, f3));
        if (fMax == 0.0f) {
            return new DeviceRgb(84, 84, 84);
        }
        float fMin = Math.min(1.0f, 0.33f + fMax) / fMax;
        return new DeviceRgb(f * fMin, f2 * fMin, fMin * f3);
    }

    public static DeviceRgb makeDarker(DeviceRgb deviceRgb) {
        float f = deviceRgb.getColorValue()[0];
        float f2 = deviceRgb.getColorValue()[1];
        float f3 = deviceRgb.getColorValue()[2];
        float fMax = Math.max(f, Math.max(f2, f3));
        float fMax2 = Math.max(0.0f, (fMax - 0.33f) / fMax);
        return new DeviceRgb(f * fMax2, f2 * fMax2, fMax2 * f3);
    }
}
