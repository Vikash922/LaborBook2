package com.itextpdf.styledxmlparser.css.media;

import com.itextpdf.forms.xfdf.XfdfConstants;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public final class MediaType {
    private static final Set<String> registeredMediaTypes = new HashSet();
    public static final String ALL = registerMediaType("all");
    public static final String AURAL = registerMediaType("aural");
    public static final String BRAILLE = registerMediaType("braille");
    public static final String EMBOSSED = registerMediaType("embossed");
    public static final String HANDHELD = registerMediaType("handheld");
    public static final String PRINT = registerMediaType(XfdfConstants.PRINT);
    public static final String PROJECTION = registerMediaType(XfdfConstants.PROJECTION);
    public static final String SCREEN = registerMediaType(CommonCssConstants.SCREEN);
    public static final String SPEECH = registerMediaType("speech");
    public static final String TTY = registerMediaType("tty");

    /* JADX INFO: renamed from: TV */
    public static final String f3307TV = registerMediaType("tv");

    private MediaType() {
    }

    public static boolean isValidMediaType(String str) {
        return registeredMediaTypes.contains(str);
    }

    private static String registerMediaType(String str) {
        registeredMediaTypes.add(str);
        return str;
    }
}
