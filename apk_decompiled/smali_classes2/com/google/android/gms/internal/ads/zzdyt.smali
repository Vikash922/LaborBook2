.class public final Lcom/google/android/gms/internal/ads/zzdyt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzbnt;


# instance fields
.field public final zzb:Lcom/google/android/gms/internal/ads/zzdyx;

.field public final zzc:Lorg/json/JSONObject;

.field public final zzd:Lcom/google/android/gms/internal/ads/zzbva;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdys;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdys;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdyt;->zza:Lcom/google/android/gms/internal/ads/zzbnt;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdyx;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzbva;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyt;->zzb:Lcom/google/android/gms/internal/ads/zzdyx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdyt;->zzc:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdyt;->zzd:Lcom/google/android/gms/internal/ads/zzbva;

    return-void
.end method
