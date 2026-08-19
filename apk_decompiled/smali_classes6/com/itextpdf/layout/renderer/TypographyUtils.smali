.class public final Lcom/itextpdf/layout/renderer/TypographyUtils;
.super Ljava/lang/Object;
.source "TypographyUtils.java"


# static fields
.field private static final TYPOGRAPHY_APPLIER:Ljava/lang/String; = "shaping.TypographyApplier"

.field private static final TYPOGRAPHY_APPLIER_INITIALIZE:Ljava/lang/String; = "registerForLayout"

.field private static final TYPOGRAPHY_PACKAGE:Ljava/lang/String; = "com.itextpdf.typography."

.field private static applierInstance:Lcom/itextpdf/layout/renderer/typography/AbstractTypographyApplier;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 73
    :try_start_0
    const-string v0, "com.itextpdf.typography.shaping.TypographyApplier"

    invoke-static {v0}, Lcom/itextpdf/layout/renderer/TypographyUtils;->getTypographyClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    const-string v1, "registerForLayout"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :catch_0
    :cond_0
    sget-object v0, Lcom/itextpdf/layout/renderer/TypographyUtils;->applierInstance:Lcom/itextpdf/layout/renderer/typography/AbstractTypographyApplier;

    if-nez v0, :cond_1

    .line 84
    new-instance v0, Lcom/itextpdf/layout/renderer/typography/DefaultTypographyApplier;

    invoke-direct {v0}, Lcom/itextpdf/layout/renderer/typography/DefaultTypographyApplier;-><init>()V

    invoke-static {v0}, Lcom/itextpdf/layout/renderer/TypographyUtils;->setTypographyApplierInstance(Lcom/itextpdf/layout/renderer/typography/AbstractTypographyApplier;)V

    :cond_1
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static applyKerning(Lcom/itextpdf/io/font/FontProgram;Lcom/itextpdf/io/font/otf/GlyphLine;Lcom/itextpdf/commons/actions/sequence/SequenceId;Lcom/itextpdf/commons/actions/contexts/IMetaInfo;)V
    .locals 1

    .line 127
    sget-object v0, Lcom/itextpdf/layout/renderer/TypographyUtils;->applierInstance:Lcom/itextpdf/layout/renderer/typography/AbstractTypographyApplier;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/itextpdf/layout/renderer/typography/AbstractTypographyApplier;->applyKerning(Lcom/itextpdf/io/font/FontProgram;Lcom/itextpdf/io/font/otf/GlyphLine;Lcom/itextpdf/commons/actions/sequence/SequenceId;Lcom/itextpdf/commons/actions/contexts/IMetaInfo;)Z

    return-void
.end method

.method static applyOtfScript(Lcom/itextpdf/io/font/FontProgram;Lcom/itextpdf/io/font/otf/GlyphLine;Ljava/lang/Character$UnicodeScript;Ljava/lang/Object;Lcom/itextpdf/commons/actions/sequence/SequenceId;Lcom/itextpdf/commons/actions/contexts/IMetaInfo;)V
    .locals 7

    .line 122
    sget-object v0, Lcom/itextpdf/layout/renderer/TypographyUtils;->applierInstance:Lcom/itextpdf/layout/renderer/typography/AbstractTypographyApplier;

    move-object v1, p0

    check-cast v1, Lcom/itextpdf/io/font/TrueTypeFont;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/layout/renderer/typography/AbstractTypographyApplier;->applyOtfScript(Lcom/itextpdf/io/font/TrueTypeFont;Lcom/itextpdf/io/font/otf/GlyphLine;Ljava/lang/Character$UnicodeScript;Ljava/lang/Object;Lcom/itextpdf/commons/actions/sequence/SequenceId;Lcom/itextpdf/commons/actions/contexts/IMetaInfo;)Z

    return-void
.end method

.method static getBidiLevels(Lcom/itextpdf/layout/properties/BaseDirection;[ILcom/itextpdf/commons/actions/sequence/SequenceId;Lcom/itextpdf/commons/actions/contexts/IMetaInfo;)[B
    .locals 1

    .line 132
    sget-object v0, Lcom/itextpdf/layout/renderer/TypographyUtils;->applierInstance:Lcom/itextpdf/layout/renderer/typography/AbstractTypographyApplier;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/itextpdf/layout/renderer/typography/AbstractTypographyApplier;->getBidiLevels(Lcom/itextpdf/layout/properties/BaseDirection;[ILcom/itextpdf/commons/actions/sequence/SequenceId;Lcom/itextpdf/commons/actions/contexts/IMetaInfo;)[B

    move-result-object p0

    return-object p0
.end method

.method static getPossibleBreaks(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 140
    sget-object v0, Lcom/itextpdf/layout/renderer/TypographyUtils;->applierInstance:Lcom/itextpdf/layout/renderer/typography/AbstractTypographyApplier;

    invoke-virtual {v0, p0}, Lcom/itextpdf/layout/renderer/typography/AbstractTypographyApplier;->getPossibleBreaks(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getSupportedScripts()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Character$UnicodeScript;",
            ">;"
        }
    .end annotation

    .line 109
    sget-object v0, Lcom/itextpdf/layout/renderer/TypographyUtils;->applierInstance:Lcom/itextpdf/layout/renderer/typography/AbstractTypographyApplier;

    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/typography/AbstractTypographyApplier;->getSupportedScripts()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static getSupportedScripts(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/Character$UnicodeScript;",
            ">;"
        }
    .end annotation

    .line 113
    sget-object v0, Lcom/itextpdf/layout/renderer/TypographyUtils;->applierInstance:Lcom/itextpdf/layout/renderer/typography/AbstractTypographyApplier;

    invoke-virtual {v0, p0}, Lcom/itextpdf/layout/renderer/typography/AbstractTypographyApplier;->getSupportedScripts(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method private static getTypographyClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 144
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static isPdfCalligraphAvailable()Z
    .locals 1

    .line 105
    sget-object v0, Lcom/itextpdf/layout/renderer/TypographyUtils;->applierInstance:Lcom/itextpdf/layout/renderer/typography/AbstractTypographyApplier;

    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/typography/AbstractTypographyApplier;->isPdfCalligraphInstance()Z

    move-result v0

    return v0
.end method

.method public static loadShippedFonts()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    sget-object v0, Lcom/itextpdf/layout/renderer/TypographyUtils;->applierInstance:Lcom/itextpdf/layout/renderer/typography/AbstractTypographyApplier;

    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/typography/AbstractTypographyApplier;->loadShippedFonts()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static reorderLine(Ljava/util/List;[B[B)[I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/LineRenderer$RendererGlyph;",
            ">;[B[B)[I"
        }
    .end annotation

    .line 136
    sget-object v0, Lcom/itextpdf/layout/renderer/TypographyUtils;->applierInstance:Lcom/itextpdf/layout/renderer/typography/AbstractTypographyApplier;

    invoke-virtual {v0, p0, p1, p2}, Lcom/itextpdf/layout/renderer/typography/AbstractTypographyApplier;->reorderLine(Ljava/util/List;[B[B)[I

    move-result-object p0

    return-object p0
.end method

.method public static setTypographyApplierInstance(Lcom/itextpdf/layout/renderer/typography/AbstractTypographyApplier;)V
    .locals 0

    .line 97
    sput-object p0, Lcom/itextpdf/layout/renderer/TypographyUtils;->applierInstance:Lcom/itextpdf/layout/renderer/typography/AbstractTypographyApplier;

    return-void
.end method
