.class public final Lcom/itextpdf/forms/fields/FormsMetaInfoStaticContainer;
.super Ljava/lang/Object;
.source "FormsMetaInfoStaticContainer.java"


# static fields
.field private static metaInfoForLayout:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/itextpdf/layout/renderer/MetaInfoContainer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/itextpdf/forms/fields/FormsMetaInfoStaticContainer;->metaInfoForLayout:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getMetaInfoForLayout()Lcom/itextpdf/layout/renderer/MetaInfoContainer;
    .locals 1

    .line 67
    sget-object v0, Lcom/itextpdf/forms/fields/FormsMetaInfoStaticContainer;->metaInfoForLayout:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/renderer/MetaInfoContainer;

    return-object v0
.end method

.method public static useMetaInfoDuringTheAction(Lcom/itextpdf/layout/renderer/MetaInfoContainer;Lcom/itextpdf/commons/utils/Action;)V
    .locals 2

    const/4 v0, 0x0

    .line 51
    :try_start_0
    sget-object v1, Lcom/itextpdf/forms/fields/FormsMetaInfoStaticContainer;->metaInfoForLayout:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 52
    invoke-interface {p1}, Lcom/itextpdf/commons/utils/Action;->execute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    sget-object p0, Lcom/itextpdf/forms/fields/FormsMetaInfoStaticContainer;->metaInfoForLayout:Ljava/lang/ThreadLocal;

    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/itextpdf/forms/fields/FormsMetaInfoStaticContainer;->metaInfoForLayout:Ljava/lang/ThreadLocal;

    invoke-virtual {p1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 55
    throw p0
.end method
