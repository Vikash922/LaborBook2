.class Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererMapper;
.super Ljava/lang/Object;
.source "DefaultSvgNodeRendererMapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererMapper$ISvgNodeRendererCreator;
    }
.end annotation


# static fields
.field private static final CLIP_PATH_LC:Ljava/lang/String;

.field private static final LINEAR_GRADIENT_LC:Ljava/lang/String;

.field private static final TEXT_LEAF_LC:Ljava/lang/String;

.field private static final ignored:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererMapper$ISvgNodeRendererCreator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 81
    const-string v0, "clipPath"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererMapper;->CLIP_PATH_LC:Ljava/lang/String;

    .line 82
    const-string v2, "linearGradient"

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererMapper;->LINEAR_GRADIENT_LC:Ljava/lang/String;

    .line 83
    const-string v4, ":text-leaf"

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererMapper;->TEXT_LEAF_LC:Ljava/lang/String;

    .line 95
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 96
    new-instance v7, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererMapper$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererMapper$$ExternalSyntheticLambda0;-><init>()V

    const-string v8, "circle"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    new-instance v7, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererMapper$$ExternalSyntheticLambda2;

    invoke-direct {v7}, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererMapper$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    new-instance v0, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererMapper$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererMapper$$ExternalSyntheticLambda7;-><init>()V

    const-string v7, "defs"

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    new-instance v0, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererMapper$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererMapper$$ExternalSyntheticLambda8;-><init>()V

    const-string v7, "ellipse"

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    new-instance v0, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererMapper$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererMapper$$ExternalSyntheticLambda9;-><init>()V

    const-string v7, "g"

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    new-instance v0, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererMapper$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererMapper$$ExternalSyntheticLambda10;-><init>()V

    const-string v7, "image"

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    new-instance v0, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererMapper$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererMapper$$ExternalSyntheticLambda12;-><init>()V

    const-string v7, "line"

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    new-instance v0, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererMapper$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererMapper$$ExternalSyntheticLambda13;-><init>()V

    invoke-interface {v6, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    new-instance v0, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererMapper$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererMapper$$ExternalSyntheticLambda14;-><init>()V

    const-string v2, "marker"

    invoke-interface {v6, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    new-instance v0, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererMapper$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererMapper$$ExternalSyntheticLambda15;-><init>()V

    const-string v2, "pattern"

    invoke-interface {v6, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    new-instance v0, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererMapper$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererMapper$$ExternalSyntheticLambda11;-><init>()V

    const-string v2, "path"

    invoke-interface {v6, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    new-instance v0, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererMapper$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererMapper$$ExternalSyntheticLambda16;-><init>()V

    const-string v2, "polygon"

    invoke-interface {v6, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    new-instance v0, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererMapper$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererMapper$$ExternalSyntheticLambda17;-><init>()V

    const-string v2, "polyline"

    invoke-interface {v6, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    new-instance v0, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererMapper$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererMapper$$ExternalSyntheticLambda18;-><init>()V

    const-string v2, "rect"

    invoke-interface {v6, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    new-instance v0, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererMapper$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererMapper$$ExternalSyntheticLambda19;-><init>()V

    const-string v2, "stop"

    invoke-interface {v6, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    new-instance v0, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererMapper$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererMapper$$ExternalSyntheticLambda20;-><init>()V

    const-string v2, "svg"

    invoke-interface {v6, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    new-instance v0, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererMapper$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererMapper$$ExternalSyntheticLambda21;-><init>()V

    const-string v2, "symbol"

    invoke-interface {v6, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    new-instance v0, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererMapper$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererMapper$$ExternalSyntheticLambda22;-><init>()V

    const-string v2, "text"

    invoke-interface {v6, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    new-instance v0, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererMapper$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererMapper$$ExternalSyntheticLambda23;-><init>()V

    const-string v2, "tspan"

    invoke-interface {v6, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    new-instance v0, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererMapper$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererMapper$$ExternalSyntheticLambda1;-><init>()V

    const-string v2, "use"

    invoke-interface {v6, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    new-instance v0, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererMapper$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererMapper$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v6, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    new-instance v0, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererMapper$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererMapper$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    new-instance v0, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererMapper$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererMapper$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {v6, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    new-instance v0, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererMapper$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererMapper$$ExternalSyntheticLambda6;-><init>()V

    invoke-interface {v6, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererMapper;->mapping:Ljava/util/Map;

    .line 126
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 128
    const-string v1, "a"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 129
    const-string v1, "altGlyph"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 130
    const-string v1, "altGlyphDef"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 131
    const-string v1, "altGlyphItem"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 133
    const-string v1, "color-profile"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 135
    const-string v1, "desc"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 137
    const-string v1, "feBlend"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 138
    const-string v1, "feColorMatrix"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 139
    const-string v1, "feComponentTransfer"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 140
    const-string v1, "feComposite"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 141
    const-string v1, "feConvolveMatrix"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 142
    const-string v1, "feDiffuseLighting"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 143
    const-string v1, "feDisplacementMap"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 144
    const-string v1, "feDistantLight"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 145
    const-string v1, "feFlood"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 146
    const-string v1, "feFuncA"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 147
    const-string v1, "feFuncB"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 148
    const-string v1, "feFuncG"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 149
    const-string v1, "feFuncR"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 150
    const-string v1, "feGaussianBlur"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 151
    const-string v1, "feImage"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 152
    const-string v1, "feMerge"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 153
    const-string v1, "feMergeNode"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 154
    const-string v1, "feMorphology"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 155
    const-string v1, "feOffset"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 156
    const-string v1, "fePointLight"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 157
    const-string v1, "feSpecularLighting"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 158
    const-string v1, "feSpotLight"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 159
    const-string v1, "feTile"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 160
    const-string v1, "feTurbulence"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 161
    const-string v1, "filter"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 162
    const-string v1, "font"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 163
    const-string v1, "font-face"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 164
    const-string v1, "font-face-format"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 165
    const-string v1, "font-face-name"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 166
    const-string v1, "font-face-src"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 167
    const-string v1, "font-face-uri"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 168
    const-string v1, "foreignObject"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 170
    const-string v1, "glyph"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 171
    const-string v1, "glyphRef"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 173
    const-string v1, "hkern"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 175
    const-string v1, "mask"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 176
    const-string v1, "metadata"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 177
    const-string v1, "missing-glyph"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 179
    const-string v1, "radialGradient"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 181
    const-string v1, "style"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 183
    const-string v1, "title"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 185
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererMapper;->ignored:Ljava/util/Collection;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$static$0()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .locals 1

    .line 96
    new-instance v0, Lcom/itextpdf/svg/renderers/impl/CircleSvgNodeRenderer;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/impl/CircleSvgNodeRenderer;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$static$1()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .locals 1

    .line 97
    new-instance v0, Lcom/itextpdf/svg/renderers/impl/ClipPathSvgNodeRenderer;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/impl/ClipPathSvgNodeRenderer;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$static$10()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .locals 1

    .line 106
    new-instance v0, Lcom/itextpdf/svg/renderers/impl/PathSvgNodeRenderer;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/impl/PathSvgNodeRenderer;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$static$11()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .locals 1

    .line 107
    new-instance v0, Lcom/itextpdf/svg/renderers/impl/PolygonSvgNodeRenderer;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/impl/PolygonSvgNodeRenderer;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$static$12()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .locals 1

    .line 108
    new-instance v0, Lcom/itextpdf/svg/renderers/impl/PolylineSvgNodeRenderer;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/impl/PolylineSvgNodeRenderer;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$static$13()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .locals 1

    .line 109
    new-instance v0, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/impl/RectangleSvgNodeRenderer;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$static$14()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .locals 1

    .line 110
    new-instance v0, Lcom/itextpdf/svg/renderers/impl/StopSvgNodeRenderer;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/impl/StopSvgNodeRenderer;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$static$15()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .locals 1

    .line 111
    new-instance v0, Lcom/itextpdf/svg/renderers/impl/SvgTagSvgNodeRenderer;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/impl/SvgTagSvgNodeRenderer;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$static$16()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .locals 1

    .line 112
    new-instance v0, Lcom/itextpdf/svg/renderers/impl/SymbolSvgNodeRenderer;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/impl/SymbolSvgNodeRenderer;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$static$17()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .locals 1

    .line 113
    new-instance v0, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$static$18()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .locals 1

    .line 114
    new-instance v0, Lcom/itextpdf/svg/renderers/impl/TextSvgTSpanBranchRenderer;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/impl/TextSvgTSpanBranchRenderer;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$static$19()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .locals 1

    .line 115
    new-instance v0, Lcom/itextpdf/svg/renderers/impl/UseSvgNodeRenderer;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/impl/UseSvgNodeRenderer;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$static$2()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .locals 1

    .line 98
    new-instance v0, Lcom/itextpdf/svg/renderers/impl/DefsSvgNodeRenderer;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/impl/DefsSvgNodeRenderer;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$static$20()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .locals 1

    .line 116
    new-instance v0, Lcom/itextpdf/svg/renderers/impl/TextLeafSvgNodeRenderer;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/impl/TextLeafSvgNodeRenderer;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$static$21()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .locals 1

    .line 119
    new-instance v0, Lcom/itextpdf/svg/renderers/impl/ClipPathSvgNodeRenderer;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/impl/ClipPathSvgNodeRenderer;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$static$22()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .locals 1

    .line 120
    new-instance v0, Lcom/itextpdf/svg/renderers/impl/LinearGradientSvgNodeRenderer;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/impl/LinearGradientSvgNodeRenderer;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$static$23()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .locals 1

    .line 121
    new-instance v0, Lcom/itextpdf/svg/renderers/impl/TextLeafSvgNodeRenderer;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/impl/TextLeafSvgNodeRenderer;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$static$3()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .locals 1

    .line 99
    new-instance v0, Lcom/itextpdf/svg/renderers/impl/EllipseSvgNodeRenderer;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/impl/EllipseSvgNodeRenderer;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$static$4()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .locals 1

    .line 100
    new-instance v0, Lcom/itextpdf/svg/renderers/impl/GroupSvgNodeRenderer;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/impl/GroupSvgNodeRenderer;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$static$5()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .locals 1

    .line 101
    new-instance v0, Lcom/itextpdf/svg/renderers/impl/ImageSvgNodeRenderer;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/impl/ImageSvgNodeRenderer;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$static$6()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .locals 1

    .line 102
    new-instance v0, Lcom/itextpdf/svg/renderers/impl/LineSvgNodeRenderer;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/impl/LineSvgNodeRenderer;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$static$7()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .locals 1

    .line 103
    new-instance v0, Lcom/itextpdf/svg/renderers/impl/LinearGradientSvgNodeRenderer;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/impl/LinearGradientSvgNodeRenderer;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$static$8()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .locals 1

    .line 104
    new-instance v0, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$static$9()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .locals 1

    .line 105
    new-instance v0, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/impl/PatternSvgNodeRenderer;-><init>()V

    return-object v0
.end method


# virtual methods
.method getIgnoredTags()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 202
    sget-object v0, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererMapper;->ignored:Ljava/util/Collection;

    return-object v0
.end method

.method getMapping()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererMapper$ISvgNodeRendererCreator;",
            ">;"
        }
    .end annotation

    .line 194
    sget-object v0, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererMapper;->mapping:Ljava/util/Map;

    return-object v0
.end method
