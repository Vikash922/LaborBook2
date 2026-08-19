package com.inmobi.media;

import android.content.Context;
import android.location.Criteria;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Build;
import android.os.Bundle;
import android.os.HandlerThread;
import android.provider.Settings;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.location.FusedLocationProviderClient;
import com.google.android.gms.location.LocationServices;
import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: renamed from: com.inmobi.media.y6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0580y6 implements LocationListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C0580y6 f533a = new C0580y6();
    public static final LocationManager b;
    public static final HandlerThread c;
    public static GoogleApiClient d;
    public static final String e;
    public static boolean f;

    static {
        HandlerThread handlerThread = new HandlerThread("LThread");
        c = handlerThread;
        e = "y6";
        AbstractC0467q4.a(handlerThread, "LThread");
        Context contextD = Kb.d();
        if (contextD != null) {
            Object systemService = contextD.getSystemService(FirebaseAnalytics.Param.LOCATION);
            b = systemService instanceof LocationManager ? (LocationManager) systemService : null;
        }
    }

    public static boolean c() {
        try {
            if (!P9.a(Kb.d(), "android.permission.ACCESS_FINE_LOCATION")) {
                if (!P9.a(Kb.d(), "android.permission.ACCESS_COARSE_LOCATION")) {
                    return false;
                }
            }
            return true;
        } catch (Exception unused) {
            String TAG = e;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            return false;
        }
    }

    public static boolean e() {
        int i;
        Context contextD = Kb.d();
        if (contextD == null) {
            return false;
        }
        if (Build.VERSION.SDK_INT >= 28) {
            LocationManager locationManager = b;
            return locationManager != null && locationManager.isLocationEnabled();
        }
        try {
            i = Settings.Secure.getInt(contextD.getContentResolver(), "location_mode");
        } catch (Settings.SettingNotFoundException unused) {
            i = 0;
        }
        return i != 0;
    }

    public final void a() {
        LocationManager locationManager = b;
        if (locationManager != null) {
            Criteria criteria = new Criteria();
            criteria.setBearingAccuracy(2);
            criteria.setPowerRequirement(2);
            criteria.setCostAllowed(false);
            String bestProvider = locationManager.getBestProvider(criteria, true);
            if (bestProvider != null) {
                Intrinsics.checkNotNullExpressionValue(e, "TAG");
                locationManager.requestSingleUpdate(bestProvider, this, c.getLooper());
            } else {
                String TAG = e;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            }
        }
        Unit unit = Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0087 A[PHI: r1
      0x0087: PHI (r1v4 android.location.Location) = (r1v3 android.location.Location), (r1v21 android.location.Location), (r1v21 android.location.Location) binds: [B:26:0x0080, B:19:0x0068, B:21:0x0074] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0142 A[Catch: all -> 0x0188, TryCatch #2 {, blocks: (B:3:0x0001, B:5:0x0011, B:74:0x0142, B:76:0x014e, B:77:0x0153, B:79:0x0160, B:80:0x0168, B:82:0x016e, B:78:0x0158, B:7:0x002a, B:9:0x0030, B:11:0x0036, B:13:0x003a, B:18:0x0066, B:20:0x006a, B:22:0x0076, B:30:0x008c, B:33:0x0098, B:35:0x00a4, B:37:0x00ab, B:38:0x00ba, B:51:0x00e2, B:53:0x00f2, B:54:0x0100, B:70:0x0124, B:72:0x0133, B:26:0x0080, B:16:0x005b), top: B:95:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0158 A[Catch: all -> 0x0188, TryCatch #2 {, blocks: (B:3:0x0001, B:5:0x0011, B:74:0x0142, B:76:0x014e, B:77:0x0153, B:79:0x0160, B:80:0x0168, B:82:0x016e, B:78:0x0158, B:7:0x002a, B:9:0x0030, B:11:0x0036, B:13:0x003a, B:18:0x0066, B:20:0x006a, B:22:0x0076, B:30:0x008c, B:33:0x0098, B:35:0x00a4, B:37:0x00ab, B:38:0x00ba, B:51:0x00e2, B:53:0x00f2, B:54:0x0100, B:70:0x0124, B:72:0x0133, B:26:0x0080, B:16:0x005b), top: B:95:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x016e A[Catch: all -> 0x0188, LOOP:0: B:80:0x0168->B:82:0x016e, LOOP_END, TRY_LEAVE, TryCatch #2 {, blocks: (B:3:0x0001, B:5:0x0011, B:74:0x0142, B:76:0x014e, B:77:0x0153, B:79:0x0160, B:80:0x0168, B:82:0x016e, B:78:0x0158, B:7:0x002a, B:9:0x0030, B:11:0x0036, B:13:0x003a, B:18:0x0066, B:20:0x006a, B:22:0x0076, B:30:0x008c, B:33:0x0098, B:35:0x00a4, B:37:0x00ab, B:38:0x00ba, B:51:0x00e2, B:53:0x00f2, B:54:0x0100, B:70:0x0124, B:72:0x0133, B:26:0x0080, B:16:0x005b), top: B:95:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x002a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized java.util.HashMap b() {
        /*
            Method dump skipped, instruction units count: 395
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C0580y6.b():java.util.HashMap");
    }

    public final synchronized void d() {
        try {
            if (c() && e()) {
                a();
                try {
                    Reflection.getOrCreateKotlinClass(GoogleApiClient.class).getSimpleName();
                    Reflection.getOrCreateKotlinClass(FusedLocationProviderClient.class).getSimpleName();
                    Reflection.getOrCreateKotlinClass(LocationServices.class).getSimpleName();
                    a(Kb.d());
                } catch (NoClassDefFoundError unused) {
                }
            }
        } catch (Exception unused2) {
            String TAG = e;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
        }
    }

    @Override // android.location.LocationListener
    public final void onLocationChanged(Location location) {
        LocationManager locationManager;
        Intrinsics.checkNotNullParameter(location, "location");
        try {
            String TAG = e;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            location.getTime();
            location.getLatitude();
            location.getLongitude();
            location.getAccuracy();
            if (!c() || (locationManager = b) == null) {
                return;
            }
            locationManager.removeUpdates(this);
        } catch (Exception e2) {
            C0551w5 c0551w5 = C0551w5.f513a;
            C0551w5.d.a(AbstractC0251c5.a(e2, "event"));
        }
    }

    @Override // android.location.LocationListener
    public final void onProviderDisabled(String provider) {
        Intrinsics.checkNotNullParameter(provider, "provider");
    }

    @Override // android.location.LocationListener
    public final void onProviderEnabled(String provider) {
        Intrinsics.checkNotNullParameter(provider, "provider");
    }

    @Override // android.location.LocationListener
    public final void onStatusChanged(String str, int i, Bundle bundle) {
    }

    public static void a(Context context) {
        try {
            GoogleApiClient googleApiClient = d;
            if (googleApiClient == null) {
                String TAG = e;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                Intrinsics.checkNotNull(context);
                GoogleApiClient googleApiClientBuild = new GoogleApiClient.Builder(context).addConnectionCallbacks(new C0566x6()).addOnConnectionFailedListener(new GoogleApiClient.OnConnectionFailedListener() { // from class: com.inmobi.media.y6$$ExternalSyntheticLambda0
                    @Override // com.google.android.gms.common.api.internal.OnConnectionFailedListener
                    public final void onConnectionFailed(ConnectionResult connectionResult) {
                        C0580y6.a(connectionResult);
                    }
                }).addApi(LocationServices.API).build();
                d = googleApiClientBuild;
                if (googleApiClientBuild != null) {
                    googleApiClientBuild.connect();
                }
            } else {
                googleApiClient.connect();
            }
        } catch (Exception unused) {
            String TAG2 = e;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
        }
    }

    public static final void a(ConnectionResult it) {
        Intrinsics.checkNotNullParameter(it, "it");
        f = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0056 A[PHI: r1
      0x0056: PHI (r1v4 android.location.Location) = 
      (r1v3 android.location.Location)
      (r1v3 android.location.Location)
      (r1v3 android.location.Location)
      (r1v6 android.location.Location)
     binds: [B:30:0x0056, B:17:0x0047, B:19:0x004d, B:21:0x0053] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.location.Location a(int r5, int r6) {
        /*
            android.location.Criteria r0 = new android.location.Criteria
            r0.<init>()
            r0.setAccuracy(r5)
            r0.setPowerRequirement(r6)
            r6 = 0
            r0.setCostAllowed(r6)
            android.location.LocationManager r6 = com.inmobi.media.C0580y6.b
            r1 = 0
            if (r6 == 0) goto L5c
            r2 = 1
            java.lang.String r0 = r6.getBestProvider(r0, r2)
            if (r0 == 0) goto L5c
            android.location.Location r6 = r6.getLastKnownLocation(r0)     // Catch: java.lang.Exception -> L20
            goto L21
        L20:
            r6 = r1
        L21:
            if (r6 != 0) goto L5b
            if (r5 == r2) goto L5b
            android.location.LocationManager r5 = com.inmobi.media.C0580y6.b
            if (r5 == 0) goto L5c
            kotlin.jvm.internal.Intrinsics.checkNotNull(r5)
            java.util.List r5 = r5.getProviders(r2)
            java.lang.String r6 = "getProviders(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r6)
            int r6 = r5.size()
            int r6 = r6 + (-1)
            if (r6 < 0) goto L5c
        L3d:
            int r0 = r6 + (-1)
            java.lang.Object r6 = r5.get(r6)
            java.lang.String r6 = (java.lang.String) r6
            android.location.LocationManager r3 = com.inmobi.media.C0580y6.b     // Catch: java.lang.Exception -> L56
            if (r3 == 0) goto L56
            boolean r4 = r3.isProviderEnabled(r6)     // Catch: java.lang.Exception -> L56
            if (r4 != r2) goto L56
            android.location.Location r1 = r3.getLastKnownLocation(r6)     // Catch: java.lang.SecurityException -> L53 java.lang.Exception -> L56
        L53:
            if (r1 == 0) goto L56
            goto L5c
        L56:
            if (r0 >= 0) goto L59
            goto L5c
        L59:
            r6 = r0
            goto L3d
        L5b:
            r1 = r6
        L5c:
            java.lang.String r5 = com.inmobi.media.C0580y6.e
            java.lang.String r6 = "TAG"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r6)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C0580y6.a(int, int):android.location.Location");
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0081  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.HashMap a(android.location.Location r7, boolean r8, android.location.Location r9) {
        /*
            Method dump skipped, instruction units count: 238
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C0580y6.a(android.location.Location, boolean, android.location.Location):java.util.HashMap");
    }
}
