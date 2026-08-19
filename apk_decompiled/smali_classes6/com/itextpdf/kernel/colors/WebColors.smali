.class public Lcom/itextpdf/kernel/colors/WebColors;
.super Ljava/util/HashMap;
.source "WebColors.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "[I>;"
    }
.end annotation


# static fields
.field public static final NAMES:Lcom/itextpdf/kernel/colors/WebColors;

.field private static final RGB_MAX_VAL:D = 255.0

.field private static final serialVersionUID:J = 0x58210875bee41afaL


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 63
    new-instance v0, Lcom/itextpdf/kernel/colors/WebColors;

    invoke-direct {v0}, Lcom/itextpdf/kernel/colors/WebColors;-><init>()V

    sput-object v0, Lcom/itextpdf/kernel/colors/WebColors;->NAMES:Lcom/itextpdf/kernel/colors/WebColors;

    const/16 v1, 0xf0

    const/16 v2, 0xf8

    const/16 v3, 0xff

    .line 70
    filled-new-array {v1, v2, v3, v3}, [I

    move-result-object v4

    const-string v5, "aliceblue"

    invoke-virtual {v0, v5, v4}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0xeb

    const/16 v5, 0xd7

    const/16 v6, 0xfa

    .line 71
    filled-new-array {v6, v4, v5, v3}, [I

    move-result-object v4

    const-string v5, "antiquewhite"

    invoke-virtual {v0, v5, v4}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    .line 72
    filled-new-array {v4, v3, v3, v3}, [I

    move-result-object v5

    const-string v7, "aqua"

    invoke-virtual {v0, v7, v5}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0xd4

    const/16 v7, 0x7f

    .line 73
    filled-new-array {v7, v3, v5, v3}, [I

    move-result-object v5

    const-string v8, "aquamarine"

    invoke-virtual {v0, v8, v5}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v5, "azure"

    filled-new-array {v1, v3, v3, v3}, [I

    move-result-object v8

    invoke-virtual {v0, v5, v8}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0xf5

    const/16 v8, 0xdc

    .line 75
    filled-new-array {v5, v5, v8, v3}, [I

    move-result-object v9

    const-string v10, "beige"

    invoke-virtual {v0, v10, v9}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v9, 0xe4

    const/16 v10, 0xc4

    .line 76
    filled-new-array {v3, v9, v10, v3}, [I

    move-result-object v9

    const-string v10, "bisque"

    invoke-virtual {v0, v10, v9}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v9, "black"

    filled-new-array {v4, v4, v4, v3}, [I

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v9, 0xeb

    const/16 v10, 0xcd

    .line 78
    filled-new-array {v3, v9, v10, v3}, [I

    move-result-object v9

    const-string v11, "blanchedalmond"

    invoke-virtual {v0, v11, v9}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v9, "blue"

    filled-new-array {v4, v4, v3, v3}, [I

    move-result-object v11

    invoke-virtual {v0, v9, v11}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v9, 0x2b

    const/16 v11, 0xe2

    const/16 v12, 0x8a

    .line 80
    filled-new-array {v12, v9, v11, v3}, [I

    move-result-object v9

    const-string v11, "blueviolet"

    invoke-virtual {v0, v11, v9}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v9, 0x2a

    const/16 v11, 0x2a

    const/16 v12, 0xa5

    .line 81
    filled-new-array {v12, v9, v11, v3}, [I

    move-result-object v9

    const-string v11, "brown"

    invoke-virtual {v0, v11, v9}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v9, 0xb8

    const/16 v11, 0x87

    const/16 v12, 0xde

    .line 82
    filled-new-array {v12, v9, v11, v3}, [I

    move-result-object v9

    const-string v11, "burlywood"

    invoke-virtual {v0, v11, v9}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v9, 0x5f

    const/16 v11, 0x9e

    const/16 v13, 0xa0

    .line 83
    filled-new-array {v9, v11, v13, v3}, [I

    move-result-object v9

    const-string v11, "cadetblue"

    invoke-virtual {v0, v11, v9}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v9, "chartreuse"

    filled-new-array {v7, v3, v4, v3}, [I

    move-result-object v11

    invoke-virtual {v0, v9, v11}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v9, 0x1e

    const/16 v11, 0xd2

    const/16 v14, 0x69

    .line 85
    filled-new-array {v11, v14, v9, v3}, [I

    move-result-object v9

    const-string v11, "chocolate"

    invoke-virtual {v0, v11, v9}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v9, 0x50

    .line 86
    filled-new-array {v3, v7, v9, v3}, [I

    move-result-object v9

    const-string v11, "coral"

    invoke-virtual {v0, v11, v9}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v9, 0x95

    const/16 v11, 0xed

    const/16 v15, 0x64

    .line 87
    filled-new-array {v15, v9, v11, v3}, [I

    move-result-object v9

    const-string v11, "cornflowerblue"

    invoke-virtual {v0, v11, v9}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v9, "cornsilk"

    filled-new-array {v3, v2, v8, v3}, [I

    move-result-object v11

    invoke-virtual {v0, v9, v11}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v9, 0x14

    const/16 v11, 0x3c

    .line 89
    filled-new-array {v8, v9, v11, v3}, [I

    move-result-object v9

    const-string v11, "crimson"

    invoke-virtual {v0, v11, v9}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v9, "cyan"

    filled-new-array {v4, v3, v3, v3}, [I

    move-result-object v11

    invoke-virtual {v0, v9, v11}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v9, 0x8b

    .line 91
    filled-new-array {v4, v4, v9, v3}, [I

    move-result-object v11

    const-string v15, "darkblue"

    invoke-virtual {v0, v15, v11}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v11, "darkcyan"

    filled-new-array {v4, v9, v9, v3}, [I

    move-result-object v15

    invoke-virtual {v0, v11, v15}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v11, 0x86

    const/16 v15, 0xb

    const/16 v7, 0xb8

    .line 93
    filled-new-array {v7, v11, v15, v3}, [I

    move-result-object v7

    const-string v11, "darkgoldenrod"

    invoke-virtual {v0, v11, v7}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, 0xa9

    .line 94
    filled-new-array {v7, v7, v7, v3}, [I

    move-result-object v11

    const-string v15, "darkgray"

    invoke-virtual {v0, v15, v11}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v11, "darkgrey"

    filled-new-array {v7, v7, v7, v3}, [I

    move-result-object v7

    invoke-virtual {v0, v11, v7}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, 0x64

    .line 96
    filled-new-array {v4, v7, v4, v3}, [I

    move-result-object v7

    const-string v11, "darkgreen"

    invoke-virtual {v0, v11, v7}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, 0xb7

    const/16 v11, 0x6b

    const/16 v15, 0xbd

    .line 97
    filled-new-array {v15, v7, v11, v3}, [I

    move-result-object v7

    const-string v11, "darkkhaki"

    invoke-virtual {v0, v11, v7}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v7, "darkmagenta"

    filled-new-array {v9, v4, v9, v3}, [I

    move-result-object v11

    invoke-virtual {v0, v7, v11}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, 0x55

    const/16 v11, 0x6b

    const/16 v15, 0x2f

    .line 99
    filled-new-array {v7, v11, v15, v3}, [I

    move-result-object v7

    const-string v11, "darkolivegreen"

    invoke-virtual {v0, v11, v7}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, 0x8c

    .line 100
    filled-new-array {v3, v7, v4, v3}, [I

    move-result-object v7

    const-string v11, "darkorange"

    invoke-virtual {v0, v11, v7}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, 0xcc

    const/16 v11, 0x99

    const/16 v12, 0x32

    .line 101
    filled-new-array {v11, v12, v7, v3}, [I

    move-result-object v7

    const-string v11, "darkorchid"

    invoke-virtual {v0, v11, v7}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v7, "darkred"

    filled-new-array {v9, v4, v4, v3}, [I

    move-result-object v11

    invoke-virtual {v0, v7, v11}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, 0x96

    const/16 v11, 0x7a

    const/16 v12, 0xe9

    .line 103
    filled-new-array {v12, v7, v11, v3}, [I

    move-result-object v7

    const-string v11, "darksalmon"

    invoke-virtual {v0, v11, v7}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, 0xbc

    const/16 v11, 0x8f

    const/16 v12, 0x8f

    .line 104
    filled-new-array {v12, v7, v11, v3}, [I

    move-result-object v7

    const-string v11, "darkseagreen"

    invoke-virtual {v0, v11, v7}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, 0x48

    const/16 v11, 0x3d

    .line 105
    filled-new-array {v7, v11, v9, v3}, [I

    move-result-object v7

    const-string v11, "darkslateblue"

    invoke-virtual {v0, v11, v7}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, 0x4f

    const/16 v11, 0x4f

    .line 106
    filled-new-array {v15, v7, v11, v3}, [I

    move-result-object v7

    const-string v11, "darkslategray"

    invoke-virtual {v0, v11, v7}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, 0x4f

    const/16 v11, 0x4f

    .line 107
    filled-new-array {v15, v7, v11, v3}, [I

    move-result-object v7

    const-string v11, "darkslategrey"

    invoke-virtual {v0, v11, v7}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, 0xce

    const/16 v11, 0xd1

    .line 108
    filled-new-array {v4, v7, v11, v3}, [I

    move-result-object v7

    const-string v11, "darkturquoise"

    invoke-virtual {v0, v11, v7}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, 0x94

    const/16 v11, 0xd3

    .line 109
    filled-new-array {v7, v4, v11, v3}, [I

    move-result-object v7

    const-string v12, "darkviolet"

    invoke-virtual {v0, v12, v7}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, 0x14

    const/16 v12, 0x93

    .line 110
    filled-new-array {v3, v7, v12, v3}, [I

    move-result-object v7

    const-string v12, "deeppink"

    invoke-virtual {v0, v12, v7}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, 0xbf

    .line 111
    filled-new-array {v4, v7, v3, v3}, [I

    move-result-object v7

    const-string v12, "deepskyblue"

    invoke-virtual {v0, v12, v7}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v7, "dimgray"

    filled-new-array {v14, v14, v14, v3}, [I

    move-result-object v12

    invoke-virtual {v0, v7, v12}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v7, "dimgrey"

    filled-new-array {v14, v14, v14, v3}, [I

    move-result-object v12

    invoke-virtual {v0, v7, v12}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, 0x1e

    const/16 v12, 0x90

    .line 114
    filled-new-array {v7, v12, v3, v3}, [I

    move-result-object v7

    const-string v13, "dodgerblue"

    invoke-virtual {v0, v13, v7}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, 0x22

    const/16 v13, 0x22

    const/16 v11, 0xb2

    .line 115
    filled-new-array {v11, v7, v13, v3}, [I

    move-result-object v7

    const-string v11, "firebrick"

    invoke-virtual {v0, v11, v7}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v7, "floralwhite"

    filled-new-array {v3, v6, v1, v3}, [I

    move-result-object v11

    invoke-virtual {v0, v7, v11}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, 0x22

    const/16 v11, 0x22

    .line 117
    filled-new-array {v7, v9, v11, v3}, [I

    move-result-object v7

    const-string v11, "forestgreen"

    invoke-virtual {v0, v11, v7}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v7, "fuchsia"

    filled-new-array {v3, v4, v3, v3}, [I

    move-result-object v11

    invoke-virtual {v0, v7, v11}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string v7, "gainsboro"

    filled-new-array {v8, v8, v8, v3}, [I

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v7, "ghostwhite"

    filled-new-array {v2, v2, v3, v3}, [I

    move-result-object v2

    invoke-virtual {v0, v7, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xd7

    .line 121
    filled-new-array {v3, v2, v4, v3}, [I

    move-result-object v2

    const-string v7, "gold"

    invoke-virtual {v0, v7, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xa5

    const/16 v7, 0x20

    const/16 v8, 0xda

    .line 122
    filled-new-array {v8, v2, v7, v3}, [I

    move-result-object v2

    const-string v7, "goldenrod"

    invoke-virtual {v0, v7, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x80

    .line 123
    filled-new-array {v2, v2, v2, v3}, [I

    move-result-object v7

    const-string v8, "gray"

    invoke-virtual {v0, v8, v7}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v7, "grey"

    filled-new-array {v2, v2, v2, v3}, [I

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v7, "green"

    filled-new-array {v4, v2, v4, v3}, [I

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, 0xad

    .line 126
    filled-new-array {v7, v3, v15, v3}, [I

    move-result-object v7

    const-string v8, "greenyellow"

    invoke-virtual {v0, v8, v7}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v7, "honeydew"

    filled-new-array {v1, v3, v1, v3}, [I

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, 0xb4

    .line 128
    filled-new-array {v3, v14, v7, v3}, [I

    move-result-object v7

    const-string v8, "hotpink"

    invoke-virtual {v0, v8, v7}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, 0x5c

    const/16 v8, 0x5c

    .line 129
    filled-new-array {v10, v7, v8, v3}, [I

    move-result-object v7

    const-string v8, "indianred"

    invoke-virtual {v0, v8, v7}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, 0x4b

    const/16 v8, 0x82

    .line 130
    filled-new-array {v7, v4, v8, v3}, [I

    move-result-object v7

    const-string v8, "indigo"

    invoke-virtual {v0, v8, v7}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string v7, "ivory"

    filled-new-array {v3, v3, v1, v3}, [I

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, 0x8c

    const/16 v8, 0xe6

    .line 132
    filled-new-array {v1, v8, v7, v3}, [I

    move-result-object v7

    const-string v11, "khaki"

    invoke-virtual {v0, v11, v7}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string v7, "lavender"

    filled-new-array {v8, v8, v6, v3}, [I

    move-result-object v11

    invoke-virtual {v0, v7, v11}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string v7, "lavenderblush"

    filled-new-array {v3, v1, v5, v3}, [I

    move-result-object v11

    invoke-virtual {v0, v7, v11}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, 0x7c

    const/16 v11, 0xfc

    .line 135
    filled-new-array {v7, v11, v4, v3}, [I

    move-result-object v7

    const-string v11, "lawngreen"

    invoke-virtual {v0, v11, v7}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string v7, "lemonchiffon"

    filled-new-array {v3, v6, v10, v3}, [I

    move-result-object v11

    invoke-virtual {v0, v7, v11}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, 0xad

    const/16 v11, 0xd8

    .line 137
    filled-new-array {v7, v11, v8, v3}, [I

    move-result-object v7

    const-string v11, "lightblue"

    invoke-virtual {v0, v11, v7}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string v7, "lightcoral"

    filled-new-array {v1, v2, v2, v3}, [I

    move-result-object v11

    invoke-virtual {v0, v7, v11}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, 0xe0

    .line 139
    filled-new-array {v7, v3, v3, v3}, [I

    move-result-object v7

    const-string v11, "lightcyan"

    invoke-virtual {v0, v11, v7}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, 0xd2

    .line 140
    filled-new-array {v6, v6, v7, v3}, [I

    move-result-object v7

    const-string v11, "lightgoldenrodyellow"

    invoke-virtual {v0, v11, v7}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, 0xee

    .line 141
    filled-new-array {v12, v7, v12, v3}, [I

    move-result-object v11

    const-string v13, "lightgreen"

    invoke-virtual {v0, v13, v11}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string v11, "lightgray"

    const/16 v13, 0xd3

    filled-new-array {v13, v13, v13, v3}, [I

    move-result-object v15

    invoke-virtual {v0, v11, v15}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string v11, "lightgrey"

    filled-new-array {v13, v13, v13, v3}, [I

    move-result-object v15

    invoke-virtual {v0, v11, v15}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v11, 0xb6

    const/16 v13, 0xc1

    .line 144
    filled-new-array {v3, v11, v13, v3}, [I

    move-result-object v11

    const-string v13, "lightpink"

    invoke-virtual {v0, v13, v11}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v11, 0x7a

    const/16 v13, 0xa0

    .line 145
    filled-new-array {v3, v13, v11, v3}, [I

    move-result-object v11

    const-string v13, "lightsalmon"

    invoke-virtual {v0, v13, v11}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v11, 0xb2

    const/16 v13, 0xaa

    const/16 v15, 0x20

    .line 146
    filled-new-array {v15, v11, v13, v3}, [I

    move-result-object v11

    const-string v13, "lightseagreen"

    invoke-virtual {v0, v13, v11}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v11, 0x87

    const/16 v13, 0xce

    .line 147
    filled-new-array {v11, v13, v6, v3}, [I

    move-result-object v11

    const-string v13, "lightskyblue"

    invoke-virtual {v0, v13, v11}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v11, 0x88

    const/16 v13, 0x99

    const/16 v15, 0x77

    .line 148
    filled-new-array {v15, v11, v13, v3}, [I

    move-result-object v11

    const-string v13, "lightslategray"

    invoke-virtual {v0, v13, v11}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v11, 0x88

    const/16 v13, 0x99

    .line 149
    filled-new-array {v15, v11, v13, v3}, [I

    move-result-object v11

    const-string v13, "lightslategrey"

    invoke-virtual {v0, v13, v11}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v11, 0xb0

    const/16 v13, 0xc4

    const/16 v15, 0xde

    .line 150
    filled-new-array {v11, v13, v15, v3}, [I

    move-result-object v11

    const-string v13, "lightsteelblue"

    invoke-virtual {v0, v13, v11}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v11, 0xe0

    .line 151
    filled-new-array {v3, v3, v11, v3}, [I

    move-result-object v11

    const-string v13, "lightyellow"

    invoke-virtual {v0, v13, v11}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string v11, "lime"

    filled-new-array {v4, v3, v4, v3}, [I

    move-result-object v13

    invoke-virtual {v0, v11, v13}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string v11, "limegreen"

    const/16 v13, 0x32

    filled-new-array {v13, v10, v13, v3}, [I

    move-result-object v15

    invoke-virtual {v0, v11, v15}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string v11, "linen"

    filled-new-array {v6, v1, v8, v3}, [I

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string v1, "magenta"

    filled-new-array {v3, v4, v3, v3}, [I

    move-result-object v11

    invoke-virtual {v0, v1, v11}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string v1, "maroon"

    filled-new-array {v2, v4, v4, v3}, [I

    move-result-object v11

    invoke-virtual {v0, v1, v11}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x66

    const/16 v11, 0xaa

    .line 157
    filled-new-array {v1, v10, v11, v3}, [I

    move-result-object v1

    const-string v11, "mediumaquamarine"

    invoke-virtual {v0, v11, v1}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string v1, "mediumblue"

    filled-new-array {v4, v4, v10, v3}, [I

    move-result-object v11

    invoke-virtual {v0, v1, v11}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xba

    const/16 v11, 0x55

    const/16 v13, 0xd3

    .line 159
    filled-new-array {v1, v11, v13, v3}, [I

    move-result-object v1

    const-string v11, "mediumorchid"

    invoke-virtual {v0, v11, v1}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xdb

    const/16 v11, 0x93

    const/16 v13, 0x70

    .line 160
    filled-new-array {v11, v13, v1, v3}, [I

    move-result-object v1

    const-string v11, "mediumpurple"

    invoke-virtual {v0, v11, v1}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xb3

    const/16 v11, 0x71

    const/16 v15, 0x3c

    .line 161
    filled-new-array {v15, v1, v11, v3}, [I

    move-result-object v1

    const-string v11, "mediumseagreen"

    invoke-virtual {v0, v11, v1}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x7b

    const/16 v11, 0x68

    .line 162
    filled-new-array {v1, v11, v7, v3}, [I

    move-result-object v1

    const-string v11, "mediumslateblue"

    invoke-virtual {v0, v11, v1}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x9a

    .line 163
    filled-new-array {v4, v6, v1, v3}, [I

    move-result-object v1

    const-string v11, "mediumspringgreen"

    invoke-virtual {v0, v11, v1}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xd1

    const/16 v11, 0xcc

    const/16 v15, 0x48

    .line 164
    filled-new-array {v15, v1, v11, v3}, [I

    move-result-object v1

    const-string v11, "mediumturquoise"

    invoke-virtual {v0, v11, v1}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x15

    const/16 v11, 0x85

    const/16 v15, 0xc7

    .line 165
    filled-new-array {v15, v1, v11, v3}, [I

    move-result-object v1

    const-string v11, "mediumvioletred"

    invoke-virtual {v0, v11, v1}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x19

    const/16 v11, 0x19

    .line 166
    filled-new-array {v1, v11, v13, v3}, [I

    move-result-object v1

    const-string v11, "midnightblue"

    invoke-virtual {v0, v11, v1}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string v1, "mintcream"

    filled-new-array {v5, v3, v6, v3}, [I

    move-result-object v11

    invoke-virtual {v0, v1, v11}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xe4

    const/16 v11, 0xe1

    .line 168
    filled-new-array {v3, v1, v11, v3}, [I

    move-result-object v1

    const-string v11, "mistyrose"

    invoke-virtual {v0, v11, v1}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xe4

    const/16 v11, 0xb5

    .line 169
    filled-new-array {v3, v1, v11, v3}, [I

    move-result-object v1

    const-string v11, "moccasin"

    invoke-virtual {v0, v11, v1}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xad

    const/16 v11, 0xde

    .line 170
    filled-new-array {v3, v11, v1, v3}, [I

    move-result-object v1

    const-string v11, "navajowhite"

    invoke-virtual {v0, v11, v1}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string v1, "navy"

    filled-new-array {v4, v4, v2, v3}, [I

    move-result-object v11

    invoke-virtual {v0, v1, v11}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xfd

    .line 172
    filled-new-array {v1, v5, v8, v3}, [I

    move-result-object v1

    const-string v11, "oldlace"

    invoke-virtual {v0, v11, v1}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const-string v1, "olive"

    filled-new-array {v2, v2, v4, v3}, [I

    move-result-object v11

    invoke-virtual {v0, v1, v11}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x8e

    const/16 v11, 0x23

    const/16 v15, 0x6b

    .line 174
    filled-new-array {v15, v1, v11, v3}, [I

    move-result-object v1

    const-string v11, "olivedrab"

    invoke-virtual {v0, v11, v1}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xa5

    .line 175
    filled-new-array {v3, v1, v4, v3}, [I

    move-result-object v1

    const-string v11, "orange"

    invoke-virtual {v0, v11, v1}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x45

    .line 176
    filled-new-array {v3, v1, v4, v3}, [I

    move-result-object v1

    const-string v11, "orangered"

    invoke-virtual {v0, v11, v1}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xda

    const/16 v11, 0xd6

    .line 177
    filled-new-array {v1, v13, v11, v3}, [I

    move-result-object v1

    const-string v11, "orchid"

    invoke-virtual {v0, v11, v1}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xe8

    const/16 v11, 0xaa

    .line 178
    filled-new-array {v7, v1, v11, v3}, [I

    move-result-object v1

    const-string v11, "palegoldenrod"

    invoke-virtual {v0, v11, v1}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xfb

    const/16 v11, 0x98

    const/16 v15, 0x98

    .line 179
    filled-new-array {v15, v1, v11, v3}, [I

    move-result-object v1

    const-string v11, "palegreen"

    invoke-virtual {v0, v11, v1}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xaf

    .line 180
    filled-new-array {v1, v7, v7, v3}, [I

    move-result-object v1

    const-string v11, "paleturquoise"

    invoke-virtual {v0, v11, v1}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xdb

    const/16 v11, 0x93

    .line 181
    filled-new-array {v1, v13, v11, v3}, [I

    move-result-object v1

    const-string v11, "palevioletred"

    invoke-virtual {v0, v11, v1}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xef

    const/16 v11, 0xd5

    .line 182
    filled-new-array {v3, v1, v11, v3}, [I

    move-result-object v1

    const-string v11, "papayawhip"

    invoke-virtual {v0, v11, v1}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xda

    const/16 v11, 0xb9

    .line 183
    filled-new-array {v3, v1, v11, v3}, [I

    move-result-object v1

    const-string v11, "peachpuff"

    invoke-virtual {v0, v11, v1}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x85

    const/16 v11, 0x3f

    .line 184
    filled-new-array {v10, v1, v11, v3}, [I

    move-result-object v1

    const-string v11, "peru"

    invoke-virtual {v0, v11, v1}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xc0

    const/16 v11, 0xcb

    .line 185
    filled-new-array {v3, v1, v11, v3}, [I

    move-result-object v1

    const-string v11, "pink"

    invoke-virtual {v0, v11, v1}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xdd

    const/16 v11, 0xdd

    const/16 v15, 0xa0

    .line 186
    filled-new-array {v1, v15, v11, v3}, [I

    move-result-object v1

    const-string v11, "plum"

    invoke-virtual {v0, v11, v1}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xb0

    const/16 v11, 0xe0

    .line 187
    filled-new-array {v1, v11, v8, v3}, [I

    move-result-object v1

    const-string v8, "powderblue"

    invoke-virtual {v0, v8, v1}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const-string v1, "purple"

    filled-new-array {v2, v4, v2, v3}, [I

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string v1, "red"

    filled-new-array {v3, v4, v4, v3}, [I

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x8f

    const/16 v8, 0x8f

    const/16 v11, 0xbc

    .line 190
    filled-new-array {v11, v1, v8, v3}, [I

    move-result-object v1

    const-string v8, "rosybrown"

    invoke-virtual {v0, v8, v1}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x41

    const/16 v8, 0xe1

    .line 191
    filled-new-array {v1, v14, v8, v3}, [I

    move-result-object v1

    const-string v8, "royalblue"

    invoke-virtual {v0, v8, v1}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x45

    const/16 v8, 0x13

    .line 192
    filled-new-array {v9, v1, v8, v3}, [I

    move-result-object v1

    const-string v8, "saddlebrown"

    invoke-virtual {v0, v8, v1}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x72

    .line 193
    filled-new-array {v6, v2, v1, v3}, [I

    move-result-object v1

    const-string v8, "salmon"

    invoke-virtual {v0, v8, v1}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xa4

    const/16 v8, 0x60

    const/16 v11, 0xf4

    .line 194
    filled-new-array {v11, v1, v8, v3}, [I

    move-result-object v1

    const-string v8, "sandybrown"

    invoke-virtual {v0, v8, v1}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2e

    const/16 v8, 0x57

    .line 195
    filled-new-array {v1, v9, v8, v3}, [I

    move-result-object v1

    const-string v8, "seagreen"

    invoke-virtual {v0, v8, v1}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string v1, "seashell"

    filled-new-array {v3, v5, v7, v3}, [I

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x52

    const/16 v8, 0x2d

    const/16 v9, 0xa0

    .line 197
    filled-new-array {v9, v1, v8, v3}, [I

    move-result-object v1

    const-string v8, "sienna"

    invoke-virtual {v0, v8, v1}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xc0

    const/16 v8, 0xc0

    const/16 v9, 0xc0

    .line 198
    filled-new-array {v9, v1, v8, v3}, [I

    move-result-object v1

    const-string v8, "silver"

    invoke-virtual {v0, v8, v1}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xce

    const/16 v8, 0xeb

    const/16 v9, 0x87

    .line 199
    filled-new-array {v9, v1, v8, v3}, [I

    move-result-object v1

    const-string v8, "skyblue"

    invoke-virtual {v0, v8, v1}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x6a

    const/16 v8, 0x5a

    .line 200
    filled-new-array {v1, v8, v10, v3}, [I

    move-result-object v1

    const-string v8, "slateblue"

    invoke-virtual {v0, v8, v1}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const-string v1, "slategray"

    filled-new-array {v13, v2, v12, v3}, [I

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const-string v1, "slategrey"

    filled-new-array {v13, v2, v12, v3}, [I

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string v1, "snow"

    filled-new-array {v3, v6, v6, v3}, [I

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string v1, "springgreen"

    const/16 v6, 0x7f

    filled-new-array {v4, v3, v6, v3}, [I

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x82

    const/16 v6, 0xb4

    const/16 v8, 0x46

    .line 205
    filled-new-array {v8, v1, v6, v3}, [I

    move-result-object v1

    const-string v6, "steelblue"

    invoke-virtual {v0, v6, v1}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xb4

    const/16 v6, 0x8c

    const/16 v8, 0xd2

    .line 206
    filled-new-array {v8, v1, v6, v3}, [I

    move-result-object v1

    const-string v6, "tan"

    invoke-virtual {v0, v6, v1}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const-string v1, "teal"

    filled-new-array {v4, v2, v2, v3}, [I

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xbf

    const/16 v2, 0xd8

    const/16 v6, 0xd8

    .line 208
    filled-new-array {v6, v1, v2, v3}, [I

    move-result-object v1

    const-string v2, "thistle"

    invoke-virtual {v0, v2, v1}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x63

    const/16 v2, 0x47

    .line 209
    filled-new-array {v3, v1, v2, v3}, [I

    move-result-object v1

    const-string v2, "tomato"

    invoke-virtual {v0, v2, v1}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const-string v1, "transparent"

    filled-new-array {v3, v3, v3, v4}, [I

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xe0

    const/16 v2, 0xd0

    const/16 v6, 0x40

    .line 211
    filled-new-array {v6, v1, v2, v3}, [I

    move-result-object v1

    const-string v2, "turquoise"

    invoke-virtual {v0, v2, v1}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x82

    .line 212
    filled-new-array {v7, v1, v7, v3}, [I

    move-result-object v1

    const-string v2, "violet"

    invoke-virtual {v0, v2, v1}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xb3

    const/16 v2, 0xde

    .line 213
    filled-new-array {v5, v2, v1, v3}, [I

    move-result-object v1

    const-string v2, "wheat"

    invoke-virtual {v0, v2, v1}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const-string v1, "white"

    filled-new-array {v3, v3, v3, v3}, [I

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const-string v1, "whitesmoke"

    filled-new-array {v5, v5, v5, v3}, [I

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const-string v1, "yellow"

    filled-new-array {v3, v3, v4, v3}, [I

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x9a

    const/16 v2, 0x32

    .line 217
    filled-new-array {v1, v10, v2, v3}, [I

    move-result-object v1

    const-string v2, "yellowgreen"

    invoke-virtual {v0, v2, v1}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method private static getAlphaChannelValue(Ljava/lang/String;)F
    .locals 1

    .line 400
    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    invoke-static {p0}, Lcom/itextpdf/kernel/colors/WebColors;->parsePercentValue(Ljava/lang/String;)F

    move-result p0

    goto :goto_0

    .line 403
    :cond_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    :goto_0
    const/4 v0, 0x0

    .line 405
    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 406
    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public static getCMYKArray(Ljava/lang/String;)[F
    .locals 4

    const/4 v0, 0x0

    .line 262
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 263
    const-string v1, "device-cmyk("

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 265
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "device-cmyk()/, \t\r\n\u000c"

    invoke-direct {v1, p0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x5

    .line 266
    new-array p0, p0, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, p0, v2

    const/4 v2, 0x1

    aput v3, p0, v2

    const/4 v2, 0x2

    aput v3, p0, v2

    const/4 v2, 0x3

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, p0, v2

    const/4 v2, 0x4

    aput v3, p0, v2

    .line 267
    invoke-static {p0, v1}, Lcom/itextpdf/kernel/colors/WebColors;->parseCMYKColors([FLjava/util/StringTokenizer;)V

    .line 268
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 269
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/kernel/colors/WebColors;->getAlphaChannelValue(Ljava/lang/String;)F

    move-result v1

    aput v1, p0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move-object v0, p0

    :catch_0
    :cond_1
    return-object v0
.end method

.method private static getCMYKChannelValue(Ljava/lang/String;)F
    .locals 1

    .line 390
    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    invoke-static {p0}, Lcom/itextpdf/kernel/colors/WebColors;->parsePercentValue(Ljava/lang/String;)F

    move-result p0

    return p0

    .line 393
    :cond_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public static getCMYKColor(Ljava/lang/String;)Lcom/itextpdf/kernel/colors/DeviceCmyk;
    .locals 5

    .line 244
    invoke-static {p0}, Lcom/itextpdf/kernel/colors/WebColors;->getCMYKArray(Ljava/lang/String;)[F

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 246
    new-instance p0, Lcom/itextpdf/kernel/colors/DeviceCmyk;

    const/16 v1, 0x64

    invoke-direct {p0, v0, v0, v0, v1}, Lcom/itextpdf/kernel/colors/DeviceCmyk;-><init>(IIII)V

    return-object p0

    .line 248
    :cond_0
    new-instance v1, Lcom/itextpdf/kernel/colors/DeviceCmyk;

    aget v0, p0, v0

    const/4 v2, 0x1

    aget v2, p0, v2

    const/4 v3, 0x2

    aget v3, p0, v3

    const/4 v4, 0x3

    aget p0, p0, v4

    invoke-direct {v1, v0, v2, v3, p0}, Lcom/itextpdf/kernel/colors/DeviceCmyk;-><init>(FFFF)V

    return-object v1
.end method

.method public static getRGBAColor(Ljava/lang/String;)[F
    .locals 13

    const/4 v0, 0x0

    .line 289
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 290
    invoke-static {p0}, Lcom/itextpdf/kernel/colors/WebColors;->missingHashColorFormat(Ljava/lang/String;)Z

    move-result v1

    .line 291
    const-string v2, "#"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x3

    const/4 v5, 0x4

    const-wide v6, 0x406fe00000000000L    # 255.0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x2

    const/4 v11, 0x0

    if-nez v2, :cond_4

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 313
    :cond_0
    const-string v1, "rgb("

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 315
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "rgb(), \t\r\n\u000c"

    invoke-direct {v1, p0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    new-array p0, v5, [F

    fill-array-data p0, :array_0

    .line 317
    invoke-static {p0, v1}, Lcom/itextpdf/kernel/colors/WebColors;->parseRGBColors([FLjava/util/StringTokenizer;)V

    :cond_1
    :goto_0
    move-object v0, p0

    goto/16 :goto_3

    .line 318
    :cond_2
    const-string v1, "rgba("

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 320
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "rgba(), \t\r\n\u000c"

    invoke-direct {v1, p0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    new-array p0, v5, [F

    aput v11, p0, v8

    aput v11, p0, v9

    aput v11, p0, v10

    aput v3, p0, v4

    .line 322
    invoke-static {p0, v1}, Lcom/itextpdf/kernel/colors/WebColors;->parseRGBColors([FLjava/util/StringTokenizer;)V

    .line 323
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 324
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/kernel/colors/WebColors;->getAlphaChannelValue(Ljava/lang/String;)F

    move-result v1

    aput v1, p0, v4

    goto :goto_0

    .line 326
    :cond_3
    sget-object v1, Lcom/itextpdf/kernel/colors/WebColors;->NAMES:Lcom/itextpdf/kernel/colors/WebColors;

    invoke-virtual {v1, p0}, Lcom/itextpdf/kernel/colors/WebColors;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 327
    invoke-virtual {v1, p0}, Lcom/itextpdf/kernel/colors/WebColors;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    .line 328
    new-array v1, v5, [F

    aput v11, v1, v8

    aput v11, v1, v9

    aput v11, v1, v10

    aput v3, v1, v4

    .line 329
    aget v2, p0, v8

    int-to-double v2, v2

    div-double/2addr v2, v6

    double-to-float v2, v2

    aput v2, v1, v8

    .line 330
    aget v2, p0, v9

    int-to-double v2, v2

    div-double/2addr v2, v6

    double-to-float v2, v2

    aput v2, v1, v9

    .line 331
    aget p0, p0, v10

    int-to-double v2, p0

    div-double/2addr v2, v6

    double-to-float p0, v2

    aput p0, v1, v10

    goto/16 :goto_2

    :cond_4
    :goto_1
    if-nez v1, :cond_5

    .line 294
    invoke-virtual {p0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 296
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v4, :cond_6

    .line 297
    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 298
    new-array v5, v5, [F

    aput v11, v5, v8

    aput v11, v5, v9

    aput v11, v5, v10

    aput v3, v5, v4

    .line 299
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-double v3, v1

    div-double/2addr v3, v6

    double-to-float v1, v3

    aput v1, v5, v8

    .line 300
    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 301
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-double v3, v1

    div-double/2addr v3, v6

    double-to-float v1, v3

    aput v1, v5, v9

    .line 302
    invoke-virtual {p0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 303
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    int-to-double v1, p0

    div-double/2addr v1, v6

    double-to-float p0, v1

    aput p0, v5, v10

    move-object v0, v5

    goto :goto_3

    .line 304
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v12, 0x6

    if-ne v1, v12, :cond_7

    .line 305
    new-array v1, v5, [F

    aput v11, v1, v8

    aput v11, v1, v9

    aput v11, v1, v10

    aput v3, v1, v4

    .line 306
    invoke-virtual {p0, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-double v3, v3

    div-double/2addr v3, v6

    double-to-float v3, v3

    aput v3, v1, v8

    .line 307
    invoke-virtual {p0, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-double v3, v3

    div-double/2addr v3, v6

    double-to-float v3, v3

    aput v3, v1, v9

    .line 308
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    int-to-double v2, p0

    div-double/2addr v2, v6

    double-to-float p0, v2

    aput p0, v1, v10

    :goto_2
    move-object v0, v1

    goto :goto_3

    .line 310
    :cond_7
    const-class p0, Lcom/itextpdf/kernel/colors/WebColors;

    invoke-static {p0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p0

    .line 311
    const-string v1, "Unknown color format: must be rgb or rrggbb."

    invoke-interface {p0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_8
    :goto_3
    return-object v0

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static getRGBChannelValue(Ljava/lang/String;)F
    .locals 4

    .line 381
    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    invoke-static {p0}, Lcom/itextpdf/kernel/colors/WebColors;->parsePercentValue(Ljava/lang/String;)F

    move-result p0

    return p0

    .line 384
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    int-to-double v0, p0

    const-wide v2, 0x406fe00000000000L    # 255.0

    div-double/2addr v0, v2

    double-to-float p0, v0

    return p0
.end method

.method public static getRGBColor(Ljava/lang/String;)Lcom/itextpdf/kernel/colors/DeviceRgb;
    .locals 4

    .line 228
    invoke-static {p0}, Lcom/itextpdf/kernel/colors/WebColors;->getRGBAColor(Ljava/lang/String;)[F

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 230
    new-instance p0, Lcom/itextpdf/kernel/colors/DeviceRgb;

    invoke-direct {p0, v0, v0, v0}, Lcom/itextpdf/kernel/colors/DeviceRgb;-><init>(III)V

    return-object p0

    .line 232
    :cond_0
    new-instance v1, Lcom/itextpdf/kernel/colors/DeviceRgb;

    aget v0, p0, v0

    const/4 v2, 0x1

    aget v2, p0, v2

    const/4 v3, 0x2

    aget p0, p0, v3

    invoke-direct {v1, v0, v2, p0}, Lcom/itextpdf/kernel/colors/DeviceRgb;-><init>(FFF)V

    return-object v1
.end method

.method private static missingHashColorFormat(Ljava/lang/String;)Z
    .locals 3

    .line 371
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 374
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[0-9a-f]{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 375
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static parseCMYKColors([FLjava/util/StringTokenizer;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 353
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 354
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/kernel/colors/WebColors;->getCMYKChannelValue(Ljava/lang/String;)F

    move-result v1

    aput v1, p0, v0

    const/4 v2, 0x0

    .line 355
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    aput v1, p0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 356
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    aput v1, p0, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static parsePercentValue(Ljava/lang/String;)F
    .locals 4

    .line 412
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    .line 411
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    float-to-double v0, p0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    double-to-float p0, v0

    return p0
.end method

.method private static parseRGBColors([FLjava/util/StringTokenizer;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 343
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 344
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/kernel/colors/WebColors;->getRGBChannelValue(Ljava/lang/String;)F

    move-result v1

    aput v1, p0, v0

    const/4 v2, 0x0

    .line 345
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    aput v1, p0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 346
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    aput v1, p0, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
