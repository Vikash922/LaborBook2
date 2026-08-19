package com.itextpdf.kernel.pdf;

import com.itextpdf.kernel.xmp.PdfConst;
import com.itextpdf.kernel.xmp.XMPConst;
import com.itextpdf.kernel.xmp.XMPException;
import com.itextpdf.kernel.xmp.XMPMeta;
import com.itextpdf.kernel.xmp.XMPMetaFactory;
import com.itextpdf.kernel.xmp.options.PropertyOptions;
import com.itextpdf.kernel.xmp.properties.XMPProperty;
import com.itextpdf.p017io.font.PdfEncodings;

/* JADX INFO: loaded from: classes6.dex */
class XmpMetaInfoConverter {
    private XmpMetaInfoConverter() {
    }

    static void appendMetadataToInfo(byte[] bArr, PdfDocumentInfo pdfDocumentInfo) {
        if (bArr != null) {
            try {
                XMPMeta fromBuffer = XMPMetaFactory.parseFromBuffer(bArr);
                XMPProperty localizedText = fromBuffer.getLocalizedText(XMPConst.NS_DC, "title", XMPConst.X_DEFAULT, XMPConst.X_DEFAULT);
                if (localizedText != null) {
                    pdfDocumentInfo.setTitle(localizedText.getValue());
                }
                String strFetchArrayIntoString = fetchArrayIntoString(fromBuffer, XMPConst.NS_DC, PdfConst.Creator);
                if (strFetchArrayIntoString != null) {
                    pdfDocumentInfo.setAuthor(strFetchArrayIntoString);
                }
                XMPProperty property = fromBuffer.getProperty(XMPConst.NS_PDF, PdfConst.Keywords);
                if (property != null) {
                    pdfDocumentInfo.setKeywords(property.getValue());
                } else {
                    String strFetchArrayIntoString2 = fetchArrayIntoString(fromBuffer, XMPConst.NS_DC, "subject");
                    if (strFetchArrayIntoString2 != null) {
                        pdfDocumentInfo.setKeywords(strFetchArrayIntoString2);
                    }
                }
                XMPProperty localizedText2 = fromBuffer.getLocalizedText(XMPConst.NS_DC, "description", XMPConst.X_DEFAULT, XMPConst.X_DEFAULT);
                if (localizedText2 != null) {
                    pdfDocumentInfo.setSubject(localizedText2.getValue());
                }
                XMPProperty property2 = fromBuffer.getProperty(XMPConst.NS_XMP, PdfConst.CreatorTool);
                if (property2 != null) {
                    pdfDocumentInfo.setCreator(property2.getValue());
                }
                XMPProperty property3 = fromBuffer.getProperty(XMPConst.NS_PDF, PdfConst.Producer);
                if (property3 != null) {
                    pdfDocumentInfo.put(PdfName.Producer, new PdfString(property3.getValue(), PdfEncodings.UNICODE_BIG));
                }
                XMPProperty property4 = fromBuffer.getProperty(XMPConst.NS_PDF, PdfConst.Trapped);
                if (property4 != null) {
                    pdfDocumentInfo.setTrapped(new PdfName(property4.getValue()));
                }
            } catch (XMPException unused) {
            }
        }
    }

    static void appendDocumentInfoToMetadata(PdfDocumentInfo pdfDocumentInfo, XMPMeta xMPMeta) throws XMPException {
        String unicodeString;
        PdfDictionary pdfObject = pdfDocumentInfo.getPdfObject();
        if (pdfObject != null) {
            for (PdfName pdfName : pdfObject.keySet()) {
                PdfObject pdfObject2 = pdfObject.get(pdfName);
                if (pdfObject2 != null) {
                    if (pdfObject2.isString()) {
                        unicodeString = ((PdfString) pdfObject2).toUnicodeString();
                    } else if (pdfObject2.isName()) {
                        unicodeString = ((PdfName) pdfObject2).getValue();
                    }
                    String str = unicodeString;
                    if (PdfName.Title.equals(pdfName)) {
                        xMPMeta.setLocalizedText(XMPConst.NS_DC, "title", XMPConst.X_DEFAULT, XMPConst.X_DEFAULT, str);
                    } else {
                        int i = 0;
                        if (PdfName.Author.equals(pdfName)) {
                            String[] strArrSplit = str.split(",|;");
                            int length = strArrSplit.length;
                            while (i < length) {
                                String str2 = strArrSplit[i];
                                if (str2.trim().length() > 0) {
                                    appendArrayItemIfDoesNotExist(xMPMeta, XMPConst.NS_DC, PdfConst.Creator, str2.trim(), 1024);
                                }
                                i++;
                            }
                        } else if (PdfName.Subject.equals(pdfName)) {
                            xMPMeta.setLocalizedText(XMPConst.NS_DC, "description", XMPConst.X_DEFAULT, XMPConst.X_DEFAULT, str);
                        } else if (PdfName.Keywords.equals(pdfName)) {
                            String[] strArrSplit2 = str.split(",|;");
                            int length2 = strArrSplit2.length;
                            while (i < length2) {
                                String str3 = strArrSplit2[i];
                                if (str3.trim().length() > 0) {
                                    appendArrayItemIfDoesNotExist(xMPMeta, XMPConst.NS_DC, "subject", str3.trim(), 512);
                                }
                                i++;
                            }
                            xMPMeta.setProperty(XMPConst.NS_PDF, PdfConst.Keywords, str);
                        } else if (PdfName.Creator.equals(pdfName)) {
                            xMPMeta.setProperty(XMPConst.NS_XMP, PdfConst.CreatorTool, str);
                        } else if (PdfName.Producer.equals(pdfName)) {
                            xMPMeta.setProperty(XMPConst.NS_PDF, PdfConst.Producer, str);
                        } else if (PdfName.CreationDate.equals(pdfName)) {
                            xMPMeta.setProperty(XMPConst.NS_XMP, PdfConst.CreateDate, PdfDate.getW3CDate(str));
                        } else if (PdfName.ModDate.equals(pdfName)) {
                            xMPMeta.setProperty(XMPConst.NS_XMP, PdfConst.ModifyDate, PdfDate.getW3CDate(str));
                        } else if (PdfName.Trapped.equals(pdfName)) {
                            xMPMeta.setProperty(XMPConst.NS_PDF, PdfConst.Trapped, str);
                        }
                    }
                }
            }
        }
    }

    private static void appendArrayItemIfDoesNotExist(XMPMeta xMPMeta, String str, String str2, String str3, int i) throws XMPException {
        int iCountArrayItems = xMPMeta.countArrayItems(str, str2);
        int i2 = 0;
        while (i2 < iCountArrayItems) {
            i2++;
            if (str3.equals(xMPMeta.getArrayItem(str, str2, i2).getValue())) {
                return;
            }
        }
        xMPMeta.appendArrayItem(str, str2, new PropertyOptions(i), str3, null);
    }

    private static String fetchArrayIntoString(XMPMeta xMPMeta, String str, String str2) throws XMPException {
        int iCountArrayItems = xMPMeta.countArrayItems(str, str2);
        int i = 0;
        StringBuilder sb = null;
        while (i < iCountArrayItems) {
            i++;
            XMPProperty arrayItem = xMPMeta.getArrayItem(str, str2, i);
            if (sb == null) {
                sb = new StringBuilder();
            } else if (sb.length() > 0) {
                sb.append("; ");
            }
            sb.append(arrayItem.getValue());
        }
        if (sb != null) {
            return sb.toString();
        }
        return null;
    }
}
