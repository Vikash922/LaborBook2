package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
public class zzlk extends IOException {
    static zzln zza() {
        return new zzln("Protocol message tag had invalid wire type.");
    }

    static zzlk zzb() {
        return new zzlk("Protocol message end-group tag did not match expected tag.");
    }

    static zzlk zzc() {
        return new zzlk("Protocol message contained an invalid tag (zero).");
    }

    static zzlk zzd() {
        return new zzlk("Protocol message had invalid UTF-8.");
    }

    static zzlk zze() {
        return new zzlk("CodedInputStream encountered a malformed varint.");
    }

    static zzlk zzf() {
        return new zzlk("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    static zzlk zzg() {
        return new zzlk("Failed to parse the message.");
    }

    static zzlk zzh() {
        return new zzlk("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
    }

    static zzlk zzi() {
        return new zzlk("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    public zzlk(String str) {
        super(str);
    }
}
