package com.itextpdf.kernel.colors;

import com.itextpdf.kernel.pdf.colorspace.PdfDeviceCs;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class DeviceGray extends Color {
    public static final DeviceGray WHITE = new DeviceGray(1.0f);
    public static final DeviceGray GRAY = new DeviceGray(0.5f);
    public static final DeviceGray BLACK = new DeviceGray();

    public DeviceGray(float f) {
        super(new PdfDeviceCs.Gray(), new float[]{f <= 1.0f ? f > 0.0f ? f : 0.0f : 1.0f});
        if (f > 1.0f || f < 0.0f) {
            LoggerFactory.getLogger((Class<?>) DeviceGray.class).warn(IoLogMessageConstant.COLORANT_INTENSITIES_INVALID);
        }
    }

    public DeviceGray() {
        this(0.0f);
    }

    public static DeviceGray makeLighter(DeviceGray deviceGray) {
        float f = deviceGray.getColorValue()[0];
        if (f == 0.0f) {
            return new DeviceGray(0.3f);
        }
        return new DeviceGray(f * (Math.min(1.0f, 0.33f + f) / f));
    }

    public static DeviceGray makeDarker(DeviceGray deviceGray) {
        float f = deviceGray.getColorValue()[0];
        return new DeviceGray(f * Math.max(0.0f, (f - 0.33f) / f));
    }
}
