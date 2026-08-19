.class public abstract Lcom/google/android/gms/internal/ads/zzgxr;
.super Lcom/google/android/gms/internal/ads/zzgxv;
.source "com.google.android.gms:play-services-ads-api@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgzh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/ads/zzgxr<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzgxv<",
        "TMessageType;TBuilderType;>;",
        "Lcom/google/android/gms/internal/ads/zzgzh;"
    }
.end annotation


# instance fields
.field protected final zza:Lcom/google/android/gms/internal/ads/zzgxk;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgxv;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgxk;->zze()Lcom/google/android/gms/internal/ads/zzgxk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgxr;->zza:Lcom/google/android/gms/internal/ads/zzgxk;

    return-void
.end method
