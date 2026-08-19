.class public final enum Lcom/google/android/gms/internal/measurement/zzco;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-measurement-impl@@22.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/measurement/zzco;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/measurement/zzco;

.field private static final enum zzb:Lcom/google/android/gms/internal/measurement/zzco;

.field private static final enum zzc:Lcom/google/android/gms/internal/measurement/zzco;

.field private static final synthetic zzd:[Lcom/google/android/gms/internal/measurement/zzco;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzco;

    const-string v1, "READ_AND_WRITE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzco;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzco;->zza:Lcom/google/android/gms/internal/measurement/zzco;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzco;

    const-string v2, "READ_ONLY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzco;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzco;->zzb:Lcom/google/android/gms/internal/measurement/zzco;

    .line 3
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzco;

    const-string v3, "WRITE_ONLY"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzco;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/android/gms/internal/measurement/zzco;->zzc:Lcom/google/android/gms/internal/measurement/zzco;

    .line 4
    filled-new-array {v0, v1, v2}, [Lcom/google/android/gms/internal/measurement/zzco;

    move-result-object v0

    .line 5
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzco;->zzd:[Lcom/google/android/gms/internal/measurement/zzco;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/measurement/zzco;
    .locals 1

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzco;->zzd:[Lcom/google/android/gms/internal/measurement/zzco;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/measurement/zzco;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/measurement/zzco;

    return-object v0
.end method
