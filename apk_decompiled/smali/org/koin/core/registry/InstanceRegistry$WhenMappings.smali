.class public final synthetic Lorg/koin/core/registry/InstanceRegistry$WhenMappings;
.super Ljava/lang/Object;
.source "InstanceRegistry.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/koin/core/registry/InstanceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lorg/koin/core/definition/Kind;->values()[Lorg/koin/core/definition/Kind;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lorg/koin/core/definition/Kind;->Single:Lorg/koin/core/definition/Kind;

    invoke-virtual {v1}, Lorg/koin/core/definition/Kind;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    invoke-virtual {v1}, Lorg/koin/core/definition/Kind;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sput-object v0, Lorg/koin/core/registry/InstanceRegistry$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
