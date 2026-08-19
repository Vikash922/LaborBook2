package com.itextpdf.io.image;

import com.itextpdf.io.codec.TIFFDirectory;
import com.itextpdf.io.codec.TIFFField;
import com.itextpdf.io.source.DeflaterOutputStream;
import com.itextpdf.io.source.RandomAccessFileOrArray;
import com.itextpdf.io.source.RandomAccessSourceFactory;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
class TiffImageHelper {
    TiffImageHelper() {
    }

    private static class TiffParameters {
        Map<String, Object> additional;
        TiffImageData image;
        boolean jpegProcessing;

        TiffParameters(TiffImageData tiffImageData) {
            this.image = tiffImageData;
        }
    }

    public static void processImage(ImageData imageData) throws Throwable {
        if (imageData.getOriginalType() != ImageType.TIFF) {
            throw new IllegalArgumentException("TIFF image expected");
        }
        try {
            if (imageData.getData() == null) {
                imageData.loadData();
            }
            RandomAccessFileOrArray randomAccessFileOrArray = new RandomAccessFileOrArray(new RandomAccessSourceFactory().createSource(imageData.getData()));
            TiffParameters tiffParameters = new TiffParameters((TiffImageData) imageData);
            processTiffImage(randomAccessFileOrArray, tiffParameters);
            randomAccessFileOrArray.close();
            if (tiffParameters.jpegProcessing) {
                return;
            }
            RawImageHelper.updateImageAttributes(tiffParameters.image, tiffParameters.additional);
        } catch (IOException e) {
            throw new com.itextpdf.io.exceptions.IOException(com.itextpdf.io.exceptions.IOException.TiffImageException, (Throwable) e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:64:0x00f5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void processTiffImage(com.itextpdf.io.source.RandomAccessFileOrArray r47, com.itextpdf.io.image.TiffImageHelper.TiffParameters r48) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 926
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.io.image.TiffImageHelper.processTiffImage(com.itextpdf.io.source.RandomAccessFileOrArray, com.itextpdf.io.image.TiffImageHelper$TiffParameters):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:103:0x01a7 A[Catch: Exception -> 0x0514, TryCatch #1 {Exception -> 0x0514, blocks: (B:3:0x0008, B:5:0x000f, B:16:0x0030, B:17:0x0043, B:18:0x0044, B:27:0x005c, B:28:0x006f, B:29:0x0070, B:31:0x007b, B:44:0x009c, B:46:0x00a4, B:49:0x00af, B:50:0x00b6, B:51:0x00b7, B:53:0x00c5, B:55:0x00cc, B:57:0x00d4, B:64:0x00e4, B:65:0x00f7, B:66:0x00f8, B:68:0x010e, B:70:0x0119, B:72:0x0136, B:77:0x0141, B:79:0x0149, B:84:0x0155, B:86:0x0163, B:88:0x016b, B:90:0x0174, B:95:0x0187, B:122:0x01e3, B:125:0x01ec, B:131:0x0211, B:141:0x0241, B:143:0x0249, B:145:0x025c, B:146:0x0266, B:221:0x0414, B:225:0x0423, B:228:0x0431, B:230:0x0445, B:232:0x044c, B:234:0x0452, B:236:0x0467, B:239:0x048b, B:247:0x049a, B:248:0x04b6, B:242:0x0491, B:250:0x04d9, B:253:0x04e3, B:255:0x04ec, B:147:0x0294, B:148:0x029b, B:151:0x029f, B:153:0x02a3, B:155:0x02b9, B:157:0x02c4, B:159:0x02cb, B:161:0x02d0, B:163:0x02d8, B:165:0x02e1, B:166:0x02e3, B:167:0x02fa, B:169:0x0310, B:172:0x031b, B:173:0x032f, B:175:0x0333, B:177:0x0336, B:179:0x0350, B:182:0x0362, B:204:0x039f, B:209:0x03be, B:206:0x03a5, B:208:0x03b9, B:196:0x0386, B:194:0x037c, B:197:0x038d, B:215:0x03d7, B:219:0x03e2, B:220:0x03f6, B:133:0x0220, B:137:0x022d, B:103:0x01a7, B:105:0x01af, B:117:0x01cb, B:118:0x01de, B:110:0x01bb, B:111:0x01c2), top: B:262:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:107:0x01b7  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x01c3  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x01c6  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x01e3 A[Catch: Exception -> 0x0514, TryCatch #1 {Exception -> 0x0514, blocks: (B:3:0x0008, B:5:0x000f, B:16:0x0030, B:17:0x0043, B:18:0x0044, B:27:0x005c, B:28:0x006f, B:29:0x0070, B:31:0x007b, B:44:0x009c, B:46:0x00a4, B:49:0x00af, B:50:0x00b6, B:51:0x00b7, B:53:0x00c5, B:55:0x00cc, B:57:0x00d4, B:64:0x00e4, B:65:0x00f7, B:66:0x00f8, B:68:0x010e, B:70:0x0119, B:72:0x0136, B:77:0x0141, B:79:0x0149, B:84:0x0155, B:86:0x0163, B:88:0x016b, B:90:0x0174, B:95:0x0187, B:122:0x01e3, B:125:0x01ec, B:131:0x0211, B:141:0x0241, B:143:0x0249, B:145:0x025c, B:146:0x0266, B:221:0x0414, B:225:0x0423, B:228:0x0431, B:230:0x0445, B:232:0x044c, B:234:0x0452, B:236:0x0467, B:239:0x048b, B:247:0x049a, B:248:0x04b6, B:242:0x0491, B:250:0x04d9, B:253:0x04e3, B:255:0x04ec, B:147:0x0294, B:148:0x029b, B:151:0x029f, B:153:0x02a3, B:155:0x02b9, B:157:0x02c4, B:159:0x02cb, B:161:0x02d0, B:163:0x02d8, B:165:0x02e1, B:166:0x02e3, B:167:0x02fa, B:169:0x0310, B:172:0x031b, B:173:0x032f, B:175:0x0333, B:177:0x0336, B:179:0x0350, B:182:0x0362, B:204:0x039f, B:209:0x03be, B:206:0x03a5, B:208:0x03b9, B:196:0x0386, B:194:0x037c, B:197:0x038d, B:215:0x03d7, B:219:0x03e2, B:220:0x03f6, B:133:0x0220, B:137:0x022d, B:103:0x01a7, B:105:0x01af, B:117:0x01cb, B:118:0x01de, B:110:0x01bb, B:111:0x01c2), top: B:262:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:123:0x01e9  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x01ec A[Catch: Exception -> 0x0514, TryCatch #1 {Exception -> 0x0514, blocks: (B:3:0x0008, B:5:0x000f, B:16:0x0030, B:17:0x0043, B:18:0x0044, B:27:0x005c, B:28:0x006f, B:29:0x0070, B:31:0x007b, B:44:0x009c, B:46:0x00a4, B:49:0x00af, B:50:0x00b6, B:51:0x00b7, B:53:0x00c5, B:55:0x00cc, B:57:0x00d4, B:64:0x00e4, B:65:0x00f7, B:66:0x00f8, B:68:0x010e, B:70:0x0119, B:72:0x0136, B:77:0x0141, B:79:0x0149, B:84:0x0155, B:86:0x0163, B:88:0x016b, B:90:0x0174, B:95:0x0187, B:122:0x01e3, B:125:0x01ec, B:131:0x0211, B:141:0x0241, B:143:0x0249, B:145:0x025c, B:146:0x0266, B:221:0x0414, B:225:0x0423, B:228:0x0431, B:230:0x0445, B:232:0x044c, B:234:0x0452, B:236:0x0467, B:239:0x048b, B:247:0x049a, B:248:0x04b6, B:242:0x0491, B:250:0x04d9, B:253:0x04e3, B:255:0x04ec, B:147:0x0294, B:148:0x029b, B:151:0x029f, B:153:0x02a3, B:155:0x02b9, B:157:0x02c4, B:159:0x02cb, B:161:0x02d0, B:163:0x02d8, B:165:0x02e1, B:166:0x02e3, B:167:0x02fa, B:169:0x0310, B:172:0x031b, B:173:0x032f, B:175:0x0333, B:177:0x0336, B:179:0x0350, B:182:0x0362, B:204:0x039f, B:209:0x03be, B:206:0x03a5, B:208:0x03b9, B:196:0x0386, B:194:0x037c, B:197:0x038d, B:215:0x03d7, B:219:0x03e2, B:220:0x03f6, B:133:0x0220, B:137:0x022d, B:103:0x01a7, B:105:0x01af, B:117:0x01cb, B:118:0x01de, B:110:0x01bb, B:111:0x01c2), top: B:262:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:126:0x01fe  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0208 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:132:0x021c  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0241 A[Catch: Exception -> 0x0514, TryCatch #1 {Exception -> 0x0514, blocks: (B:3:0x0008, B:5:0x000f, B:16:0x0030, B:17:0x0043, B:18:0x0044, B:27:0x005c, B:28:0x006f, B:29:0x0070, B:31:0x007b, B:44:0x009c, B:46:0x00a4, B:49:0x00af, B:50:0x00b6, B:51:0x00b7, B:53:0x00c5, B:55:0x00cc, B:57:0x00d4, B:64:0x00e4, B:65:0x00f7, B:66:0x00f8, B:68:0x010e, B:70:0x0119, B:72:0x0136, B:77:0x0141, B:79:0x0149, B:84:0x0155, B:86:0x0163, B:88:0x016b, B:90:0x0174, B:95:0x0187, B:122:0x01e3, B:125:0x01ec, B:131:0x0211, B:141:0x0241, B:143:0x0249, B:145:0x025c, B:146:0x0266, B:221:0x0414, B:225:0x0423, B:228:0x0431, B:230:0x0445, B:232:0x044c, B:234:0x0452, B:236:0x0467, B:239:0x048b, B:247:0x049a, B:248:0x04b6, B:242:0x0491, B:250:0x04d9, B:253:0x04e3, B:255:0x04ec, B:147:0x0294, B:148:0x029b, B:151:0x029f, B:153:0x02a3, B:155:0x02b9, B:157:0x02c4, B:159:0x02cb, B:161:0x02d0, B:163:0x02d8, B:165:0x02e1, B:166:0x02e3, B:167:0x02fa, B:169:0x0310, B:172:0x031b, B:173:0x032f, B:175:0x0333, B:177:0x0336, B:179:0x0350, B:182:0x0362, B:204:0x039f, B:209:0x03be, B:206:0x03a5, B:208:0x03b9, B:196:0x0386, B:194:0x037c, B:197:0x038d, B:215:0x03d7, B:219:0x03e2, B:220:0x03f6, B:133:0x0220, B:137:0x022d, B:103:0x01a7, B:105:0x01af, B:117:0x01cb, B:118:0x01de, B:110:0x01bb, B:111:0x01c2), top: B:262:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:149:0x029c  */
    /* JADX WARN: Removed duplicated region for block: B:223:0x0420  */
    /* JADX WARN: Removed duplicated region for block: B:227:0x042e  */
    /* JADX WARN: Removed duplicated region for block: B:234:0x0452 A[Catch: Exception -> 0x0514, TryCatch #1 {Exception -> 0x0514, blocks: (B:3:0x0008, B:5:0x000f, B:16:0x0030, B:17:0x0043, B:18:0x0044, B:27:0x005c, B:28:0x006f, B:29:0x0070, B:31:0x007b, B:44:0x009c, B:46:0x00a4, B:49:0x00af, B:50:0x00b6, B:51:0x00b7, B:53:0x00c5, B:55:0x00cc, B:57:0x00d4, B:64:0x00e4, B:65:0x00f7, B:66:0x00f8, B:68:0x010e, B:70:0x0119, B:72:0x0136, B:77:0x0141, B:79:0x0149, B:84:0x0155, B:86:0x0163, B:88:0x016b, B:90:0x0174, B:95:0x0187, B:122:0x01e3, B:125:0x01ec, B:131:0x0211, B:141:0x0241, B:143:0x0249, B:145:0x025c, B:146:0x0266, B:221:0x0414, B:225:0x0423, B:228:0x0431, B:230:0x0445, B:232:0x044c, B:234:0x0452, B:236:0x0467, B:239:0x048b, B:247:0x049a, B:248:0x04b6, B:242:0x0491, B:250:0x04d9, B:253:0x04e3, B:255:0x04ec, B:147:0x0294, B:148:0x029b, B:151:0x029f, B:153:0x02a3, B:155:0x02b9, B:157:0x02c4, B:159:0x02cb, B:161:0x02d0, B:163:0x02d8, B:165:0x02e1, B:166:0x02e3, B:167:0x02fa, B:169:0x0310, B:172:0x031b, B:173:0x032f, B:175:0x0333, B:177:0x0336, B:179:0x0350, B:182:0x0362, B:204:0x039f, B:209:0x03be, B:206:0x03a5, B:208:0x03b9, B:196:0x0386, B:194:0x037c, B:197:0x038d, B:215:0x03d7, B:219:0x03e2, B:220:0x03f6, B:133:0x0220, B:137:0x022d, B:103:0x01a7, B:105:0x01af, B:117:0x01cb, B:118:0x01de, B:110:0x01bb, B:111:0x01c2), top: B:262:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:250:0x04d9 A[Catch: Exception -> 0x0514, TryCatch #1 {Exception -> 0x0514, blocks: (B:3:0x0008, B:5:0x000f, B:16:0x0030, B:17:0x0043, B:18:0x0044, B:27:0x005c, B:28:0x006f, B:29:0x0070, B:31:0x007b, B:44:0x009c, B:46:0x00a4, B:49:0x00af, B:50:0x00b6, B:51:0x00b7, B:53:0x00c5, B:55:0x00cc, B:57:0x00d4, B:64:0x00e4, B:65:0x00f7, B:66:0x00f8, B:68:0x010e, B:70:0x0119, B:72:0x0136, B:77:0x0141, B:79:0x0149, B:84:0x0155, B:86:0x0163, B:88:0x016b, B:90:0x0174, B:95:0x0187, B:122:0x01e3, B:125:0x01ec, B:131:0x0211, B:141:0x0241, B:143:0x0249, B:145:0x025c, B:146:0x0266, B:221:0x0414, B:225:0x0423, B:228:0x0431, B:230:0x0445, B:232:0x044c, B:234:0x0452, B:236:0x0467, B:239:0x048b, B:247:0x049a, B:248:0x04b6, B:242:0x0491, B:250:0x04d9, B:253:0x04e3, B:255:0x04ec, B:147:0x0294, B:148:0x029b, B:151:0x029f, B:153:0x02a3, B:155:0x02b9, B:157:0x02c4, B:159:0x02cb, B:161:0x02d0, B:163:0x02d8, B:165:0x02e1, B:166:0x02e3, B:167:0x02fa, B:169:0x0310, B:172:0x031b, B:173:0x032f, B:175:0x0333, B:177:0x0336, B:179:0x0350, B:182:0x0362, B:204:0x039f, B:209:0x03be, B:206:0x03a5, B:208:0x03b9, B:196:0x0386, B:194:0x037c, B:197:0x038d, B:215:0x03d7, B:219:0x03e2, B:220:0x03f6, B:133:0x0220, B:137:0x022d, B:103:0x01a7, B:105:0x01af, B:117:0x01cb, B:118:0x01de, B:110:0x01bb, B:111:0x01c2), top: B:262:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:253:0x04e3 A[Catch: Exception -> 0x0514, TryCatch #1 {Exception -> 0x0514, blocks: (B:3:0x0008, B:5:0x000f, B:16:0x0030, B:17:0x0043, B:18:0x0044, B:27:0x005c, B:28:0x006f, B:29:0x0070, B:31:0x007b, B:44:0x009c, B:46:0x00a4, B:49:0x00af, B:50:0x00b6, B:51:0x00b7, B:53:0x00c5, B:55:0x00cc, B:57:0x00d4, B:64:0x00e4, B:65:0x00f7, B:66:0x00f8, B:68:0x010e, B:70:0x0119, B:72:0x0136, B:77:0x0141, B:79:0x0149, B:84:0x0155, B:86:0x0163, B:88:0x016b, B:90:0x0174, B:95:0x0187, B:122:0x01e3, B:125:0x01ec, B:131:0x0211, B:141:0x0241, B:143:0x0249, B:145:0x025c, B:146:0x0266, B:221:0x0414, B:225:0x0423, B:228:0x0431, B:230:0x0445, B:232:0x044c, B:234:0x0452, B:236:0x0467, B:239:0x048b, B:247:0x049a, B:248:0x04b6, B:242:0x0491, B:250:0x04d9, B:253:0x04e3, B:255:0x04ec, B:147:0x0294, B:148:0x029b, B:151:0x029f, B:153:0x02a3, B:155:0x02b9, B:157:0x02c4, B:159:0x02cb, B:161:0x02d0, B:163:0x02d8, B:165:0x02e1, B:166:0x02e3, B:167:0x02fa, B:169:0x0310, B:172:0x031b, B:173:0x032f, B:175:0x0333, B:177:0x0336, B:179:0x0350, B:182:0x0362, B:204:0x039f, B:209:0x03be, B:206:0x03a5, B:208:0x03b9, B:196:0x0386, B:194:0x037c, B:197:0x038d, B:215:0x03d7, B:219:0x03e2, B:220:0x03f6, B:133:0x0220, B:137:0x022d, B:103:0x01a7, B:105:0x01af, B:117:0x01cb, B:118:0x01de, B:110:0x01bb, B:111:0x01c2), top: B:262:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:255:0x04ec A[Catch: Exception -> 0x0514, TRY_LEAVE, TryCatch #1 {Exception -> 0x0514, blocks: (B:3:0x0008, B:5:0x000f, B:16:0x0030, B:17:0x0043, B:18:0x0044, B:27:0x005c, B:28:0x006f, B:29:0x0070, B:31:0x007b, B:44:0x009c, B:46:0x00a4, B:49:0x00af, B:50:0x00b6, B:51:0x00b7, B:53:0x00c5, B:55:0x00cc, B:57:0x00d4, B:64:0x00e4, B:65:0x00f7, B:66:0x00f8, B:68:0x010e, B:70:0x0119, B:72:0x0136, B:77:0x0141, B:79:0x0149, B:84:0x0155, B:86:0x0163, B:88:0x016b, B:90:0x0174, B:95:0x0187, B:122:0x01e3, B:125:0x01ec, B:131:0x0211, B:141:0x0241, B:143:0x0249, B:145:0x025c, B:146:0x0266, B:221:0x0414, B:225:0x0423, B:228:0x0431, B:230:0x0445, B:232:0x044c, B:234:0x0452, B:236:0x0467, B:239:0x048b, B:247:0x049a, B:248:0x04b6, B:242:0x0491, B:250:0x04d9, B:253:0x04e3, B:255:0x04ec, B:147:0x0294, B:148:0x029b, B:151:0x029f, B:153:0x02a3, B:155:0x02b9, B:157:0x02c4, B:159:0x02cb, B:161:0x02d0, B:163:0x02d8, B:165:0x02e1, B:166:0x02e3, B:167:0x02fa, B:169:0x0310, B:172:0x031b, B:173:0x032f, B:175:0x0333, B:177:0x0336, B:179:0x0350, B:182:0x0362, B:204:0x039f, B:209:0x03be, B:206:0x03a5, B:208:0x03b9, B:196:0x0386, B:194:0x037c, B:197:0x038d, B:215:0x03d7, B:219:0x03e2, B:220:0x03f6, B:133:0x0220, B:137:0x022d, B:103:0x01a7, B:105:0x01af, B:117:0x01cb, B:118:0x01de, B:110:0x01bb, B:111:0x01c2), top: B:262:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:270:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x019e  */
    /* JADX WARN: Type inference failed for: r15v3, types: [boolean] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void processTiffImageColor(com.itextpdf.io.codec.TIFFDirectory r42, com.itextpdf.io.source.RandomAccessFileOrArray r43, com.itextpdf.io.image.TiffImageHelper.TiffParameters r44) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 1308
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.io.image.TiffImageHelper.processTiffImageColor(com.itextpdf.io.codec.TIFFDirectory, com.itextpdf.io.source.RandomAccessFileOrArray, com.itextpdf.io.image.TiffImageHelper$TiffParameters):void");
    }

    private static int getDpi(TIFFField tIFFField, int i) {
        double d;
        if (tIFFField == null) {
            return 0;
        }
        long[] asRational = tIFFField.getAsRational(0);
        float f = asRational[0] / asRational[1];
        if (i == 1 || i == 2) {
            d = f;
        } else {
            if (i != 3) {
                return 0;
            }
            d = ((double) f) * 2.54d;
        }
        return (int) (d + 0.5d);
    }

    private static void processExtraSamples(DeflaterOutputStream deflaterOutputStream, DeflaterOutputStream deflaterOutputStream2, byte[] bArr, int i, int i2, int i3, int i4) throws IOException {
        if (i2 == 8) {
            int i5 = i3 * i4;
            byte[] bArr2 = new byte[i5];
            int i6 = i5 * i;
            int i7 = 0;
            int i8 = 0;
            int i9 = 0;
            while (i7 < i6) {
                int i10 = 0;
                while (i10 < i - 1) {
                    bArr[i8] = bArr[i7 + i10];
                    i10++;
                    i8++;
                }
                i7 += i;
                bArr2[i9] = bArr[i7 - 1];
                i9++;
            }
            deflaterOutputStream.write(bArr, 0, i8);
            deflaterOutputStream2.write(bArr2, 0, i9);
            return;
        }
        throw new com.itextpdf.io.exceptions.IOException(com.itextpdf.io.exceptions.IOException.ExtraSamplesAreNotSupported);
    }

    private static long[] getArrayLongShort(TIFFDirectory tIFFDirectory, int i) {
        TIFFField field = tIFFDirectory.getField(i);
        if (field == null) {
            return null;
        }
        if (field.getType() == 4) {
            return field.getAsLongs();
        }
        char[] asChars = field.getAsChars();
        long[] jArr = new long[asChars.length];
        for (int i2 = 0; i2 < asChars.length; i2++) {
            jArr[i2] = asChars[i2];
        }
        return jArr;
    }

    private static void decodePackbits(byte[] bArr, byte[] bArr2) {
        int i = 0;
        int i2 = 0;
        while (i < bArr2.length) {
            try {
                int i3 = i2 + 1;
                byte b = bArr[i2];
                if (b >= 0 && b <= 127) {
                    i2 = i3;
                    int i4 = 0;
                    while (i4 < b + 1) {
                        bArr2[i] = bArr[i2];
                        i4++;
                        i++;
                        i2++;
                    }
                } else if ((b & 128) == 0 || b == -128) {
                    i2 += 2;
                } else {
                    i2 += 2;
                    byte b2 = bArr[i3];
                    int i5 = 0;
                    while (i5 < ((~b) & 255) + 2) {
                        int i6 = i + 1;
                        bArr2[i] = b2;
                        i5++;
                        i = i6;
                    }
                }
            } catch (Exception unused) {
                return;
            }
        }
    }

    private static void applyPredictor(byte[] bArr, int i, int i2, int i3, int i4) {
        if (i != 2) {
            return;
        }
        for (int i5 = 0; i5 < i3; i5++) {
            int i6 = ((i5 * i2) + 1) * i4;
            for (int i7 = i4; i7 < i2 * i4; i7++) {
                bArr[i6] = (byte) (bArr[i6] + bArr[i6 - i4]);
                i6++;
            }
        }
    }
}
