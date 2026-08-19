.class public final Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$Companion;
.super Ljava/lang/Object;
.source "LanguageBottomSheetFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0007\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$Companion;",
        "",
        "<init>",
        "()V",
        "newInstance",
        "Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;",
        "base_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance()Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 41
    new-instance v0, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;

    invoke-direct {v0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;-><init>()V

    .line 42
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method
