package com.mixpanel.android.util;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.InetAddress;

/* JADX INFO: loaded from: classes.dex */
public class HttpService implements RemoteService {
    private static final String LOGTAG = "MixpanelAPI.Message";
    private static final int MAX_UNAVAILABLE_HTTP_RESPONSE_CODE = 599;
    private static final int MIN_UNAVAILABLE_HTTP_RESPONSE_CODE = 500;
    private static boolean sIsMixpanelBlocked;

    @Override // com.mixpanel.android.util.RemoteService
    public void checkIsMixpanelBlocked() {
        new Thread(new Runnable() { // from class: com.mixpanel.android.util.HttpService.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    InetAddress byName = InetAddress.getByName("api.mixpanel.com");
                    boolean unused = HttpService.sIsMixpanelBlocked = byName.isLoopbackAddress() || byName.isAnyLocalAddress();
                    if (HttpService.sIsMixpanelBlocked) {
                        MPLog.m2686v(HttpService.LOGTAG, "AdBlocker is enabled. Won't be able to use Mixpanel services.");
                    }
                } catch (Exception unused2) {
                }
            }
        }).start();
    }

    @Override // com.mixpanel.android.util.RemoteService
    public boolean isOnline(Context context, OfflineMode offlineMode) {
        if (sIsMixpanelBlocked || onOfflineMode(offlineMode)) {
            return false;
        }
        boolean z = true;
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo == null) {
                MPLog.m2686v(LOGTAG, "A default network has not been set so we cannot be certain whether we are offline");
            } else {
                boolean zIsConnectedOrConnecting = activeNetworkInfo.isConnectedOrConnecting();
                MPLog.m2686v(LOGTAG, "ConnectivityManager says we " + (zIsConnectedOrConnecting ? "are" : "are not") + " online");
                z = zIsConnectedOrConnecting;
            }
        } catch (SecurityException unused) {
            MPLog.m2686v(LOGTAG, "Don't have permission to check connectivity, will assume we are online");
        }
        return z;
    }

    private boolean onOfflineMode(OfflineMode offlineMode) {
        if (offlineMode == null) {
            return false;
        }
        try {
            return offlineMode.isOffline();
        } catch (Exception e) {
            MPLog.m2687v(LOGTAG, "Client State should not throw exception, will assume is not on offline mode", e);
            return false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:100:0x0127 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0122 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:106:0x013f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:108:0x011d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:110:0x013a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:125:0x012c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0018 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:131:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0047 A[Catch: all -> 0x00d8, IOException -> 0x00db, EOFException -> 0x00e1, TryCatch #15 {EOFException -> 0x00e1, IOException -> 0x00db, all -> 0x00d8, blocks: (B:8:0x0030, B:10:0x0034, B:11:0x003a, B:13:0x0047, B:14:0x0054, B:16:0x005a, B:17:0x0072, B:32:0x00bc), top: B:118:0x0030 }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00bc A[Catch: all -> 0x00d8, IOException -> 0x00db, EOFException -> 0x00e1, TRY_ENTER, TRY_LEAVE, TryCatch #15 {EOFException -> 0x00e1, IOException -> 0x00db, all -> 0x00d8, blocks: (B:8:0x0030, B:10:0x0034, B:11:0x003a, B:13:0x0047, B:14:0x0054, B:16:0x005a, B:17:0x0072, B:32:0x00bc), top: B:118:0x0030 }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0135 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x00ee A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.io.BufferedOutputStream] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v10, types: [java.io.BufferedOutputStream] */
    /* JADX WARN: Type inference failed for: r9v15 */
    /* JADX WARN: Type inference failed for: r9v16 */
    /* JADX WARN: Type inference failed for: r9v17 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v4, types: [java.io.BufferedOutputStream] */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* JADX WARN: Type inference failed for: r9v8 */
    /* JADX WARN: Type inference failed for: r9v9 */
    @Override // com.mixpanel.android.util.RemoteService
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public byte[] performRequest(java.lang.String r12, java.util.Map<java.lang.String, java.lang.Object> r13, javax.net.ssl.SSLSocketFactory r14) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 336
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mixpanel.android.util.HttpService.performRequest(java.lang.String, java.util.Map, javax.net.ssl.SSLSocketFactory):byte[]");
    }

    private static byte[] slurp(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[8192];
        while (true) {
            int i = inputStream.read(bArr, 0, 8192);
            if (i != -1) {
                byteArrayOutputStream.write(bArr, 0, i);
            } else {
                byteArrayOutputStream.flush();
                return byteArrayOutputStream.toByteArray();
            }
        }
    }
}
