.class public Lcom/itextpdf/svg/css/impl/SvgAttributeInheritance;
.super Ljava/lang/Object;
.source "SvgAttributeInheritance.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/css/resolve/IStyleInheritance;


# static fields
.field private static final inheritableProperties:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 63
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "clip-rule"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "fill"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "fill-rule"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "stroke"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "stroke-width"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "text-anchor"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/svg/css/impl/SvgAttributeInheritance;->inheritableProperties:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isInheritable(Ljava/lang/String;)Z
    .locals 1

    .line 87
    sget-object v0, Lcom/itextpdf/svg/css/impl/SvgAttributeInheritance;->inheritableProperties:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
