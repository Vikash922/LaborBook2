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

/* JADX INFO: renamed from: com.inmobi.media.ed */
/* JADX INFO: loaded from: classes6.dex */
public final class C3140ed {

    /* JADX INFO: renamed from: f */
    public static final HashMap f2051f = MapsKt.hashMapOf(TuplesKt.m2729to("Error", "error"), TuplesKt.m2729to("Impression", "Impression"), TuplesKt.m2729to("ClickTracking", "click"), TuplesKt.m2729to("creativeView", "creativeView"), TuplesKt.m2729to("start", "start"), TuplesKt.m2729to("firstQuartile", "firstQuartile"), TuplesKt.m2729to("midpoint", "midpoint"), TuplesKt.m2729to("thirdQuartile", "thirdQuartile"), TuplesKt.m2729to("complete", "complete"), TuplesKt.m2729to("mute", "mute"), TuplesKt.m2729to("unmute", "unmute"), TuplesKt.m2729to("pause", "pause"), TuplesKt.m2729to("resume", "resume"), TuplesKt.m2729to("fullscreen", "fullscreen"), TuplesKt.m2729to("exitFullscreen", "exitFullscreen"), TuplesKt.m2729to("closeEndCard", "closeEndCard"));

    /* JADX INFO: renamed from: a */
    public final AdConfig.VastVideoConfig f2052a;

    /* JADX INFO: renamed from: b */
    public final InterfaceC3147f5 f2053b;

    /* JADX INFO: renamed from: c */
    public final C3215jd f2054c;

    /* JADX INFO: renamed from: d */
    public boolean f2055d;

    /* JADX INFO: renamed from: e */
    public int f2056e;

    public C3140ed(AdConfig.VastVideoConfig mVastVideoConfig, InterfaceC3147f5 interfaceC3147f5) {
        Intrinsics.checkNotNullParameter(mVastVideoConfig, "mVastVideoConfig");
        this.f2052a = mVastVideoConfig;
        this.f2053b = interfaceC3147f5;
        this.f2054c = new C3215jd(CollectionsKt.emptyList(), mVastVideoConfig);
    }

    /* JADX INFO: renamed from: b */
    public static boolean m2108b(int i) {
        return i == 3;
    }

