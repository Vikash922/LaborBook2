.class final Lcom/google/android/gms/internal/measurement/zzmv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@22.1.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzmt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzms;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzms;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzmv;->zza:Lcom/google/android/gms/internal/measurement/zzmt;

    return-void
.end method

.method static zza()Lcom/google/android/gms/internal/measurement/zzmt;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzmv;->zza:Lcom/google/android/gms/internal/measurement/zzmt;

    return-object v0
.end method
