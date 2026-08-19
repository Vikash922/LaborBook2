package com.inmobi.media;

import android.telephony.CellIdentityCdma;
import android.telephony.CellIdentityGsm;
import android.telephony.CellIdentityWcdma;
import android.telephony.CellInfo;
import android.telephony.CellInfoCdma;
import android.telephony.CellInfoGsm;
import android.telephony.CellInfoWcdma;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.inmobi.media.e2 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3129e2 {

    /* JADX INFO: renamed from: a */
    public String f2039a;

    /* JADX INFO: renamed from: b */
    public int f2040b;

    /* JADX INFO: renamed from: c */
    public int f2041c;

    public C3129e2() {
    }

    /* JADX INFO: renamed from: a */
    public static String m2090a(String mcc, String mnc, int i, int i2, int i3, int i4) {
        Intrinsics.checkNotNullParameter(mcc, "mcc");
        Intrinsics.checkNotNullParameter(mnc, "mnc");
        return mcc + '#' + mnc + '#' + i + '#' + i2 + '#' + (i3 == -1 ? "" : Integer.valueOf(i3)) + '#' + (i4 != Integer.MAX_VALUE ? Integer.valueOf(i4) : "");
    }

    public C3129e2(CellInfo cellInfo, String mcc, String mnc, int i) {
        Intrinsics.checkNotNullParameter(mcc, "mcc");
        Intrinsics.checkNotNullParameter(mnc, "mnc");
        if (cellInfo instanceof CellInfoGsm) {
            this.f2041c = i;
            CellInfoGsm cellInfoGsm = (CellInfoGsm) cellInfo;
            this.f2040b = cellInfoGsm.getCellSignalStrength().getDbm();
            CellIdentityGsm cellIdentity = cellInfoGsm.getCellIdentity();
            Intrinsics.checkNotNullExpressionValue(cellIdentity, "getCellIdentity(...)");
            this.f2039a = m2090a(mcc, mnc, cellIdentity.getLac(), cellIdentity.getCid(), -1, Integer.MAX_VALUE);
            return;
        }
        if (!(cellInfo instanceof CellInfoCdma)) {
            if (cellInfo instanceof CellInfoWcdma) {
                this.f2041c = i;
                CellInfoWcdma cellInfoWcdma = (CellInfoWcdma) cellInfo;
                this.f2040b = cellInfoWcdma.getCellSignalStrength().getDbm();
                CellIdentityWcdma cellIdentity2 = cellInfoWcdma.getCellIdentity();
                Intrinsics.checkNotNullExpressionValue(cellIdentity2, "getCellIdentity(...)");
                this.f2039a = m2090a(mcc, mnc, cellIdentity2.getLac(), cellIdentity2.getCid(), cellIdentity2.getPsc(), Integer.MAX_VALUE);
                return;
            }
            return;
        }
        this.f2041c = i;
        CellInfoCdma cellInfoCdma = (CellInfoCdma) cellInfo;
        this.f2040b = cellInfoCdma.getCellSignalStrength().getDbm();
        CellIdentityCdma cellIdentity3 = cellInfoCdma.getCellIdentity();
        Intrinsics.checkNotNullExpressionValue(cellIdentity3, "getCellIdentity(...)");
        int systemId = cellIdentity3.getSystemId();
        int networkId = cellIdentity3.getNetworkId();
        int basestationId = cellIdentity3.getBasestationId();
        Intrinsics.checkNotNullParameter(mcc, "mcc");
        this.f2039a = mcc + '#' + systemId + '#' + networkId + '#' + basestationId;
    }

    /* JADX INFO: renamed from: a */
    public final JSONObject m2091a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("id", this.f2039a);
            int i = this.f2040b;
            if (i != Integer.MAX_VALUE) {
                jSONObject.put("ss", i);
            }
            jSONObject.put("nt", this.f2041c);
        } catch (JSONException unused) {
        }
        return jSONObject;
    }
}
