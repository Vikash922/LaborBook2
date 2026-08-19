package com.google.android.gms.internal.ads;

import androidx.core.view.PointerIconCompat;
import okhttp3.internal.p027ws.WebSocketProtocol;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzhbe implements zzgyb {
    static final zzgyb zza = new zzhbe();

    private zzhbe() {
    }

    @Override // com.google.android.gms.internal.ads.zzgyb
    public final boolean zza(int i) {
        if (i != 0 && i != 1 && i != 2 && i != 1999) {
            switch (i) {
                case 1000:
                case 1001:
                case 1002:
                case PointerIconCompat.TYPE_HELP /* 1003 */:
                case PointerIconCompat.TYPE_WAIT /* 1004 */:
                case WebSocketProtocol.CLOSE_NO_STATUS_CODE /* 1005 */:
                case PointerIconCompat.TYPE_CELL /* 1006 */:
                case PointerIconCompat.TYPE_CROSSHAIR /* 1007 */:
                case PointerIconCompat.TYPE_TEXT /* 1008 */:
                case PointerIconCompat.TYPE_VERTICAL_TEXT /* 1009 */:
                case PointerIconCompat.TYPE_ALIAS /* 1010 */:
                    break;
                default:
                    return false;
            }
        }
        return true;
    }
}
