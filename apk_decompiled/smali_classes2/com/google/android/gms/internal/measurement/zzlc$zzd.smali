.class public abstract Lcom/google/android/gms/internal/measurement/zzlc$zzd;
.super Lcom/google/android/gms/internal/measurement/zzlc;
.source "com.google.android.gms:play-services-measurement-base@@22.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzmn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzlc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/measurement/zzlc$zzd<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/measurement/zzlc<",
        "TMessageType;TBuilderType;>;",
        "Lcom/google/android/gms/internal/measurement/zzmn;"
    }
.end annotation


# instance fields
.field protected zzc:Lcom/google/android/gms/internal/measurement/zzkv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzkv<",
            "Lcom/google/android/gms/internal/measurement/zzlc$zzc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzlc;-><init>()V

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkv;->zzb()Lcom/google/android/gms/internal/measurement/zzkv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlc$zzd;->zzc:Lcom/google/android/gms/internal/measurement/zzkv;

    return-void
.end method


# virtual methods
.method final zza()Lcom/google/android/gms/internal/measurement/zzkv;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/measurement/zzkv<",
            "Lcom/google/android/gms/internal/measurement/zzlc$zzc;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlc$zzd;->zzc:Lcom/google/android/gms/internal/measurement/zzkv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkv;->zzf()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlc$zzd;->zzc:Lcom/google/android/gms/internal/measurement/zzkv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkv;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzkv;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlc$zzd;->zzc:Lcom/google/android/gms/internal/measurement/zzkv;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlc$zzd;->zzc:Lcom/google/android/gms/internal/measurement/zzkv;

    return-object v0
.end method
