package com.itextpdf.kernel.pdf;

import androidx.exifinterface.media.ExifInterface;
import com.facebook.appevents.AppEventsConstants;
import com.itextpdf.kernel.xmp.XMPConst;
import com.itextpdf.kernel.xmp.XMPException;
import com.itextpdf.kernel.xmp.XMPMeta;
import com.itextpdf.kernel.xmp.properties.XMPProperty;
import com.itextpdf.svg.SvgConstants;

/* JADX INFO: loaded from: classes6.dex */
public class PdfAConformanceLevel {
    public static final PdfAConformanceLevel PDF_A_1A = new PdfAConformanceLevel(AppEventsConstants.EVENT_PARAM_VALUE_YES, "A");
    public static final PdfAConformanceLevel PDF_A_1B = new PdfAConformanceLevel(AppEventsConstants.EVENT_PARAM_VALUE_YES, SvgConstants.Attributes.PATH_DATA_BEARING);
    public static final PdfAConformanceLevel PDF_A_2A = new PdfAConformanceLevel(ExifInterface.GPS_MEASUREMENT_2D, "A");
    public static final PdfAConformanceLevel PDF_A_2B = new PdfAConformanceLevel(ExifInterface.GPS_MEASUREMENT_2D, SvgConstants.Attributes.PATH_DATA_BEARING);
    public static final PdfAConformanceLevel PDF_A_2U = new PdfAConformanceLevel(ExifInterface.GPS_MEASUREMENT_2D, "U");
    public static final PdfAConformanceLevel PDF_A_3A = new PdfAConformanceLevel(ExifInterface.GPS_MEASUREMENT_3D, "A");
    public static final PdfAConformanceLevel PDF_A_3B = new PdfAConformanceLevel(ExifInterface.GPS_MEASUREMENT_3D, SvgConstants.Attributes.PATH_DATA_BEARING);
    public static final PdfAConformanceLevel PDF_A_3U = new PdfAConformanceLevel(ExifInterface.GPS_MEASUREMENT_3D, "U");
    private final String conformance;
    private final String part;

    private PdfAConformanceLevel(String str, String str2) {
        this.conformance = str2;
        this.part = str;
    }

    public String getConformance() {
        return this.conformance;
    }

    public String getPart() {
        return this.part;
    }

    public static PdfAConformanceLevel getConformanceLevel(String str, String str2) {
        boolean zEquals;
        boolean zEquals2;
        boolean zEquals3;
        String upperCase = str2.toUpperCase();
        zEquals = "A".equals(upperCase);
        zEquals2 = SvgConstants.Attributes.PATH_DATA_BEARING.equals(upperCase);
        zEquals3 = "U".equals(upperCase);
        str.hashCode();
        switch (str) {
            case "1":
                if (zEquals) {
                    return PDF_A_1A;
                }
                if (zEquals2) {
                    return PDF_A_1B;
                }
                return null;
            case "2":
                if (zEquals) {
                    return PDF_A_2A;
                }
                if (zEquals2) {
                    return PDF_A_2B;
                }
                if (zEquals3) {
                    return PDF_A_2U;
                }
                return null;
            case "3":
                if (zEquals) {
                    return PDF_A_3A;
                }
                if (zEquals2) {
                    return PDF_A_3B;
                }
                if (zEquals3) {
                    return PDF_A_3U;
                }
                return null;
            default:
                return null;
        }
    }

    public static PdfAConformanceLevel getConformanceLevel(XMPMeta xMPMeta) {
        XMPProperty property;
        XMPProperty property2;
        try {
            property = xMPMeta.getProperty(XMPConst.NS_PDFA_ID, XMPConst.CONFORMANCE);
            try {
                property2 = xMPMeta.getProperty(XMPConst.NS_PDFA_ID, "part");
            } catch (XMPException unused) {
                property2 = null;
            }
        } catch (XMPException unused2) {
            property = null;
        }
        if (property == null || property2 == null) {
            return null;
        }
        return getConformanceLevel(property2.getValue(), property.getValue());
    }
}
