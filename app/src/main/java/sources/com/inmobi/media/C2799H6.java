package com.inmobi.media;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.inmobi.media.H6 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2799H6 extends C3241l9 {

    /* JADX INFO: renamed from: y */
    public final C3448z6 f1073y;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2799H6(String url, C3448z6 data) {
        super("POST", url, (C2850Kc) null, true, (InterfaceC3147f5) null, "application/json", 64);
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(data, "data");
        this.f1073y = data;
    }

    /* JADX INFO: renamed from: a */
    public static String m1149a(String str) {
        BufferedReader bufferedReader;
        File file = new File(str);
        StringBuilder sb = new StringBuilder();
        try {
            bufferedReader = new BufferedReader(new FileReader(file));
        } catch (IOException e) {
            e.printStackTrace();
        }
        while (true) {
            String line = bufferedReader.readLine();
            if (line == null) {
                break;
            }
            sb.append(line).append('\n');
            String string = sb.toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            return string;
        }
        bufferedReader.close();
        String string2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(string2, "toString(...)");
        return string2;
    }

    @Override // com.inmobi.media.C3241l9
    /* JADX INFO: renamed from: f */
    public final void mo1146f() {
        super.mo1146f();
        this.f2293t = false;
        this.f2294u = false;
        this.f2297x = false;
        try {
            this.f2285l = new JSONObject(m1149a(this.f1073y.f2791a));
        } catch (FileNotFoundException unused) {
            String str = "File - " + this.f1073y.f2791a + " not found";
            C3256m9 response = new C3256m9();
            response.f2333c = new C3196i9(EnumC3101c4.f1936s, str);
            Intrinsics.checkNotNullParameter(response, "response");
            this.f2287n = response;
        } catch (IOException unused2) {
            String str2 = "IOException while reading file - " + this.f1073y.f2791a;
            C3256m9 response2 = new C3256m9();
            response2.f2333c = new C3196i9(EnumC3101c4.f1936s, str2);
            Intrinsics.checkNotNullParameter(response2, "response");
            this.f2287n = response2;
        } catch (JSONException unused3) {
            String str3 = "JSON exception while parsing file - " + this.f1073y.f2791a;
            C3256m9 response3 = new C3256m9();
            response3.f2333c = new C3196i9(EnumC3101c4.f1936s, str3);
            Intrinsics.checkNotNullParameter(response3, "response");
            this.f2287n = response3;
        }
    }
}
