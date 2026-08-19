package com.itextpdf.p017io.font.cmap;

import com.itextpdf.p017io.logs.IoLogMessageConstant;
import com.itextpdf.p017io.source.PdfTokenizer;
import java.io.IOException;
import java.util.ArrayList;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class CMapParser {
    private static final String CMapName = "CMapName";
    private static final int MAX_LEVEL = 10;
    private static final String Ordering = "Ordering";
    private static final String Registry = "Registry";
    private static final String Supplement = "Supplement";
    private static final String def = "def";
    private static final String endbfchar = "endbfchar";
    private static final String endbfrange = "endbfrange";
    private static final String endcidchar = "endcidchar";
    private static final String endcidrange = "endcidrange";
    private static final String endcodespacerange = "endcodespacerange";
    private static final String usecmap = "usecmap";

    public static void parseCid(String str, AbstractCMap abstractCMap, ICMapLocation iCMapLocation) throws IOException {
        parseCid(str, abstractCMap, iCMapLocation, 0);
    }

    private static void parseCid(String str, AbstractCMap abstractCMap, ICMapLocation iCMapLocation, int i) throws IOException {
        if (i >= 10) {
            return;
        }
        PdfTokenizer location = iCMapLocation.getLocation(str);
        try {
            try {
                ArrayList arrayList = new ArrayList();
                CMapContentParser cMapContentParser = new CMapContentParser(location);
                int i2 = 50;
                while (true) {
                    try {
                        cMapContentParser.parse(arrayList);
                    } catch (Exception unused) {
                        i2--;
                        if (i2 < 0) {
                        }
                    }
                    if (arrayList.size() == 0) {
                        break;
                    }
                    String string = ((CMapObject) arrayList.get(arrayList.size() - 1)).toString();
                    int i3 = 0;
                    if (i == 0 && arrayList.size() == 3 && string.equals(def)) {
                        CMapObject cMapObject = (CMapObject) arrayList.get(0);
                        if (Registry.equals(cMapObject.toString())) {
                            abstractCMap.setRegistry(((CMapObject) arrayList.get(1)).toString());
                        } else if (Ordering.equals(cMapObject.toString())) {
                            abstractCMap.setOrdering(((CMapObject) arrayList.get(1)).toString());
                        } else if (CMapName.equals(cMapObject.toString())) {
                            abstractCMap.setName(((CMapObject) arrayList.get(1)).toString());
                        } else if (Supplement.equals(cMapObject.toString())) {
                            try {
                                abstractCMap.setSupplement(((Integer) ((CMapObject) arrayList.get(1)).getValue()).intValue());
                            } catch (Exception unused2) {
                            }
                        }
                    } else if ((string.equals(endcidchar) || string.equals(endbfchar)) && arrayList.size() >= 3) {
                        int size = arrayList.size() - 2;
                        while (i3 < size) {
                            if (((CMapObject) arrayList.get(i3)).isString()) {
                                abstractCMap.addChar(((CMapObject) arrayList.get(i3)).toString(), (CMapObject) arrayList.get(i3 + 1));
                            }
                            i3 += 2;
                        }
                    } else if ((string.equals(endcidrange) || string.equals(endbfrange)) && arrayList.size() >= 4) {
                        int size2 = arrayList.size() - 3;
                        while (i3 < size2) {
                            if (((CMapObject) arrayList.get(i3)).isString()) {
                                int i4 = i3 + 1;
                                if (((CMapObject) arrayList.get(i4)).isString()) {
                                    abstractCMap.addRange(((CMapObject) arrayList.get(i3)).toString(), ((CMapObject) arrayList.get(i4)).toString(), (CMapObject) arrayList.get(i3 + 2));
                                }
                            }
                            i3 += 3;
                        }
                    } else if (string.equals(usecmap) && arrayList.size() == 2 && ((CMapObject) arrayList.get(0)).isName()) {
                        parseCid(((CMapObject) arrayList.get(0)).toString(), abstractCMap, iCMapLocation, i + 1);
                    } else if (string.equals(endcodespacerange)) {
                        while (i3 < arrayList.size() + 1) {
                            if (((CMapObject) arrayList.get(i3)).isHexString()) {
                                int i5 = i3 + 1;
                                if (((CMapObject) arrayList.get(i5)).isHexString()) {
                                    abstractCMap.addCodeSpaceRange(((CMapObject) arrayList.get(i3)).toHexByteArray(), ((CMapObject) arrayList.get(i5)).toHexByteArray());
                                }
                            }
                            i3 += 2;
                        }
                    }
                }
            } catch (Exception unused3) {
                LoggerFactory.getLogger((Class<?>) CMapParser.class).error(IoLogMessageConstant.UNKNOWN_ERROR_WHILE_PROCESSING_CMAP);
            }
        } finally {
            location.close();
        }
    }
}
