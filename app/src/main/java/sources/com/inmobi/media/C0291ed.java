package com.inmobi.media;

import android.text.TextUtils;
import android.webkit.URLUtil;
import com.inmobi.commons.core.configs.AdConfig;
import java.io.IOException;
import java.io.StringReader;
import java.util.Arrays;
import java.util.HashMap;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* JADX INFO: renamed from: com.inmobi.media.ed, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0291ed {
    public static final HashMap f = MapsKt.hashMapOf(TuplesKt.to("Error", "error"), TuplesKt.to("Impression", "Impression"), TuplesKt.to("ClickTracking", "click"), TuplesKt.to("creativeView", "creativeView"), TuplesKt.to("start", "start"), TuplesKt.to("firstQuartile", "firstQuartile"), TuplesKt.to("midpoint", "midpoint"), TuplesKt.to("thirdQuartile", "thirdQuartile"), TuplesKt.to("complete", "complete"), TuplesKt.to("mute", "mute"), TuplesKt.to("unmute", "unmute"), TuplesKt.to("pause", "pause"), TuplesKt.to("resume", "resume"), TuplesKt.to("fullscreen", "fullscreen"), TuplesKt.to("exitFullscreen", "exitFullscreen"), TuplesKt.to("closeEndCard", "closeEndCard"));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AdConfig.VastVideoConfig f345a;
    public final InterfaceC0298f5 b;
    public final C0370jd c;
    public boolean d;
    public int e;

    public C0291ed(AdConfig.VastVideoConfig mVastVideoConfig, InterfaceC0298f5 interfaceC0298f5) {
        Intrinsics.checkNotNullParameter(mVastVideoConfig, "mVastVideoConfig");
        this.f345a = mVastVideoConfig;
        this.b = interfaceC0298f5;
        this.c = new C0370jd(CollectionsKt.emptyList(), mVastVideoConfig);
    }

    public static boolean b(int i) {
        return i == 3;
    }

    public final C0370jd a(String str) {
        InterfaceC0298f5 interfaceC0298f5 = this.b;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("ed", AbstractC0378k6.a("ed", "TAG", "vastXML = ", str));
        }
        try {
        } catch (XmlPullParserException e) {
            c(100);
            C0551w5 c0551w5 = C0551w5.f513a;
            C0264d2 event = new C0264d2(e);
            Intrinsics.checkNotNullParameter(event, "event");
            C0551w5.d.a(event);
        } catch (Exception e2) {
            c(900);
            C0551w5 c0551w52 = C0551w5.f513a;
            C0551w5.d.a(AbstractC0251c5.a(e2, "event"));
        }
        if (TextUtils.isEmpty(str)) {
            c(303);
            return this.c;
        }
        XmlPullParser xmlPullParserNewPullParser = XmlPullParserFactory.newInstance().newPullParser();
        xmlPullParserNewPullParser.setInput(new StringReader(str));
        String[] strArr = {"Wrapper", "InLine"};
        Intrinsics.checkNotNull(xmlPullParserNewPullParser);
        a(xmlPullParserNewPullParser, "VAST");
        if (Intrinsics.areEqual("VAST", xmlPullParserNewPullParser.getName())) {
            a(xmlPullParserNewPullParser, "Ad");
            if (Intrinsics.areEqual("Ad", xmlPullParserNewPullParser.getName())) {
                a(xmlPullParserNewPullParser, strArr);
                if (Intrinsics.areEqual("InLine", xmlPullParserNewPullParser.getName())) {
                    c(xmlPullParserNewPullParser);
                } else if (Intrinsics.areEqual("Wrapper", xmlPullParserNewPullParser.getName())) {
                    f(xmlPullParserNewPullParser);
                } else {
                    InterfaceC0298f5 interfaceC0298f52 = this.b;
                    if (interfaceC0298f52 != null) {
                        Intrinsics.checkNotNullExpressionValue("ed", "TAG");
                        ((C0314g5) interfaceC0298f52).b("ed", "VAST Schema validation error: InLine node or Wrapper node at appropriate hierarchy not found");
                    }
                    c(101);
                }
            } else {
                InterfaceC0298f5 interfaceC0298f53 = this.b;
                if (interfaceC0298f53 != null) {
                    Intrinsics.checkNotNullExpressionValue("ed", "TAG");
                    ((C0314g5) interfaceC0298f53).b("ed", "VAST Schema validation error: Ad node at appropriate hierarchy not found");
                }
                c(303);
            }
        } else {
            InterfaceC0298f5 interfaceC0298f54 = this.b;
            if (interfaceC0298f54 != null) {
                Intrinsics.checkNotNullExpressionValue("ed", "TAG");
                ((C0314g5) interfaceC0298f54).b("ed", "VAST Schema validation error: VAST node at appropriate hierarchy not found");
            }
            c(101);
        }
        return this.c;
    }

    public final void b(XmlPullParser xmlPullParser) {
        int iD = d(xmlPullParser);
        while (true) {
            if (xmlPullParser.getName() != null && Intrinsics.areEqual(xmlPullParser.getName(), "Extensions") && b(iD)) {
                return;
            }
            if (xmlPullParser.getName() != null && !b(iD)) {
                String name = xmlPullParser.getName();
                if (Intrinsics.areEqual(name, "CompanionAdTracking")) {
                    int iD2 = d(xmlPullParser);
                    while (true) {
                        if (xmlPullParser.getName() == null || !Intrinsics.areEqual(xmlPullParser.getName(), "CompanionAdTracking") || !b(iD2)) {
                            if (xmlPullParser.getName() != null && !b(iD2) && Intrinsics.areEqual("TrackingEvents", xmlPullParser.getName())) {
                                e(xmlPullParser);
                            }
                            iD2 = d(xmlPullParser);
                        }
                    }
                } else if (Intrinsics.areEqual(name, "Extension") && Intrinsics.areEqual(xmlPullParser.getAttributeValue(null, "type"), "AdVerifications")) {
                    a(xmlPullParser);
                }
            }
            iD = d(xmlPullParser);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:534:0x090b, code lost:
    
        r2 = r29.b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:535:0x090d, code lost:
    
        if (r2 == null) goto L537;
     */
    /* JADX WARN: Code restructure failed: missing block: B:536:0x090f, code lost:
    
        kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue("ed", "TAG");
        ((com.inmobi.media.C0314g5) r2).b("ed", "VAST Schema Validation Error. " + r1 + " Media Duration invalid.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:537:0x092c, code lost:
    
        r1 = 101;
        c(101);
        r15 = 0;
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:243:0x03fc  */
    /* JADX WARN: Removed duplicated region for block: B:509:0x086c  */
    /* JADX WARN: Removed duplicated region for block: B:554:0x09a4  */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void c(org.xmlpull.v1.XmlPullParser r30) {
        /*
            Method dump skipped, instruction units count: 2532
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C0291ed.c(org.xmlpull.v1.XmlPullParser):void");
    }

    public final int d(XmlPullParser xmlPullParser) {
        try {
            return xmlPullParser.next();
        } catch (IOException unused) {
            InterfaceC0298f5 interfaceC0298f5 = this.b;
            if (interfaceC0298f5 == null) {
                return -1;
            }
            Intrinsics.checkNotNullExpressionValue("ed", "TAG");
            ((C0314g5) interfaceC0298f5).b("ed", "Parsing failed.");
            return -1;
        } catch (XmlPullParserException unused2) {
            InterfaceC0298f5 interfaceC0298f52 = this.b;
            if (interfaceC0298f52 == null) {
                return -1;
            }
            Intrinsics.checkNotNullExpressionValue("ed", "TAG");
            ((C0314g5) interfaceC0298f52).b("ed", "VAST Schema validation error: VAST node at appropriate hierarchy not found.");
            return -1;
        }
    }

    public final void e(XmlPullParser xmlPullParser) {
        int iD = d(xmlPullParser);
        while (true) {
            if (xmlPullParser.getName() != null && Intrinsics.areEqual(xmlPullParser.getName(), "TrackingEvents") && b(iD)) {
                return;
            }
            if (xmlPullParser.getName() != null && Intrinsics.areEqual("Tracking", xmlPullParser.getName()) && !b(iD)) {
                int attributeCount = xmlPullParser.getAttributeCount();
                int i = 0;
                while (true) {
                    if (i >= attributeCount) {
                        break;
                    }
                    if (Intrinsics.areEqual(xmlPullParser.getAttributeName(i), "event")) {
                        String attributeValue = xmlPullParser.getAttributeValue(i);
                        if (d(xmlPullParser) == 4) {
                            HashMap map = f;
                            if (map.containsKey(attributeValue)) {
                                Object obj = map.get(attributeValue);
                                Intrinsics.checkNotNull(obj);
                                String text = xmlPullParser.getText();
                                Intrinsics.checkNotNullExpressionValue(text, "getText(...)");
                                a((String) obj, text);
                            }
                        }
                    } else {
                        i++;
                    }
                }
            }
            iD = d(xmlPullParser);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:133:0x01b3, code lost:
    
        continue;
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void f(org.xmlpull.v1.XmlPullParser r13) {
        /*
            Method dump skipped, instruction units count: 472
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C0291ed.f(org.xmlpull.v1.XmlPullParser):void");
    }

    public final void a(XmlPullParser xmlPullParser, String str) {
        InterfaceC0298f5 interfaceC0298f5 = this.b;
        if (interfaceC0298f5 != null) {
            Intrinsics.checkNotNullExpressionValue("ed", "TAG");
            ((C0314g5) interfaceC0298f5).c("ed", "name=".concat(str));
        }
        int next = 0;
        while (true) {
            try {
                next = xmlPullParser.next();
            } catch (IOException e) {
                InterfaceC0298f5 interfaceC0298f52 = this.b;
                if (interfaceC0298f52 != null) {
                    ((C0314g5) interfaceC0298f52).b("ed", AbstractC0363j6.a("ed", "TAG", "Parsing failed. ").append(Arrays.toString(e.getStackTrace())).toString());
                }
            } catch (XmlPullParserException e2) {
                InterfaceC0298f5 interfaceC0298f53 = this.b;
                if (interfaceC0298f53 != null) {
                    ((C0314g5) interfaceC0298f53).b("ed", AbstractC0363j6.a("ed", "TAG", "VAST Schema validation error: VAST node at appropriate hierarchy not found. ").append(Arrays.toString(e2.getStackTrace())).toString());
                }
            }
            if (next == 1) {
                return;
            }
            if (xmlPullParser.getName() != null && Intrinsics.areEqual(xmlPullParser.getName(), str)) {
                return;
            }
        }
    }

    public final void a(XmlPullParser xmlPullParser, String[] strArr) {
        int next = 0;
        boolean z = false;
        do {
            try {
                next = xmlPullParser.next();
            } catch (IOException unused) {
                InterfaceC0298f5 interfaceC0298f5 = this.b;
                if (interfaceC0298f5 != null) {
                    Intrinsics.checkNotNullExpressionValue("ed", "TAG");
                    ((C0314g5) interfaceC0298f5).b("ed", "Parsing failed.");
                }
            } catch (XmlPullParserException unused2) {
                InterfaceC0298f5 interfaceC0298f52 = this.b;
                if (interfaceC0298f52 != null) {
                    Intrinsics.checkNotNullExpressionValue("ed", "TAG");
                    ((C0314g5) interfaceC0298f52).b("ed", "VAST Schema validation error: VAST node at appropriate hierarchy not found.");
                }
            }
            if (next == 1) {
                return;
            }
            if (xmlPullParser.getName() != null) {
                int length = strArr.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        break;
                    }
                    if (Intrinsics.areEqual(xmlPullParser.getName(), strArr[i])) {
                        z = true;
                        break;
                    }
                    i++;
                }
            }
        } while (!z);
    }

    public final void a(XmlPullParser xmlPullParser, boolean z) {
        String strA;
        int iD = d(xmlPullParser);
        while (true) {
            if (xmlPullParser.getName() != null && Intrinsics.areEqual(xmlPullParser.getName(), "VideoClicks") && b(iD)) {
                return;
            }
            if (xmlPullParser.getName() != null && !b(iD)) {
                String name = xmlPullParser.getName();
                if (Intrinsics.areEqual(name, "ClickThrough")) {
                    if (!z) {
                        return;
                    }
                    if (d(xmlPullParser) == 4) {
                        String text = xmlPullParser.getText();
                        if (text == null || text.length() == 0) {
                            strA = null;
                        } else {
                            Intrinsics.checkNotNull(text);
                            int length = text.length() - 1;
                            int i = 0;
                            boolean z2 = false;
                            while (i <= length) {
                                boolean z3 = Intrinsics.compare((int) text.charAt(!z2 ? i : length), 32) <= 0;
                                if (z2) {
                                    if (!z3) {
                                        break;
                                    } else {
                                        length--;
                                    }
                                } else if (z3) {
                                    i++;
                                } else {
                                    z2 = true;
                                }
                            }
                            strA = AbstractC0348i7.a(length, 1, text, i);
                        }
                        this.c.k = strA;
                    }
                } else if (Intrinsics.areEqual(name, "ClickTracking") && d(xmlPullParser) == 4) {
                    String text2 = xmlPullParser.getText();
                    Intrinsics.checkNotNullExpressionValue(text2, "getText(...)");
                    a("click", text2);
                }
            }
            iD = d(xmlPullParser);
        }
    }

    public final void a(XmlPullParser vastParser) {
        String vendor;
        int iD;
        int iD2 = d(vastParser);
        while (true) {
            if (vastParser.getName() != null && Intrinsics.areEqual(vastParser.getName(), "AdVerifications") && b(iD2)) {
                return;
            }
            if (vastParser.getName() != null && !b(iD2) && Intrinsics.areEqual(vastParser.getName(), "Verification") && (vendor = vastParser.getAttributeValue(null, "vendor")) != null) {
                Intrinsics.checkNotNullParameter(vastParser, "vastParser");
                Intrinsics.checkNotNullParameter(vendor, "vendor");
                int iD3 = d(vastParser);
                String strA = null;
                String string = null;
                while (true) {
                    if (vastParser.getName() != null && Intrinsics.areEqual(vastParser.getName(), "Verification") && b(iD3)) {
                        break;
                    }
                    if (vastParser.getName() != null && !b(iD3)) {
                        String name = vastParser.getName();
                        if (Intrinsics.areEqual(name, "JavaScriptResource")) {
                            String attributeValue = vastParser.getAttributeValue(null, "apiFramework");
                            if (attributeValue != null && StringsKt.startsWith$default(attributeValue, "omid", false, 2, (Object) null) && d(vastParser) == 4) {
                                String text = vastParser.getText();
                                if (text == null || text.length() == 0) {
                                    strA = null;
                                } else {
                                    int length = text.length() - 1;
                                    int i = 0;
                                    boolean z = false;
                                    while (i <= length) {
                                        boolean z2 = Intrinsics.compare((int) text.charAt(!z ? i : length), 32) <= 0;
                                        if (z) {
                                            if (!z2) {
                                                break;
                                            } else {
                                                length--;
                                            }
                                        } else if (z2) {
                                            i++;
                                        } else {
                                            z = true;
                                        }
                                    }
                                    strA = AbstractC0348i7.a(length, 1, text, i);
                                }
                            }
                        } else if (Intrinsics.areEqual(name, "VerificationParameters") && ((iD = d(vastParser)) == 4 || iD == 5)) {
                            String text2 = vastParser.getText();
                            if (text2 == null || text2.length() == 0) {
                                string = null;
                            } else {
                                String text3 = vastParser.getText();
                                Intrinsics.checkNotNullExpressionValue(text3, "getText(...)");
                                string = StringsKt.trim((CharSequence) text3).toString();
                            }
                        }
                    }
                    iD3 = d(vastParser);
                }
                if (URLUtil.isValidUrl(strA)) {
                    Intrinsics.checkNotNull(strA);
                    A9 tracker = new A9(vendor, string, strA, null);
                    C0370jd c0370jd = this.c;
                    c0370jd.getClass();
                    Intrinsics.checkNotNullParameter(tracker, "tracker");
                    c0370jd.h.add(tracker);
                    InterfaceC0298f5 interfaceC0298f5 = this.b;
                    if (interfaceC0298f5 != null) {
                        Intrinsics.checkNotNullExpressionValue("ed", "TAG");
                        ((C0314g5) interfaceC0298f5).b("ed", "Omid JavaScript URL found inside VAST : ".concat(strA));
                    }
                }
            }
            iD2 = d(vastParser);
        }
    }

    public final void a(int i) {
        HashMap map = new HashMap();
        map.put("[ERRORCODE]", String.valueOf(i));
        for (C0526u8 c0526u8 : this.c.h) {
            if (Intrinsics.areEqual("error", c0526u8.b)) {
                String str = c0526u8.d;
                boolean z = C0457p9.f457a;
                C0520u2.f496a.a(C0457p9.a(str, map), c0526u8.c, true, null, V9.c, this.b);
            }
        }
    }

    public final void a(String str, String str2) {
        String strA;
        if (str2.length() == 0) {
            strA = null;
        } else {
            int length = str2.length() - 1;
            int i = 0;
            boolean z = false;
            while (i <= length) {
                boolean z2 = Intrinsics.compare((int) str2.charAt(!z ? i : length), 32) <= 0;
                if (z) {
                    if (!z2) {
                        break;
                    } else {
                        length--;
                    }
                } else if (z2) {
                    i++;
                } else {
                    z = true;
                }
            }
            strA = AbstractC0348i7.a(length, 1, str2, i);
        }
        if (!URLUtil.isValidUrl(strA)) {
            InterfaceC0298f5 interfaceC0298f5 = this.b;
            if (interfaceC0298f5 != null) {
                Intrinsics.checkNotNullExpressionValue("ed", "TAG");
                ((C0314g5) interfaceC0298f5).b("ed", "Malformed URL " + strA + " Discarding this tracker");
            }
            Intrinsics.areEqual(str, "Impression");
            return;
        }
        Intrinsics.checkNotNull(strA);
        C0526u8 tracker = new C0526u8(strA, 0, str, null);
        C0370jd c0370jd = this.c;
        c0370jd.getClass();
        Intrinsics.checkNotNullParameter(tracker, "tracker");
        c0370jd.h.add(tracker);
    }

    public final void c(int i) {
        this.c.l = i;
        a(i);
    }
}
