package com.itextpdf.io.font;

import com.itextpdf.commons.utils.FileUtil;
import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.io.font.constants.StandardFontFamilies;
import com.itextpdf.io.font.constants.StandardFonts;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
class FontRegisterProvider {
    private static final Logger LOGGER = LoggerFactory.getLogger((Class<?>) FontRegisterProvider.class);
    private final Map<String, String> fontNames = new HashMap();
    private final Map<String, List<String>> fontFamilies = new HashMap();

    FontRegisterProvider() {
        registerStandardFonts();
        registerStandardFontFamilies();
    }

    FontProgram getFont(String str, int i) throws IOException {
        return getFont(str, i, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:36:0x005c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:37:? A[LOOP:0: B:16:0x0030->B:37:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v6 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    com.itextpdf.io.font.FontProgram getFont(java.lang.String r7, int r8, boolean r9) throws java.io.IOException {
        /*
            r6 = this;
            if (r7 != 0) goto L4
            r7 = 0
            return r7
        L4:
            java.lang.String r0 = r7.toLowerCase()
            java.lang.String r1 = "Times-Roman"
            boolean r1 = r0.equalsIgnoreCase(r1)
            if (r1 != 0) goto L17
            java.util.Map<java.lang.String, java.util.List<java.lang.String>> r1 = r6.fontFamilies
            java.lang.Object r0 = r1.get(r0)
            goto L23
        L17:
            java.util.Map<java.lang.String, java.util.List<java.lang.String>> r0 = r6.fontFamilies
            java.lang.String r1 = "Times"
            java.lang.String r1 = r1.toLowerCase()
            java.lang.Object r0 = r0.get(r1)
        L23:
            java.util.List r0 = (java.util.List) r0
            if (r0 == 0) goto L62
            monitor-enter(r0)
            r1 = -1
            if (r8 != r1) goto L2c
            r8 = 0
        L2c:
            java.util.Iterator r1 = r0.iterator()     // Catch: java.lang.Throwable -> L5f
        L30:
            boolean r2 = r1.hasNext()     // Catch: java.lang.Throwable -> L5f
            if (r2 == 0) goto L5d
            java.lang.Object r2 = r1.next()     // Catch: java.lang.Throwable -> L5f
            java.lang.String r2 = (java.lang.String) r2     // Catch: java.lang.Throwable -> L5f
            java.lang.String r3 = r2.toLowerCase()     // Catch: java.lang.Throwable -> L5f
            java.lang.String r4 = "bold"
            boolean r4 = r3.contains(r4)     // Catch: java.lang.Throwable -> L5f
            java.lang.String r5 = "italic"
            boolean r5 = r3.contains(r5)     // Catch: java.lang.Throwable -> L5f
            if (r5 != 0) goto L56
            java.lang.String r5 = "oblique"
            boolean r3 = r3.contains(r5)     // Catch: java.lang.Throwable -> L5f
            if (r3 == 0) goto L58
        L56:
            r4 = r4 | 2
        L58:
            r3 = r8 & 3
            if (r3 != r4) goto L30
            r7 = r2
        L5d:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L5f
            goto L62
        L5f:
            r7 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L5f
            throw r7
        L62:
            com.itextpdf.io.font.FontProgram r7 = r6.getFontProgram(r7, r9)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.io.font.FontRegisterProvider.getFont(java.lang.String, int, boolean):com.itextpdf.io.font.FontProgram");
    }

    protected void registerStandardFonts() {
        this.fontNames.put("Courier".toLowerCase(), "Courier");
        this.fontNames.put(StandardFonts.COURIER_BOLD.toLowerCase(), StandardFonts.COURIER_BOLD);
        this.fontNames.put(StandardFonts.COURIER_OBLIQUE.toLowerCase(), StandardFonts.COURIER_OBLIQUE);
        this.fontNames.put(StandardFonts.COURIER_BOLDOBLIQUE.toLowerCase(), StandardFonts.COURIER_BOLDOBLIQUE);
        this.fontNames.put("Helvetica".toLowerCase(), "Helvetica");
        this.fontNames.put(StandardFonts.HELVETICA_BOLD.toLowerCase(), StandardFonts.HELVETICA_BOLD);
        this.fontNames.put(StandardFonts.HELVETICA_OBLIQUE.toLowerCase(), StandardFonts.HELVETICA_OBLIQUE);
        this.fontNames.put(StandardFonts.HELVETICA_BOLDOBLIQUE.toLowerCase(), StandardFonts.HELVETICA_BOLDOBLIQUE);
        this.fontNames.put("Symbol".toLowerCase(), "Symbol");
        this.fontNames.put(StandardFonts.TIMES_ROMAN.toLowerCase(), StandardFonts.TIMES_ROMAN);
        this.fontNames.put(StandardFonts.TIMES_BOLD.toLowerCase(), StandardFonts.TIMES_BOLD);
        this.fontNames.put(StandardFonts.TIMES_ITALIC.toLowerCase(), StandardFonts.TIMES_ITALIC);
        this.fontNames.put(StandardFonts.TIMES_BOLDITALIC.toLowerCase(), StandardFonts.TIMES_BOLDITALIC);
        this.fontNames.put("ZapfDingbats".toLowerCase(), "ZapfDingbats");
    }

    protected void registerStandardFontFamilies() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("Courier");
        arrayList.add(StandardFonts.COURIER_BOLD);
        arrayList.add(StandardFonts.COURIER_OBLIQUE);
        arrayList.add(StandardFonts.COURIER_BOLDOBLIQUE);
        this.fontFamilies.put("Courier".toLowerCase(), arrayList);
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add("Helvetica");
        arrayList2.add(StandardFonts.HELVETICA_BOLD);
        arrayList2.add(StandardFonts.HELVETICA_OBLIQUE);
        arrayList2.add(StandardFonts.HELVETICA_BOLDOBLIQUE);
        this.fontFamilies.put("Helvetica".toLowerCase(), arrayList2);
        ArrayList arrayList3 = new ArrayList();
        arrayList3.add("Symbol");
        this.fontFamilies.put("Symbol".toLowerCase(), arrayList3);
        ArrayList arrayList4 = new ArrayList();
        arrayList4.add(StandardFonts.TIMES_ROMAN);
        arrayList4.add(StandardFonts.TIMES_BOLD);
        arrayList4.add(StandardFonts.TIMES_ITALIC);
        arrayList4.add(StandardFonts.TIMES_BOLDITALIC);
        this.fontFamilies.put(StandardFontFamilies.TIMES.toLowerCase(), arrayList4);
        ArrayList arrayList5 = new ArrayList();
        arrayList5.add("ZapfDingbats");
        this.fontFamilies.put("ZapfDingbats".toLowerCase(), arrayList5);
    }

    protected FontProgram getFontProgram(String str, boolean z) throws IOException {
        String str2 = this.fontNames.get(str.toLowerCase());
        if (str2 != null) {
            return FontProgramFactory.createFont(str2, z);
        }
        return null;
    }

    void registerFontFamily(String str, String str2, String str3) {
        List<String> arrayList;
        if (str3 != null) {
            this.fontNames.put(str2, str3);
        }
        synchronized (this.fontFamilies) {
            arrayList = this.fontFamilies.get(str);
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                this.fontFamilies.put(str, arrayList);
            }
        }
        synchronized (arrayList) {
            if (!arrayList.contains(str2)) {
                int length = str2.length();
                int i = 0;
                while (true) {
                    if (i < arrayList.size()) {
                        if (arrayList.get(i).length() >= length) {
                            arrayList.add(i, str2);
                            break;
                        }
                        i++;
                    } else {
                        arrayList.add(str2);
                        String lowerCase = str2.toLowerCase();
                        if (lowerCase.endsWith("regular")) {
                            arrayList.add(0, str2.substring(0, lowerCase.substring(0, lowerCase.length() - 7).trim().length()));
                        }
                    }
                }
            }
        }
    }

    void registerFont(String str) {
        registerFont(str, null);
    }

    void registerFont(String str, String str2) {
        try {
            if (str.toLowerCase().endsWith(".ttf") || str.toLowerCase().endsWith(".otf") || str.toLowerCase().indexOf(".ttc,") > 0) {
                FontProgramDescriptor fontProgramDescriptorFetchDescriptor = FontProgramDescriptorFactory.fetchDescriptor(str);
                this.fontNames.put(fontProgramDescriptorFetchDescriptor.getFontNameLowerCase(), str);
                if (str2 != null) {
                    String lowerCase = str2.toLowerCase();
                    this.fontNames.put(lowerCase, str);
                    if (lowerCase.endsWith("regular")) {
                        saveCopyOfRegularFont(lowerCase, str);
                    }
                }
                for (String str3 : fontProgramDescriptorFetchDescriptor.getFullNameAllLangs()) {
                    this.fontNames.put(str3, str);
                    if (str3.endsWith("regular")) {
                        saveCopyOfRegularFont(str3, str);
                    }
                }
                if (fontProgramDescriptorFetchDescriptor.getFamilyNameEnglishOpenType() != null) {
                    Iterator<String> it = fontProgramDescriptorFetchDescriptor.getFullNamesEnglishOpenType().iterator();
                    while (it.hasNext()) {
                        registerFontFamily(fontProgramDescriptorFetchDescriptor.getFamilyNameEnglishOpenType(), it.next(), null);
                    }
                }
            } else if (str.toLowerCase().endsWith(".ttc")) {
                TrueTypeCollection trueTypeCollection = new TrueTypeCollection(str);
                for (int i = 0; i < trueTypeCollection.getTTCSize(); i++) {
                    String str4 = str + "," + i;
                    if (str2 != null) {
                        registerFont(str4, str2 + "," + i);
                    } else {
                        registerFont(str4);
                    }
                }
            } else if (str.toLowerCase().endsWith(".afm") || str.toLowerCase().endsWith(".pfm")) {
                FontProgramDescriptor fontProgramDescriptorFetchDescriptor2 = FontProgramDescriptorFactory.fetchDescriptor(str);
                registerFontFamily(fontProgramDescriptorFetchDescriptor2.getFamilyNameLowerCase(), fontProgramDescriptorFetchDescriptor2.getFullNameLowerCase(), null);
                this.fontNames.put(fontProgramDescriptorFetchDescriptor2.getFontNameLowerCase(), str);
                this.fontNames.put(fontProgramDescriptorFetchDescriptor2.getFullNameLowerCase(), str);
            }
            LOGGER.trace(MessageFormatUtil.format("Registered {0}", str));
        } catch (IOException e) {
            throw new com.itextpdf.io.exceptions.IOException(e);
        }
    }

    boolean saveCopyOfRegularFont(String str, String str2) {
        String strTrim = str.substring(0, str.length() - 7).trim();
        if (this.fontNames.containsKey(strTrim)) {
            return false;
        }
        this.fontNames.put(strTrim, str2);
        return true;
    }

    int registerFontDirectory(String str) {
        return registerFontDirectory(str, false);
    }

    int registerFontDirectory(String str, boolean z) {
        LOGGER.debug(MessageFormatUtil.format("Registering directory {0}, looking for fonts", str));
        int i = 0;
        try {
            String[] strArrListFilesInDirectory = FileUtil.listFilesInDirectory(str, z);
            if (strArrListFilesInDirectory == null) {
                return 0;
            }
            int i2 = 0;
            for (String str2 : strArrListFilesInDirectory) {
                try {
                    try {
                        String lowerCase = str2.length() < 4 ? null : str2.substring(str2.length() - 4).toLowerCase();
                        if (".afm".equals(lowerCase) || ".pfm".equals(lowerCase)) {
                            if (FileUtil.fileExists(str2.substring(0, str2.length() - 4) + ".pfb")) {
                                registerFont(str2, null);
                                i2++;
                            }
                        } else if (".ttf".equals(lowerCase) || ".otf".equals(lowerCase) || ".ttc".equals(lowerCase)) {
                            registerFont(str2, null);
                            i2++;
                        }
                    } catch (Exception unused) {
                    }
                } catch (Exception unused2) {
                    i = i2;
                }
            }
            return i2;
        } catch (Exception unused3) {
        }
        return i;
    }

    int registerSystemFontDirectories() {
        String[] strArr = {FileUtil.getFontsDir(), "/usr/share/X11/fonts", "/usr/X/lib/X11/fonts", "/usr/openwin/lib/X11/fonts", "/usr/share/fonts", "/usr/X11R6/lib/X11/fonts"};
        int iRegisterFontDirectory = 0;
        for (int i = 0; i < 6; i++) {
            iRegisterFontDirectory += registerFontDirectory(strArr[i], true);
        }
        String[] strArr2 = {"/Library/Fonts", "/System/Library/Fonts"};
        for (int i2 = 0; i2 < 2; i2++) {
            iRegisterFontDirectory += registerFontDirectory(strArr2[i2], false);
        }
        return iRegisterFontDirectory;
    }

    Set<String> getRegisteredFonts() {
        return this.fontNames.keySet();
    }

    Set<String> getRegisteredFontFamilies() {
        return this.fontFamilies.keySet();
    }

    boolean isRegisteredFont(String str) {
        return this.fontNames.containsKey(str.toLowerCase());
    }

    public void clearRegisteredFonts() {
        this.fontNames.clear();
        registerStandardFonts();
    }

    public void clearRegisteredFontFamilies() {
        this.fontFamilies.clear();
        registerStandardFontFamilies();
    }
}