    /* JADX INFO: renamed from: a */
    public final C3215jd m2109a(String str) {
        InterfaceC3147f5 interfaceC3147f5 = this.f2053b;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("ed", AbstractC3223k6.m2276a("ed", "TAG", "vastXML = ", str));
        }
        try {
        } catch (XmlPullParserException e) {
            m2117c(100);
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3114d2 event = new C3114d2(e);
            Intrinsics.checkNotNullParameter(event, "event");
            C3402w5.f2712d.m2158a(event);
        } catch (Exception e2) {
            m2117c(900);
            C3402w5 c3402w52 = C3402w5.f2709a;
            C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e2, "event"));
        }
        if (TextUtils.isEmpty(str)) {
            m2117c(303);
            return this.f2054c;
        }
        XmlPullParser xmlPullParserNewPullParser = XmlPullParserFactory.newInstance().newPullParser();
        xmlPullParserNewPullParser.setInput(new StringReader(str));
        String[] strArr = {"Wrapper", "InLine"};
        Intrinsics.checkNotNull(xmlPullParserNewPullParser);
        m2113a(xmlPullParserNewPullParser, "VAST");
        if (Intrinsics.areEqual("VAST", xmlPullParserNewPullParser.getName())) {
            m2113a(xmlPullParserNewPullParser, "Ad");
            if (Intrinsics.areEqual("Ad", xmlPullParserNewPullParser.getName())) {
                m2115a(xmlPullParserNewPullParser, strArr);
                if (Intrinsics.areEqual("InLine", xmlPullParserNewPullParser.getName())) {
                    m2118c(xmlPullParserNewPullParser);
                } else if (Intrinsics.areEqual("Wrapper", xmlPullParserNewPullParser.getName())) {
                    m2121f(xmlPullParserNewPullParser);
                } else {
                    InterfaceC3147f5 interfaceC3147f52 = this.f2053b;
                    if (interfaceC3147f52 != null) {
                        Intrinsics.checkNotNullExpressionValue("ed", "TAG");
                        ((C3162g5) interfaceC3147f52).m2151b("ed", "VAST Schema validation error: InLine node or Wrapper node at appropriate hierarchy not found");
                    }
                    m2117c(101);
                }
            } else {
                InterfaceC3147f5 interfaceC3147f53 = this.f2053b;
                if (interfaceC3147f53 != null) {
                    Intrinsics.checkNotNullExpressionValue("ed", "TAG");
                    ((C3162g5) interfaceC3147f53).m2151b("ed", "VAST Schema validation error: Ad node at appropriate hierarchy not found");
                }
                m2117c(303);
            }
        } else {
            InterfaceC3147f5 interfaceC3147f54 = this.f2053b;
            if (interfaceC3147f54 != null) {
                Intrinsics.checkNotNullExpressionValue("ed", "TAG");
                ((C3162g5) interfaceC3147f54).m2151b("ed", "VAST Schema validation error: VAST node at appropriate hierarchy not found");
            }
            m2117c(101);
        }
        return this.f2054c;
    }

    /* JADX INFO: renamed from: b */
    public final void m2116b(XmlPullParser xmlPullParser) {
        int iM2119d = m2119d(xmlPullParser);
        while (true) {
            if (xmlPullParser.getName() != null && Intrinsics.areEqual(xmlPullParser.getName(), "Extensions") && m2108b(iM2119d)) {
                return;
            }
            if (xmlPullParser.getName() != null && !m2108b(iM2119d)) {
                String name = xmlPullParser.getName();
                if (Intrinsics.areEqual(name, "CompanionAdTracking")) {
                    int iM2119d2 = m2119d(xmlPullParser);
                    while (true) {
                        if (xmlPullParser.getName() == null || !Intrinsics.areEqual(xmlPullParser.getName(), "CompanionAdTracking") || !m2108b(iM2119d2)) {
                            if (xmlPullParser.getName() != null && !m2108b(iM2119d2) && Intrinsics.areEqual("TrackingEvents", xmlPullParser.getName())) {
                                m2120e(xmlPullParser);
                            }
                            iM2119d2 = m2119d(xmlPullParser);
                        }
                    }
                } else if (Intrinsics.areEqual(name, "Extension") && Intrinsics.areEqual(xmlPullParser.getAttributeValue(null, "type"), "AdVerifications")) {
                    m2112a(xmlPullParser);
                }
            }
            iM2119d = m2119d(xmlPullParser);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:534:0x090b, code lost:
    
        r2 = r29.f2053b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:535:0x090d, code lost:
    
        if (r2 == null) goto L537;
     */
    /* JADX WARN: Code restructure failed: missing block: B:536:0x090f, code lost:
    
        kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue("ed", "TAG");
        ((com.inmobi.media.C3162g5) r2).m2151b("ed", "VAST Schema Validation Error. " + r1 + " Media Duration invalid.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:537:0x092c, code lost:
    
        r1 = 101;
        m2117c(101);
        r15 = 0;
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:243:0x03fc  */
    /* JADX WARN: Removed duplicated region for block: B:509:0x086c  */
    /* JADX WARN: Removed duplicated region for block: B:554:0x09a4  */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    /* JADX INFO: renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m2118c(org.xmlpull.v1.XmlPullParser r30) {
        /*
            Method dump skipped, instruction units count: 2532
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C3140ed.m2118c(org.xmlpull.v1.XmlPullParser):void");
    }

    /* JADX INFO: renamed from: d */
    public final int m2119d(XmlPullParser xmlPullParser) {
        try {
            return xmlPullParser.next();
        } catch (IOException unused) {
            InterfaceC3147f5 interfaceC3147f5 = this.f2053b;
            if (interfaceC3147f5 == null) {
                return -1;
            }
            Intrinsics.checkNotNullExpressionValue("ed", "TAG");
            ((C3162g5) interfaceC3147f5).m2151b("ed", "Parsing failed.");
            return -1;
        } catch (XmlPullParserException unused2) {
            InterfaceC3147f5 interfaceC3147f52 = this.f2053b;
            if (interfaceC3147f52 == null) {
                return -1;
            }
            Intrinsics.checkNotNullExpressionValue("ed", "TAG");
            ((C3162g5) interfaceC3147f52).m2151b("ed", "VAST Schema validation error: VAST node at appropriate hierarchy not found.");
            return -1;
        }
    }

    /* JADX INFO: renamed from: e */
    public final void m2120e(XmlPullParser xmlPullParser) {
        int iM2119d = m2119d(xmlPullParser);
        while (true) {
            if (xmlPullParser.getName() != null && Intrinsics.areEqual(xmlPullParser.getName(), "TrackingEvents") && m2108b(iM2119d)) {
                return;
            }
            if (xmlPullParser.getName() != null && Intrinsics.areEqual("Tracking", xmlPullParser.getName()) && !m2108b(iM2119d)) {
                int attributeCount = xmlPullParser.getAttributeCount();
                int i = 0;
                while (true) {
                    if (i >= attributeCount) {
                        break;
                    }
                    if (Intrinsics.areEqual(xmlPullParser.getAttributeName(i), "event")) {
                        String attributeValue = xmlPullParser.getAttributeValue(i);
                        if (m2119d(xmlPullParser) == 4) {
                            HashMap map = f2051f;
                            if (map.containsKey(attributeValue)) {
                                Object obj = map.get(attributeValue);
                                Intrinsics.checkNotNull(obj);
                                String text = xmlPullParser.getText();
                                Intrinsics.checkNotNullExpressionValue(text, "getText(...)");
                                m2111a((String) obj, text);
                            }
                        }
                    } else {
                        i++;
                    }
                }
            }
            iM2119d = m2119d(xmlPullParser);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:133:0x01b3, code lost:
    
        continue;
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX INFO: renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m2121f(org.xmlpull.v1.XmlPullParser r13) {
        /*
            Method dump skipped, instruction units count: 472
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C3140ed.m2121f(org.xmlpull.v1.XmlPullParser):void");
    }

    /* JADX INFO: renamed from: a */
    public final void m2113a(XmlPullParser xmlPullParser, String str) {
        InterfaceC3147f5 interfaceC3147f5 = this.f2053b;
        if (interfaceC3147f5 != null) {
            Intrinsics.checkNotNullExpressionValue("ed", "TAG");
            ((C3162g5) interfaceC3147f5).m2152c("ed", "name=".concat(str));
        }
        int next = 0;
        while (true) {
            try {
                next = xmlPullParser.next();
            } catch (IOException e) {
                InterfaceC3147f5 interfaceC3147f52 = this.f2053b;
                if (interfaceC3147f52 != null) {
                    ((C3162g5) interfaceC3147f52).m2151b("ed", AbstractC3208j6.m2261a("ed", "TAG", "Parsing failed. ").append(Arrays.toString(e.getStackTrace())).toString());
                }
            } catch (XmlPullParserException e2) {
                InterfaceC3147f5 interfaceC3147f53 = this.f2053b;
                if (interfaceC3147f53 != null) {
                    ((C3162g5) interfaceC3147f53).m2151b("ed", AbstractC3208j6.m2261a("ed", "TAG", "VAST Schema validation error: VAST node at appropriate hierarchy not found. ").append(Arrays.toString(e2.getStackTrace())).toString());
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

    /* JADX INFO: renamed from: a */
    public final void m2115a(XmlPullParser xmlPullParser, String[] strArr) {
        int next = 0;
        boolean z = false;
        do {
            try {
                next = xmlPullParser.next();
            } catch (IOException unused) {
                InterfaceC3147f5 interfaceC3147f5 = this.f2053b;
                if (interfaceC3147f5 != null) {
                    Intrinsics.checkNotNullExpressionValue("ed", "TAG");
                    ((C3162g5) interfaceC3147f5).m2151b("ed", "Parsing failed.");
                }
            } catch (XmlPullParserException unused2) {
                InterfaceC3147f5 interfaceC3147f52 = this.f2053b;
                if (interfaceC3147f52 != null) {
                    Intrinsics.checkNotNullExpressionValue("ed", "TAG");
                    ((C3162g5) interfaceC3147f52).m2151b("ed", "VAST Schema validation error: VAST node at appropriate hierarchy not found.");
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

    /* JADX INFO: renamed from: a */
    public final void m2114a(XmlPullParser xmlPullParser, boolean z) {
        String strM2246a;
        int iM2119d = m2119d(xmlPullParser);
        while (true) {
            if (xmlPullParser.getName() != null && Intrinsics.areEqual(xmlPullParser.getName(), "VideoClicks") && m2108b(iM2119d)) {
                return;
            }
            if (xmlPullParser.getName() != null && !m2108b(iM2119d)) {
                String name = xmlPullParser.getName();
                if (Intrinsics.areEqual(name, "ClickThrough")) {
                    if (!z) {
                        return;
                    }
                    if (m2119d(xmlPullParser) == 4) {
                        String text = xmlPullParser.getText();
                        if (text == null || text.length() == 0) {
                            strM2246a = null;
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
                            strM2246a = AbstractC3194i7.m2246a(length, 1, text, i);
                        }
                        this.f2054c.f2241k = strM2246a;
                    }
                } else if (Intrinsics.areEqual(name, "ClickTracking") && m2119d(xmlPullParser) == 4) {
                    String text2 = xmlPullParser.getText();
                    Intrinsics.checkNotNullExpressionValue(text2, "getText(...)");
                    m2111a("click", text2);
                }
            }
            iM2119d = m2119d(xmlPullParser);
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m2112a(XmlPullParser vastParser) {
        String vendor;
        int iM2119d;
        int iM2119d2 = m2119d(vastParser);
        while (true) {
            if (vastParser.getName() != null && Intrinsics.areEqual(vastParser.getName(), "AdVerifications") && m2108b(iM2119d2)) {
                return;
            }
            if (vastParser.getName() != null && !m2108b(iM2119d2) && Intrinsics.areEqual(vastParser.getName(), "Verification") && (vendor = vastParser.getAttributeValue(null, "vendor")) != null) {
                Intrinsics.checkNotNullParameter(vastParser, "vastParser");
                Intrinsics.checkNotNullParameter(vendor, "vendor");
                int iM2119d3 = m2119d(vastParser);
                String strM2246a = null;
                String string = null;
                while (true) {
                    if (vastParser.getName() != null && Intrinsics.areEqual(vastParser.getName(), "Verification") && m2108b(iM2119d3)) {
                        break;
                    }
                    if (vastParser.getName() != null && !m2108b(iM2119d3)) {
                        String name = vastParser.getName();
                        if (Intrinsics.areEqual(name, "JavaScriptResource")) {
                            String attributeValue = vastParser.getAttributeValue(null, "apiFramework");
                            if (attributeValue != null && StringsKt.startsWith$default(attributeValue, "omid", false, 2, (Object) null) && m2119d(vastParser) == 4) {
                                String text = vastParser.getText();
                                if (text == null || text.length() == 0) {
                                    strM2246a = null;
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
                                    strM2246a = AbstractC3194i7.m2246a(length, 1, text, i);
                                }
                            }
                        } else if (Intrinsics.areEqual(name, "VerificationParameters") && ((iM2119d = m2119d(vastParser)) == 4 || iM2119d == 5)) {
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
                    iM2119d3 = m2119d(vastParser);
                }
                if (URLUtil.isValidUrl(strM2246a)) {
                    Intrinsics.checkNotNull(strM2246a);
                    C2697A9 tracker = new C2697A9(vendor, string, strM2246a, null);
                    C3215jd c3215jd = this.f2054c;
                    c3215jd.getClass();
                    Intrinsics.checkNotNullParameter(tracker, "tracker");
                    c3215jd.f2238h.add(tracker);
                    InterfaceC3147f5 interfaceC3147f5 = this.f2053b;
                    if (interfaceC3147f5 != null) {
                        Intrinsics.checkNotNullExpressionValue("ed", "TAG");
                        ((C3162g5) interfaceC3147f5).m2151b("ed", "Omid JavaScript URL found inside VAST : ".concat(strM2246a));
                    }
                }
            }
            iM2119d2 = m2119d(vastParser);
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m2110a(int i) {
        HashMap map = new HashMap();
        map.put("[ERRORCODE]", String.valueOf(i));
        for (C3375u8 c3375u8 : this.f2054c.f2238h) {
            if (Intrinsics.areEqual("error", c3375u8.f2662b)) {
                String str = c3375u8.f2664d;
                boolean z = C3301p9.f2439a;
                C3369u2.f2627a.m2482a(C3301p9.m2343a(str, map), c3375u8.f2663c, true, null, EnumC3006V9.f1597c, this.f2053b);
            }
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m2111a(String str, String str2) {
        String strM2246a;
        if (str2.length() == 0) {
            strM2246a = null;
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
            strM2246a = AbstractC3194i7.m2246a(length, 1, str2, i);
        }
        if (!URLUtil.isValidUrl(strM2246a)) {
            InterfaceC3147f5 interfaceC3147f5 = this.f2053b;
            if (interfaceC3147f5 != null) {
                Intrinsics.checkNotNullExpressionValue("ed", "TAG");
                ((C3162g5) interfaceC3147f5).m2151b("ed", "Malformed URL " + strM2246a + " Discarding this tracker");
            }
            Intrinsics.areEqual(str, "Impression");
            return;
        }
        Intrinsics.checkNotNull(strM2246a);
        C3375u8 tracker = new C3375u8(strM2246a, 0, str, null);
        C3215jd c3215jd = this.f2054c;
        c3215jd.getClass();
        Intrinsics.checkNotNullParameter(tracker, "tracker");
        c3215jd.f2238h.add(tracker);
    }

    /* JADX INFO: renamed from: c */
    public final void m2117c(int i) {
        this.f2054c.f2242l = i;
        m2110a(i);
    }
}
