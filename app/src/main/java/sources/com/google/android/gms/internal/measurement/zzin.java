package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.StrictMode;
import android.util.Log;
import androidx.collection.SimpleArrayMap;
import com.google.common.base.Optional;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.HashMap;
import org.shadow.apache.commons.lang3.StringUtils;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzin {
    private static zzil zza(Context context, File file) {
        BufferedReader bufferedReader;
        SimpleArrayMap simpleArrayMap;
        HashMap map;
        try {
            bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file)));
            try {
                simpleArrayMap = new SimpleArrayMap();
                map = new HashMap();
            } finally {
            }
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
        while (true) {
            String line = bufferedReader.readLine();
            if (line == null) {
                Log.w("HermeticFileOverrides", "Parsed " + String.valueOf(file) + " for Android package " + context.getPackageName());
                zzig zzigVar = new zzig(simpleArrayMap);
                bufferedReader.close();
                return zzigVar;
            }
            String[] strArrSplit = line.split(StringUtils.SPACE, 3);
            if (strArrSplit.length != 3) {
                Log.e("HermeticFileOverrides", "Invalid: " + line);
            } else {
                String strZza = zza(strArrSplit[0]);
                String strDecode = Uri.decode(zza(strArrSplit[1]));
                String strDecode2 = (String) map.get(strArrSplit[2]);
                if (strDecode2 == null) {
                    String strZza2 = zza(strArrSplit[2]);
                    strDecode2 = Uri.decode(strZza2);
                    if (strDecode2.length() < 1024 || strDecode2 == strZza2) {
                        map.put(strZza2, strDecode2);
                    }
                }
                SimpleArrayMap simpleArrayMap2 = (SimpleArrayMap) simpleArrayMap.get(strZza);
                if (simpleArrayMap2 == null) {
                    simpleArrayMap2 = new SimpleArrayMap();
                    simpleArrayMap.put(strZza, simpleArrayMap2);
                }
                simpleArrayMap2.put(strDecode, strDecode2);
            }
            throw new RuntimeException(e);
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.1.0 */
    public static class zza {
        private static volatile Optional<zzil> zza;

        public static Optional<zzil> zza(Context context) {
            Optional<zzil> optionalZza;
            Optional<zzil> optional = zza;
            if (optional == null) {
                synchronized (zza.class) {
                    optional = zza;
                    if (optional == null) {
                        new zzin();
                        if (zzio.zza(Build.TYPE, Build.TAGS)) {
                            if (zzia.zza() && !context.isDeviceProtectedStorage()) {
                                context = context.createDeviceProtectedStorageContext();
                            }
                            optionalZza = zzin.zza(context);
                        } else {
                            optionalZza = Optional.absent();
                        }
                        zza = optionalZza;
                        optional = optionalZza;
                    }
                }
            }
            return optional;
        }

        private zza() {
        }
    }

    private static Optional<File> zzb(Context context) {
        try {
            File file = new File(context.getDir("phenotype_hermetic", 0), "overrides.txt");
            return file.exists() ? Optional.m259of(file) : Optional.absent();
        } catch (RuntimeException e) {
            Log.e("HermeticFileOverrides", "no data dir", e);
            return Optional.absent();
        }
    }

    static Optional<zzil> zza(Context context) {
        Optional<zzil> optionalAbsent;
        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            StrictMode.allowThreadDiskWrites();
            Optional<File> optionalZzb = zzb(context);
            if (optionalZzb.isPresent()) {
                optionalAbsent = Optional.m259of(zza(context, optionalZzb.get()));
            } else {
                optionalAbsent = Optional.absent();
            }
            return optionalAbsent;
        } finally {
            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
        }
    }

    private static final String zza(String str) {
        return new String(str);
    }
}
