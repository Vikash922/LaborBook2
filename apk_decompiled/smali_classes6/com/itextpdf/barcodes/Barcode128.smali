.class public Lcom/itextpdf/barcodes/Barcode128;
.super Lcom/itextpdf/barcodes/Barcode1D;
.source "Barcode128.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;
    }
.end annotation


# static fields
.field private static final BARS:[[B

.field private static final BARS_STOP:[B

.field public static final CODE128:I = 0x1

.field public static final CODE128_RAW:I = 0x3

.field public static final CODE128_UCC:I = 0x2

.field public static final CODE_A:C = '\u00c8'

.field public static final CODE_AB_TO_C:C = 'c'

.field public static final CODE_AC_TO_B:C = 'd'

.field public static final CODE_BC_TO_A:C = 'e'

.field public static final CODE_C:C = '\u00c7'

.field public static final DEL:C = '\u00c3'

.field public static final FNC1:C = '\u00ca'

.field public static final FNC1_INDEX:C = 'f'

.field public static final FNC2:C = '\u00c5'

.field public static final FNC3:C = '\u00c4'

.field public static final FNC4:C = '\u00c8'

.field public static final SHIFT:C = '\u00c6'

.field public static final STARTA:C = '\u00cb'

.field public static final STARTB:C = '\u00cc'

.field public static final STARTC:C = '\u00cd'

.field public static final START_A:C = 'g'

.field public static final START_B:C = 'h'

.field public static final START_C:C = 'i'

.field private static ais:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private codeSet:Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;


# direct methods
.method static constructor <clinit>()V
    .locals 109

    const/4 v0, 0x6

    .line 819
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 68
    new-array v3, v0, [B

    move-object v2, v3

    fill-array-data v3, :array_0

    new-array v4, v0, [B

    move-object v3, v4

    fill-array-data v4, :array_1

    new-array v5, v0, [B

    move-object v4, v5

    fill-array-data v5, :array_2

    new-array v6, v0, [B

    move-object v5, v6

    fill-array-data v6, :array_3

    new-array v7, v0, [B

    move-object v6, v7

    fill-array-data v7, :array_4

    new-array v8, v0, [B

    move-object v7, v8

    fill-array-data v8, :array_5

    new-array v9, v0, [B

    move-object v8, v9

    fill-array-data v9, :array_6

    new-array v10, v0, [B

    move-object v9, v10

    fill-array-data v10, :array_7

    new-array v11, v0, [B

    move-object v10, v11

    fill-array-data v11, :array_8

    new-array v12, v0, [B

    move-object v11, v12

    fill-array-data v12, :array_9

    new-array v13, v0, [B

    move-object v12, v13

    fill-array-data v13, :array_a

    new-array v14, v0, [B

    move-object v13, v14

    fill-array-data v14, :array_b

    new-array v15, v0, [B

    move-object v14, v15

    fill-array-data v15, :array_c

    new-array v15, v0, [B

    move-object/from16 v16, v15

    fill-array-data v16, :array_d

    move-object/from16 v108, v1

    new-array v1, v0, [B

    move-object/from16 v16, v1

    fill-array-data v1, :array_e

    new-array v1, v0, [B

    move-object/from16 v17, v1

    fill-array-data v1, :array_f

    new-array v1, v0, [B

    move-object/from16 v18, v1

    fill-array-data v1, :array_10

    new-array v1, v0, [B

    move-object/from16 v19, v1

    fill-array-data v1, :array_11

    new-array v1, v0, [B

    move-object/from16 v20, v1

    fill-array-data v1, :array_12

    new-array v1, v0, [B

    move-object/from16 v21, v1

    fill-array-data v1, :array_13

    new-array v1, v0, [B

    move-object/from16 v22, v1

    fill-array-data v1, :array_14

    new-array v1, v0, [B

    move-object/from16 v23, v1

    fill-array-data v1, :array_15

    new-array v1, v0, [B

    move-object/from16 v24, v1

    fill-array-data v1, :array_16

    new-array v1, v0, [B

    move-object/from16 v25, v1

    fill-array-data v1, :array_17

    new-array v1, v0, [B

    move-object/from16 v26, v1

    fill-array-data v1, :array_18

    new-array v1, v0, [B

    move-object/from16 v27, v1

    fill-array-data v1, :array_19

    new-array v1, v0, [B

    move-object/from16 v28, v1

    fill-array-data v1, :array_1a

    new-array v1, v0, [B

    move-object/from16 v29, v1

    fill-array-data v1, :array_1b

    new-array v1, v0, [B

    move-object/from16 v30, v1

    fill-array-data v1, :array_1c

    new-array v1, v0, [B

    move-object/from16 v31, v1

    fill-array-data v1, :array_1d

    new-array v1, v0, [B

    move-object/from16 v32, v1

    fill-array-data v1, :array_1e

    new-array v1, v0, [B

    move-object/from16 v33, v1

    fill-array-data v1, :array_1f

    new-array v1, v0, [B

    move-object/from16 v34, v1

    fill-array-data v1, :array_20

    new-array v1, v0, [B

    move-object/from16 v35, v1

    fill-array-data v1, :array_21

    new-array v1, v0, [B

    move-object/from16 v36, v1

    fill-array-data v1, :array_22

    new-array v1, v0, [B

    move-object/from16 v37, v1

    fill-array-data v1, :array_23

    new-array v1, v0, [B

    move-object/from16 v38, v1

    fill-array-data v1, :array_24

    new-array v1, v0, [B

    move-object/from16 v39, v1

    fill-array-data v1, :array_25

    new-array v1, v0, [B

    move-object/from16 v40, v1

    fill-array-data v1, :array_26

    new-array v1, v0, [B

    move-object/from16 v41, v1

    fill-array-data v1, :array_27

    new-array v1, v0, [B

    move-object/from16 v42, v1

    fill-array-data v1, :array_28

    new-array v1, v0, [B

    move-object/from16 v43, v1

    fill-array-data v1, :array_29

    new-array v1, v0, [B

    move-object/from16 v44, v1

    fill-array-data v1, :array_2a

    new-array v1, v0, [B

    move-object/from16 v45, v1

    fill-array-data v1, :array_2b

    new-array v1, v0, [B

    move-object/from16 v46, v1

    fill-array-data v1, :array_2c

    new-array v1, v0, [B

    move-object/from16 v47, v1

    fill-array-data v1, :array_2d

    new-array v1, v0, [B

    move-object/from16 v48, v1

    fill-array-data v1, :array_2e

    new-array v1, v0, [B

    move-object/from16 v49, v1

    fill-array-data v1, :array_2f

    new-array v1, v0, [B

    move-object/from16 v50, v1

    fill-array-data v1, :array_30

    new-array v1, v0, [B

    move-object/from16 v51, v1

    fill-array-data v1, :array_31

    new-array v1, v0, [B

    move-object/from16 v52, v1

    fill-array-data v1, :array_32

    new-array v1, v0, [B

    move-object/from16 v53, v1

    fill-array-data v1, :array_33

    new-array v1, v0, [B

    move-object/from16 v54, v1

    fill-array-data v1, :array_34

    new-array v1, v0, [B

    move-object/from16 v55, v1

    fill-array-data v1, :array_35

    new-array v1, v0, [B

    move-object/from16 v56, v1

    fill-array-data v1, :array_36

    new-array v1, v0, [B

    move-object/from16 v57, v1

    fill-array-data v1, :array_37

    new-array v1, v0, [B

    move-object/from16 v58, v1

    fill-array-data v1, :array_38

    new-array v1, v0, [B

    move-object/from16 v59, v1

    fill-array-data v1, :array_39

    new-array v1, v0, [B

    move-object/from16 v60, v1

    fill-array-data v1, :array_3a

    new-array v1, v0, [B

    move-object/from16 v61, v1

    fill-array-data v1, :array_3b

    new-array v1, v0, [B

    move-object/from16 v62, v1

    fill-array-data v1, :array_3c

    new-array v1, v0, [B

    move-object/from16 v63, v1

    fill-array-data v1, :array_3d

    new-array v1, v0, [B

    move-object/from16 v64, v1

    fill-array-data v1, :array_3e

    new-array v1, v0, [B

    move-object/from16 v65, v1

    fill-array-data v1, :array_3f

    new-array v1, v0, [B

    move-object/from16 v66, v1

    fill-array-data v1, :array_40

    new-array v1, v0, [B

    move-object/from16 v67, v1

    fill-array-data v1, :array_41

    new-array v1, v0, [B

    move-object/from16 v68, v1

    fill-array-data v1, :array_42

    new-array v1, v0, [B

    move-object/from16 v69, v1

    fill-array-data v1, :array_43

    new-array v1, v0, [B

    move-object/from16 v70, v1

    fill-array-data v1, :array_44

    new-array v1, v0, [B

    move-object/from16 v71, v1

    fill-array-data v1, :array_45

    new-array v1, v0, [B

    move-object/from16 v72, v1

    fill-array-data v1, :array_46

    new-array v1, v0, [B

    move-object/from16 v73, v1

    fill-array-data v1, :array_47

    new-array v1, v0, [B

    move-object/from16 v74, v1

    fill-array-data v1, :array_48

    new-array v1, v0, [B

    move-object/from16 v75, v1

    fill-array-data v1, :array_49

    new-array v1, v0, [B

    move-object/from16 v76, v1

    fill-array-data v1, :array_4a

    new-array v1, v0, [B

    move-object/from16 v77, v1

    fill-array-data v1, :array_4b

    new-array v1, v0, [B

    move-object/from16 v78, v1

    fill-array-data v1, :array_4c

    new-array v1, v0, [B

    move-object/from16 v79, v1

    fill-array-data v1, :array_4d

    new-array v1, v0, [B

    move-object/from16 v80, v1

    fill-array-data v1, :array_4e

    new-array v1, v0, [B

    move-object/from16 v81, v1

    fill-array-data v1, :array_4f

    new-array v1, v0, [B

    move-object/from16 v82, v1

    fill-array-data v1, :array_50

    new-array v1, v0, [B

    move-object/from16 v83, v1

    fill-array-data v1, :array_51

    new-array v1, v0, [B

    move-object/from16 v84, v1

    fill-array-data v1, :array_52

    new-array v1, v0, [B

    move-object/from16 v85, v1

    fill-array-data v1, :array_53

    new-array v1, v0, [B

    move-object/from16 v86, v1

    fill-array-data v1, :array_54

    new-array v1, v0, [B

    move-object/from16 v87, v1

    fill-array-data v1, :array_55

    new-array v1, v0, [B

    move-object/from16 v88, v1

    fill-array-data v1, :array_56

    new-array v1, v0, [B

    move-object/from16 v89, v1

    fill-array-data v1, :array_57

    new-array v1, v0, [B

    move-object/from16 v90, v1

    fill-array-data v1, :array_58

    new-array v1, v0, [B

    move-object/from16 v91, v1

    fill-array-data v1, :array_59

    new-array v1, v0, [B

    move-object/from16 v92, v1

    fill-array-data v1, :array_5a

    new-array v1, v0, [B

    move-object/from16 v93, v1

    fill-array-data v1, :array_5b

    new-array v1, v0, [B

    move-object/from16 v94, v1

    fill-array-data v1, :array_5c

    new-array v1, v0, [B

    move-object/from16 v95, v1

    fill-array-data v1, :array_5d

    new-array v1, v0, [B

    move-object/from16 v96, v1

    fill-array-data v1, :array_5e

    new-array v1, v0, [B

    move-object/from16 v97, v1

    fill-array-data v1, :array_5f

    new-array v1, v0, [B

    move-object/from16 v98, v1

    fill-array-data v1, :array_60

    new-array v1, v0, [B

    move-object/from16 v99, v1

    fill-array-data v1, :array_61

    new-array v1, v0, [B

    move-object/from16 v100, v1

    fill-array-data v1, :array_62

    new-array v1, v0, [B

    move-object/from16 v101, v1

    fill-array-data v1, :array_63

    new-array v1, v0, [B

    move-object/from16 v102, v1

    fill-array-data v1, :array_64

    new-array v1, v0, [B

    move-object/from16 v103, v1

    fill-array-data v1, :array_65

    new-array v1, v0, [B

    move-object/from16 v104, v1

    fill-array-data v1, :array_66

    new-array v1, v0, [B

    move-object/from16 v105, v1

    fill-array-data v1, :array_67

    new-array v1, v0, [B

    move-object/from16 v106, v1

    fill-array-data v1, :array_68

    new-array v0, v0, [B

    move-object/from16 v107, v0

    fill-array-data v0, :array_69

    filled-new-array/range {v2 .. v107}, [[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/barcodes/Barcode128;->BARS:[[B

    const/4 v0, 0x7

    .line 181
    new-array v0, v0, [B

    fill-array-data v0, :array_6a

    sput-object v0, Lcom/itextpdf/barcodes/Barcode128;->BARS_STOP:[B

    .line 223
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/4 v1, 0x0

    .line 784
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 788
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/16 v5, 0xb

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/16 v5, 0xc

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/16 v5, 0xd

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/16 v5, 0xf

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/16 v5, 0x11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/16 v6, 0x15

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/16 v6, 0x16

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/16 v7, 0x17

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/16 v7, 0xf0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/16 v7, 0xf1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/16 v7, 0xfa

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/16 v7, 0xfb

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/16 v7, 0xfc

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/16 v7, 0x1e

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xc1c

    :goto_0
    const/16 v7, 0xe74

    if-ge v0, v7, :cond_0

    .line 804
    sget-object v7, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 806
    :cond_0
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/16 v7, 0x25

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xf3c

    :goto_1
    const/16 v7, 0xf64

    if-ge v0, v7, :cond_1

    .line 808
    sget-object v7, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 810
    :cond_1
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/16 v7, 0x190

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/16 v7, 0x191

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/16 v7, 0x192

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 813
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/16 v2, 0x193

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x19a

    :goto_2
    const/16 v2, 0x1a0

    if-ge v0, v2, :cond_2

    .line 815
    sget-object v2, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 817
    :cond_2
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/16 v2, 0x1a4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/16 v2, 0x1a5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/16 v2, 0x1a6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, v108

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/16 v2, 0x1a7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/16 v2, 0x1a8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 822
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/16 v2, 0x1a9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 823
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/16 v2, 0x1aa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/16 v2, 0x1b59

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/16 v2, 0x1b5a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x1b76

    :goto_3
    const/16 v2, 0x1b80

    if-ge v0, v2, :cond_3

    .line 827
    sget-object v2, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 829
    :cond_3
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/16 v2, 0x1f41

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v5, 0x12

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 830
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/16 v2, 0x1f42

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/16 v2, 0x1f43

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/16 v2, 0x1f44

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/16 v2, 0x1f45

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 834
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/16 v2, 0x1f46

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 835
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/16 v2, 0x1f47

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 836
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/16 v2, 0x1f48

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/16 v2, 0x1f52

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 838
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/16 v2, 0x1f54

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 839
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/16 v2, 0x1fa4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 840
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/16 v1, 0x1fa5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 841
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    const/16 v1, 0x1fa6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x5a

    :goto_4
    const/16 v1, 0x64

    if-ge v0, v1, :cond_4

    .line 843
    sget-object v1, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    return-void

    nop

    :array_0
    .array-data 1
        0x2t
        0x1t
        0x2t
        0x2t
        0x2t
        0x2t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x2t
        0x2t
        0x2t
        0x1t
        0x2t
        0x2t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x1t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x1t
        0x2t
        0x1t
        0x2t
        0x2t
        0x3t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x1t
        0x2t
        0x1t
        0x3t
        0x2t
        0x2t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x1t
        0x3t
        0x1t
        0x2t
        0x2t
        0x2t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x1t
        0x2t
        0x2t
        0x2t
        0x1t
        0x3t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x1t
        0x2t
        0x2t
        0x3t
        0x1t
        0x2t
    .end array-data

    nop

    :array_8
    .array-data 1
        0x1t
        0x3t
        0x2t
        0x2t
        0x1t
        0x2t
    .end array-data

    nop

    :array_9
    .array-data 1
        0x2t
        0x2t
        0x1t
        0x2t
        0x1t
        0x3t
    .end array-data

    nop

    :array_a
    .array-data 1
        0x2t
        0x2t
        0x1t
        0x3t
        0x1t
        0x2t
    .end array-data

    nop

    :array_b
    .array-data 1
        0x2t
        0x3t
        0x1t
        0x2t
        0x1t
        0x2t
    .end array-data

    nop

    :array_c
    .array-data 1
        0x1t
        0x1t
        0x2t
        0x2t
        0x3t
        0x2t
    .end array-data

    nop

    :array_d
    .array-data 1
        0x1t
        0x2t
        0x2t
        0x1t
        0x3t
        0x2t
    .end array-data

    nop

    :array_e
    .array-data 1
        0x1t
        0x2t
        0x2t
        0x2t
        0x3t
        0x1t
    .end array-data

    nop

    :array_f
    .array-data 1
        0x1t
        0x1t
        0x3t
        0x2t
        0x2t
        0x2t
    .end array-data

    nop

    :array_10
    .array-data 1
        0x1t
        0x2t
        0x3t
        0x1t
        0x2t
        0x2t
    .end array-data

    nop

    :array_11
    .array-data 1
        0x1t
        0x2t
        0x3t
        0x2t
        0x2t
        0x1t
    .end array-data

    nop

    :array_12
    .array-data 1
        0x2t
        0x2t
        0x3t
        0x2t
        0x1t
        0x1t
    .end array-data

    nop

    :array_13
    .array-data 1
        0x2t
        0x2t
        0x1t
        0x1t
        0x3t
        0x2t
    .end array-data

    nop

    :array_14
    .array-data 1
        0x2t
        0x2t
        0x1t
        0x2t
        0x3t
        0x1t
    .end array-data

    nop

    :array_15
    .array-data 1
        0x2t
        0x1t
        0x3t
        0x2t
        0x1t
        0x2t
    .end array-data

    nop

    :array_16
    .array-data 1
        0x2t
        0x2t
        0x3t
        0x1t
        0x1t
        0x2t
    .end array-data

    nop

    :array_17
    .array-data 1
        0x3t
        0x1t
        0x2t
        0x1t
        0x3t
        0x1t
    .end array-data

    nop

    :array_18
    .array-data 1
        0x3t
        0x1t
        0x1t
        0x2t
        0x2t
        0x2t
    .end array-data

    nop

    :array_19
    .array-data 1
        0x3t
        0x2t
        0x1t
        0x1t
        0x2t
        0x2t
    .end array-data

    nop

    :array_1a
    .array-data 1
        0x3t
        0x2t
        0x1t
        0x2t
        0x2t
        0x1t
    .end array-data

    nop

    :array_1b
    .array-data 1
        0x3t
        0x1t
        0x2t
        0x2t
        0x1t
        0x2t
    .end array-data

    nop

    :array_1c
    .array-data 1
        0x3t
        0x2t
        0x2t
        0x1t
        0x1t
        0x2t
    .end array-data

    nop

    :array_1d
    .array-data 1
        0x3t
        0x2t
        0x2t
        0x2t
        0x1t
        0x1t
    .end array-data

    nop

    :array_1e
    .array-data 1
        0x2t
        0x1t
        0x2t
        0x1t
        0x2t
        0x3t
    .end array-data

    nop

    :array_1f
    .array-data 1
        0x2t
        0x1t
        0x2t
        0x3t
        0x2t
        0x1t
    .end array-data

    nop

    :array_20
    .array-data 1
        0x2t
        0x3t
        0x2t
        0x1t
        0x2t
        0x1t
    .end array-data

    nop

    :array_21
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x3t
        0x2t
        0x3t
    .end array-data

    nop

    :array_22
    .array-data 1
        0x1t
        0x3t
        0x1t
        0x1t
        0x2t
        0x3t
    .end array-data

    nop

    :array_23
    .array-data 1
        0x1t
        0x3t
        0x1t
        0x3t
        0x2t
        0x1t
    .end array-data

    nop

    :array_24
    .array-data 1
        0x1t
        0x1t
        0x2t
        0x3t
        0x1t
        0x3t
    .end array-data

    nop

    :array_25
    .array-data 1
        0x1t
        0x3t
        0x2t
        0x1t
        0x1t
        0x3t
    .end array-data

    nop

    :array_26
    .array-data 1
        0x1t
        0x3t
        0x2t
        0x3t
        0x1t
        0x1t
    .end array-data

    nop

    :array_27
    .array-data 1
        0x2t
        0x1t
        0x1t
        0x3t
        0x1t
        0x3t
    .end array-data

    nop

    :array_28
    .array-data 1
        0x2t
        0x3t
        0x1t
        0x1t
        0x1t
        0x3t
    .end array-data

    nop

    :array_29
    .array-data 1
        0x2t
        0x3t
        0x1t
        0x3t
        0x1t
        0x1t
    .end array-data

    nop

    :array_2a
    .array-data 1
        0x1t
        0x1t
        0x2t
        0x1t
        0x3t
        0x3t
    .end array-data

    nop

    :array_2b
    .array-data 1
        0x1t
        0x1t
        0x2t
        0x3t
        0x3t
        0x1t
    .end array-data

    nop

    :array_2c
    .array-data 1
        0x1t
        0x3t
        0x2t
        0x1t
        0x3t
        0x1t
    .end array-data

    nop

    :array_2d
    .array-data 1
        0x1t
        0x1t
        0x3t
        0x1t
        0x2t
        0x3t
    .end array-data

    nop

    :array_2e
    .array-data 1
        0x1t
        0x1t
        0x3t
        0x3t
        0x2t
        0x1t
    .end array-data

    nop

    :array_2f
    .array-data 1
        0x1t
        0x3t
        0x3t
        0x1t
        0x2t
        0x1t
    .end array-data

    nop

    :array_30
    .array-data 1
        0x3t
        0x1t
        0x3t
        0x1t
        0x2t
        0x1t
    .end array-data

    nop

    :array_31
    .array-data 1
        0x2t
        0x1t
        0x1t
        0x3t
        0x3t
        0x1t
    .end array-data

    nop

    :array_32
    .array-data 1
        0x2t
        0x3t
        0x1t
        0x1t
        0x3t
        0x1t
    .end array-data

    nop

    :array_33
    .array-data 1
        0x2t
        0x1t
        0x3t
        0x1t
        0x1t
        0x3t
    .end array-data

    nop

    :array_34
    .array-data 1
        0x2t
        0x1t
        0x3t
        0x3t
        0x1t
        0x1t
    .end array-data

    nop

    :array_35
    .array-data 1
        0x2t
        0x1t
        0x3t
        0x1t
        0x3t
        0x1t
    .end array-data

    nop

    :array_36
    .array-data 1
        0x3t
        0x1t
        0x1t
        0x1t
        0x2t
        0x3t
    .end array-data

    nop

    :array_37
    .array-data 1
        0x3t
        0x1t
        0x1t
        0x3t
        0x2t
        0x1t
    .end array-data

    nop

    :array_38
    .array-data 1
        0x3t
        0x3t
        0x1t
        0x1t
        0x2t
        0x1t
    .end array-data

    nop

    :array_39
    .array-data 1
        0x3t
        0x1t
        0x2t
        0x1t
        0x1t
        0x3t
    .end array-data

    nop

    :array_3a
    .array-data 1
        0x3t
        0x1t
        0x2t
        0x3t
        0x1t
        0x1t
    .end array-data

    nop

    :array_3b
    .array-data 1
        0x3t
        0x3t
        0x2t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_3c
    .array-data 1
        0x3t
        0x1t
        0x4t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_3d
    .array-data 1
        0x2t
        0x2t
        0x1t
        0x4t
        0x1t
        0x1t
    .end array-data

    nop

    :array_3e
    .array-data 1
        0x4t
        0x3t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_3f
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x2t
        0x2t
        0x4t
    .end array-data

    nop

    :array_40
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x4t
        0x2t
        0x2t
    .end array-data

    nop

    :array_41
    .array-data 1
        0x1t
        0x2t
        0x1t
        0x1t
        0x2t
        0x4t
    .end array-data

    nop

    :array_42
    .array-data 1
        0x1t
        0x2t
        0x1t
        0x4t
        0x2t
        0x1t
    .end array-data

    nop

    :array_43
    .array-data 1
        0x1t
        0x4t
        0x1t
        0x1t
        0x2t
        0x2t
    .end array-data

    nop

    :array_44
    .array-data 1
        0x1t
        0x4t
        0x1t
        0x2t
        0x2t
        0x1t
    .end array-data

    nop

    :array_45
    .array-data 1
        0x1t
        0x1t
        0x2t
        0x2t
        0x1t
        0x4t
    .end array-data

    nop

    :array_46
    .array-data 1
        0x1t
        0x1t
        0x2t
        0x4t
        0x1t
        0x2t
    .end array-data

    nop

    :array_47
    .array-data 1
        0x1t
        0x2t
        0x2t
        0x1t
        0x1t
        0x4t
    .end array-data

    nop

    :array_48
    .array-data 1
        0x1t
        0x2t
        0x2t
        0x4t
        0x1t
        0x1t
    .end array-data

    nop

    :array_49
    .array-data 1
        0x1t
        0x4t
        0x2t
        0x1t
        0x1t
        0x2t
    .end array-data

    nop

    :array_4a
    .array-data 1
        0x1t
        0x4t
        0x2t
        0x2t
        0x1t
        0x1t
    .end array-data

    nop

    :array_4b
    .array-data 1
        0x2t
        0x4t
        0x1t
        0x2t
        0x1t
        0x1t
    .end array-data

    nop

    :array_4c
    .array-data 1
        0x2t
        0x2t
        0x1t
        0x1t
        0x1t
        0x4t
    .end array-data

    nop

    :array_4d
    .array-data 1
        0x4t
        0x1t
        0x3t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_4e
    .array-data 1
        0x2t
        0x4t
        0x1t
        0x1t
        0x1t
        0x2t
    .end array-data

    nop

    :array_4f
    .array-data 1
        0x1t
        0x3t
        0x4t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_50
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x2t
        0x4t
        0x2t
    .end array-data

    nop

    :array_51
    .array-data 1
        0x1t
        0x2t
        0x1t
        0x1t
        0x4t
        0x2t
    .end array-data

    nop

    :array_52
    .array-data 1
        0x1t
        0x2t
        0x1t
        0x2t
        0x4t
        0x1t
    .end array-data

    nop

    :array_53
    .array-data 1
        0x1t
        0x1t
        0x4t
        0x2t
        0x1t
        0x2t
    .end array-data

    nop

    :array_54
    .array-data 1
        0x1t
        0x2t
        0x4t
        0x1t
        0x1t
        0x2t
    .end array-data

    nop

    :array_55
    .array-data 1
        0x1t
        0x2t
        0x4t
        0x2t
        0x1t
        0x1t
    .end array-data

    nop

    :array_56
    .array-data 1
        0x4t
        0x1t
        0x1t
        0x2t
        0x1t
        0x2t
    .end array-data

    nop

    :array_57
    .array-data 1
        0x4t
        0x2t
        0x1t
        0x1t
        0x1t
        0x2t
    .end array-data

    nop

    :array_58
    .array-data 1
        0x4t
        0x2t
        0x1t
        0x2t
        0x1t
        0x1t
    .end array-data

    nop

    :array_59
    .array-data 1
        0x2t
        0x1t
        0x2t
        0x1t
        0x4t
        0x1t
    .end array-data

    nop

    :array_5a
    .array-data 1
        0x2t
        0x1t
        0x4t
        0x1t
        0x2t
        0x1t
    .end array-data

    nop

    :array_5b
    .array-data 1
        0x4t
        0x1t
        0x2t
        0x1t
        0x2t
        0x1t
    .end array-data

    nop

    :array_5c
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x4t
        0x3t
    .end array-data

    nop

    :array_5d
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x3t
        0x4t
        0x1t
    .end array-data

    nop

    :array_5e
    .array-data 1
        0x1t
        0x3t
        0x1t
        0x1t
        0x4t
        0x1t
    .end array-data

    nop

    :array_5f
    .array-data 1
        0x1t
        0x1t
        0x4t
        0x1t
        0x1t
        0x3t
    .end array-data

    nop

    :array_60
    .array-data 1
        0x1t
        0x1t
        0x4t
        0x3t
        0x1t
        0x1t
    .end array-data

    nop

    :array_61
    .array-data 1
        0x4t
        0x1t
        0x1t
        0x1t
        0x1t
        0x3t
    .end array-data

    nop

    :array_62
    .array-data 1
        0x4t
        0x1t
        0x1t
        0x3t
        0x1t
        0x1t
    .end array-data

    nop

    :array_63
    .array-data 1
        0x1t
        0x1t
        0x3t
        0x1t
        0x4t
        0x1t
    .end array-data

    nop

    :array_64
    .array-data 1
        0x1t
        0x1t
        0x4t
        0x1t
        0x3t
        0x1t
    .end array-data

    nop

    :array_65
    .array-data 1
        0x3t
        0x1t
        0x1t
        0x1t
        0x4t
        0x1t
    .end array-data

    nop

    :array_66
    .array-data 1
        0x4t
        0x1t
        0x1t
        0x1t
        0x3t
        0x1t
    .end array-data

    nop

    :array_67
    .array-data 1
        0x2t
        0x1t
        0x1t
        0x4t
        0x1t
        0x2t
    .end array-data

    nop

    :array_68
    .array-data 1
        0x2t
        0x1t
        0x1t
        0x2t
        0x1t
        0x4t
    .end array-data

    nop

    :array_69
    .array-data 1
        0x2t
        0x1t
        0x1t
        0x2t
        0x3t
        0x2t
    .end array-data

    nop

    :array_6a
    .array-data 1
        0x2t
        0x3t
        0x3t
        0x1t
        0x1t
        0x1t
        0x2t
    .end array-data
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 1

    .line 233
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getDefaultFont()Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/barcodes/Barcode128;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/font/PdfFont;)V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/font/PdfFont;)V
    .locals 0

    .line 243
    invoke-direct {p0, p1}, Lcom/itextpdf/barcodes/Barcode1D;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 267
    sget-object p1, Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;->AUTO:Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;

    iput-object p1, p0, Lcom/itextpdf/barcodes/Barcode128;->codeSet:Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;

    const p1, 0x3f4ccccd    # 0.8f

    .line 244
    iput p1, p0, Lcom/itextpdf/barcodes/Barcode128;->x:F

    .line 245
    iput-object p2, p0, Lcom/itextpdf/barcodes/Barcode128;->font:Lcom/itextpdf/kernel/font/PdfFont;

    const/high16 p1, 0x41000000    # 8.0f

    .line 246
    iput p1, p0, Lcom/itextpdf/barcodes/Barcode128;->size:F

    .line 247
    iget p1, p0, Lcom/itextpdf/barcodes/Barcode128;->size:F

    iput p1, p0, Lcom/itextpdf/barcodes/Barcode128;->baseline:F

    .line 248
    iget p1, p0, Lcom/itextpdf/barcodes/Barcode128;->size:F

    const/high16 p2, 0x40400000    # 3.0f

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/itextpdf/barcodes/Barcode128;->barHeight:F

    const/4 p1, 0x3

    .line 249
    iput p1, p0, Lcom/itextpdf/barcodes/Barcode128;->textAlignment:I

    const/4 p1, 0x1

    .line 250
    iput p1, p0, Lcom/itextpdf/barcodes/Barcode128;->codeType:I

    return-void
.end method

.method public static getBarsCode128Raw(Ljava/lang/String;)[B
    .locals 7

    const v0, 0xffff

    .line 482
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    .line 484
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 485
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v2, 0x1

    move v3, v2

    .line 486
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 487
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    mul-int/2addr v4, v3

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 488
    :cond_1
    rem-int/lit8 v0, v0, 0x67

    .line 489
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 490
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v2

    const/4 v2, 0x6

    mul-int/2addr v0, v2

    const/4 v3, 0x7

    add-int/2addr v0, v3

    new-array v0, v0, [B

    move v4, v1

    .line 492
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 493
    sget-object v5, Lcom/itextpdf/barcodes/Barcode128;->BARS:[[B

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aget-object v5, v5, v6

    mul-int/lit8 v6, v4, 0x6

    invoke-static {v5, v1, v0, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 494
    :cond_2
    sget-object p0, Lcom/itextpdf/barcodes/Barcode128;->BARS_STOP:[B

    mul-int/2addr v4, v2

    invoke-static {p0, v1, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static getHumanReadableUCCEAN(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 293
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [C

    const/4 v4, 0x0

    const/16 v5, 0xca

    aput-char v5, v3, v4

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([C)V

    .line 295
    :goto_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 296
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    move v6, v4

    :goto_1
    const/4 v7, 0x5

    if-ge v3, v7, :cond_4

    .line 302
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v7, v3, :cond_1

    goto :goto_3

    .line 304
    :cond_1
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 305
    sget-object v7, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    sget-object v7, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_2

    :cond_2
    move v6, v4

    :goto_2
    if-eqz v6, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    move v3, v4

    :goto_4
    if-nez v3, :cond_5

    goto :goto_5

    :cond_5
    const/16 v7, 0x28

    .line 313
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x29

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 314
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    if-lez v6, :cond_7

    sub-int/2addr v6, v3

    .line 317
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v6, :cond_6

    goto :goto_5

    .line 319
    :cond_6
    invoke-virtual {p0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/itextpdf/barcodes/Barcode128;->removeFNC1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 322
    :cond_7
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_8

    .line 329
    :goto_5
    invoke-static {p0}, Lcom/itextpdf/barcodes/Barcode128;->removeFNC1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 325
    :cond_8
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    .line 326
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0
.end method

.method static getPackedRawDigits(Ljava/lang/String;II)Ljava/lang/String;
    .locals 4

    .line 888
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v1, p1

    :goto_0
    if-lez p2, :cond_1

    .line 891
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xca

    if-ne v2, v3, :cond_0

    const/16 v2, 0x66

    .line 892
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p2, p2, -0x2

    add-int/lit8 v2, v1, 0x1

    .line 897
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    add-int/lit8 v1, v1, 0x2

    .line 898
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v2

    int-to-char v2, v3

    .line 899
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 901
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sub-int/2addr v1, p1

    int-to-char p1, v1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRawText(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .line 471
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;->AUTO:Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;

    invoke-static {p0, p1, v0}, Lcom/itextpdf/barcodes/Barcode128;->getRawText(Ljava/lang/String;ZLcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRawText(Ljava/lang/String;ZLcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;)Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 345
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 346
    const-string v3, ""

    const/16 v4, 0x66

    if-nez v2, :cond_1

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Lcom/itextpdf/barcodes/Barcode128;->getStartSymbol(Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 349
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    const/4 v5, 0x0

    move v6, v5

    .line 353
    :goto_0
    const-string v7, "There are illegal characters for barcode 128 in {0}."

    const/16 v8, 0xca

    if-ge v6, v2, :cond_4

    .line 354
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x7f

    if-le v9, v10, :cond_3

    if-ne v9, v8, :cond_2

    goto :goto_1

    .line 356
    :cond_2
    new-instance v0, Lcom/itextpdf/kernel/exceptions/PdfException;

    invoke-direct {v0, v7}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 358
    :cond_4
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 359
    invoke-static/range {p2 .. p2}, Lcom/itextpdf/barcodes/Barcode128;->getStartSymbol(Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;)C

    move-result v9

    .line 361
    sget-object v10, Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;->AUTO:Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;

    const/4 v13, 0x2

    const/16 v14, 0x20

    const/4 v15, 0x1

    if-eq v1, v10, :cond_5

    sget-object v10, Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;->C:Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;

    if-ne v1, v10, :cond_7

    :cond_5
    invoke-static {v0, v5, v13}, Lcom/itextpdf/barcodes/Barcode128;->isNextDigits(Ljava/lang/String;II)Z

    move-result v10

    if-eqz v10, :cond_7

    if-eqz p1, :cond_6

    .line 365
    const-string v3, "if"

    goto :goto_2

    .line 364
    :cond_6
    const-string v3, "i"

    .line 366
    :goto_2
    invoke-static {v0, v5, v13}, Lcom/itextpdf/barcodes/Barcode128;->getPackedRawDigits(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    .line 367
    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 368
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move v6, v9

    const/16 v9, 0x69

    goto :goto_5

    :cond_7
    if-ge v6, v14, :cond_9

    if-eqz p1, :cond_8

    .line 373
    const-string v3, "gf"

    goto :goto_3

    .line 372
    :cond_8
    const-string v3, "g"

    .line 374
    :goto_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v6, v6, 0x40

    int-to-char v6, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move v6, v15

    const/16 v9, 0x67

    goto :goto_5

    .line 377
    :cond_9
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz p1, :cond_a

    .line 379
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_a
    if-ne v6, v8, :cond_b

    .line 381
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 383
    :cond_b
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-int/2addr v6, v14

    int-to-char v6, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_4
    move v6, v15

    .line 386
    :goto_5
    sget-object v10, Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;->AUTO:Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;

    if-eq v1, v10, :cond_d

    invoke-static/range {p2 .. p2}, Lcom/itextpdf/barcodes/Barcode128;->getStartSymbol(Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;)C

    move-result v10

    if-ne v9, v10, :cond_c

    goto :goto_6

    .line 387
    :cond_c
    new-instance v0, Lcom/itextpdf/kernel/exceptions/PdfException;

    invoke-direct {v0, v7}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    :goto_6
    if-ge v6, v2, :cond_19

    const/16 v10, 0x65

    const/16 v11, 0x64

    const/16 v16, 0x68

    const/4 v12, 0x4

    packed-switch v9, :pswitch_data_0

    goto/16 :goto_c

    .line 434
    :pswitch_0
    invoke-static {v0, v6, v13}, Lcom/itextpdf/barcodes/Barcode128;->isNextDigits(Ljava/lang/String;II)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 435
    invoke-static {v0, v6, v13}, Lcom/itextpdf/barcodes/Barcode128;->getPackedRawDigits(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v10

    .line 436
    invoke-virtual {v10, v5}, Ljava/lang/String;->charAt(I)C

    move-result v11

    add-int/2addr v6, v11

    .line 437
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_c

    :cond_e
    add-int/lit8 v12, v6, 0x1

    .line 439
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v8, :cond_f

    .line 441
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move v6, v12

    goto/16 :goto_c

    :cond_f
    if-ge v6, v14, :cond_10

    .line 444
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 445
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v6, v6, 0x40

    int-to-char v6, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move v6, v12

    goto/16 :goto_8

    .line 448
    :cond_10
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 449
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v6, v6, -0x20

    int-to-char v6, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move v6, v12

    goto/16 :goto_b

    .line 413
    :pswitch_1
    sget-object v11, Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;->AUTO:Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;

    if-ne v1, v11, :cond_11

    invoke-static {v0, v6, v12}, Lcom/itextpdf/barcodes/Barcode128;->isNextDigits(Ljava/lang/String;II)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 415
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v9, 0x63

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 416
    invoke-static {v0, v6, v12}, Lcom/itextpdf/barcodes/Barcode128;->getPackedRawDigits(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v9

    .line 417
    invoke-virtual {v9, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    add-int/2addr v6, v10

    .line 418
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_9

    :cond_11
    add-int/lit8 v11, v6, 0x1

    .line 420
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v8, :cond_12

    .line 422
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_7
    move v6, v11

    goto/16 :goto_c

    :cond_12
    if-ge v6, v14, :cond_13

    .line 425
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 426
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v6, v6, 0x40

    int-to-char v6, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move v6, v11

    :goto_8
    const/16 v9, 0x67

    goto/16 :goto_c

    .line 428
    :cond_13
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v6, v6, -0x20

    int-to-char v6, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    .line 391
    :pswitch_2
    sget-object v10, Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;->AUTO:Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;

    if-ne v1, v10, :cond_14

    invoke-static {v0, v6, v12}, Lcom/itextpdf/barcodes/Barcode128;->isNextDigits(Ljava/lang/String;II)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 393
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v9, 0x63

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 394
    invoke-static {v0, v6, v12}, Lcom/itextpdf/barcodes/Barcode128;->getPackedRawDigits(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v9

    .line 395
    invoke-virtual {v9, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    add-int/2addr v6, v10

    .line 396
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_9
    const/16 v9, 0x69

    goto/16 :goto_c

    :cond_14
    add-int/lit8 v10, v6, 0x1

    .line 398
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v8, :cond_15

    .line 400
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_a
    move v6, v10

    goto :goto_c

    :cond_15
    const/16 v12, 0x5f

    if-le v6, v12, :cond_16

    .line 403
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 404
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v6, v6, -0x20

    int-to-char v6, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move v6, v10

    :goto_b
    move/from16 v9, v16

    goto :goto_c

    :cond_16
    if-ge v6, v14, :cond_17

    .line 406
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v6, v6, 0x40

    int-to-char v6, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_a

    .line 408
    :cond_17
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v6, v6, -0x20

    int-to-char v6, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_a

    .line 455
    :goto_c
    sget-object v10, Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;->AUTO:Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;

    if-eq v1, v10, :cond_d

    invoke-static/range {p2 .. p2}, Lcom/itextpdf/barcodes/Barcode128;->getStartSymbol(Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;)C

    move-result v10

    if-ne v9, v10, :cond_18

    goto/16 :goto_6

    .line 456
    :cond_18
    new-instance v0, Lcom/itextpdf/kernel/exceptions/PdfException;

    invoke-direct {v0, v7}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getStartSymbol(Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;)C
    .locals 1

    .line 771
    sget-object v0, Lcom/itextpdf/barcodes/Barcode128$1;->$SwitchMap$com$itextpdf$barcodes$Barcode128$Barcode128CodeSet:[I

    invoke-virtual {p0}, Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/16 p0, 0x68

    return p0

    :cond_0
    const/16 p0, 0x69

    return p0

    :cond_1
    const/16 p0, 0x67

    return p0
.end method

.method static isNextDigits(Ljava/lang/String;II)Z
    .locals 5

    .line 857
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_0
    :goto_0
    const/4 v1, 0x0

    if-ge p1, v0, :cond_5

    if-lez p2, :cond_5

    .line 859
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xca

    if-ne v2, v3, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    .line 863
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int v3, p1, v2

    if-le v3, v0, :cond_2

    return v1

    :cond_2
    :goto_1
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_0

    add-int/lit8 v2, p1, 0x1

    .line 868
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v4, 0x30

    if-lt p1, v4, :cond_4

    const/16 v4, 0x39

    if-le p1, v4, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 p2, p2, -0x1

    move p1, v2

    move v2, v3

    goto :goto_1

    :cond_4
    :goto_2
    return v1

    :cond_5
    if-nez p2, :cond_6

    const/4 v1, 0x1

    :cond_6
    return v1
.end method

.method public static removeFNC1(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 275
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 278
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-lt v3, v4, :cond_0

    const/16 v4, 0x7e

    if-gt v3, v4, :cond_0

    .line 280
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 282
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public createAwtImage(Ljava/awt/Color;Ljava/awt/Color;)Ljava/awt/Image;
    .locals 17

    move-object/from16 v0, p0

    if-nez p1, :cond_0

    .line 731
    iget-object v1, v0, Lcom/itextpdf/barcodes/Barcode128;->DEFAULT_BAR_FOREGROUND_COLOR:Ljava/awt/Color;

    invoke-virtual {v1}, Ljava/awt/Color;->getRGB()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/awt/Color;->getRGB()I

    move-result v1

    :goto_0
    if-nez p2, :cond_1

    .line 732
    iget-object v2, v0, Lcom/itextpdf/barcodes/Barcode128;->DEFAULT_BAR_BACKGROUND_COLOR:Ljava/awt/Color;

    invoke-virtual {v2}, Ljava/awt/Color;->getRGB()I

    move-result v2

    goto :goto_1

    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/awt/Color;->getRGB()I

    move-result v2

    .line 733
    :goto_1
    new-instance v3, Ljava/awt/Canvas;

    invoke-direct {v3}, Ljava/awt/Canvas;-><init>()V

    .line 735
    iget v4, v0, Lcom/itextpdf/barcodes/Barcode128;->codeType:I

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne v4, v5, :cond_3

    .line 736
    iget-object v4, v0, Lcom/itextpdf/barcodes/Barcode128;->code:Ljava/lang/String;

    const v5, 0xffff

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_2

    .line 738
    iget-object v5, v0, Lcom/itextpdf/barcodes/Barcode128;->code:Ljava/lang/String;

    invoke-virtual {v5, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 740
    :cond_2
    iget-object v4, v0, Lcom/itextpdf/barcodes/Barcode128;->code:Ljava/lang/String;

    goto :goto_3

    .line 743
    :cond_3
    iget-object v4, v0, Lcom/itextpdf/barcodes/Barcode128;->code:Ljava/lang/String;

    iget v5, v0, Lcom/itextpdf/barcodes/Barcode128;->codeType:I

    if-ne v5, v6, :cond_4

    move v5, v7

    goto :goto_2

    :cond_4
    move v5, v8

    :goto_2
    invoke-static {v4, v5}, Lcom/itextpdf/barcodes/Barcode128;->getRawText(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 745
    :goto_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0xb

    add-int/lit8 v14, v5, 0x2

    .line 747
    invoke-static {v4}, Lcom/itextpdf/barcodes/Barcode128;->getBarsCode128Raw(Ljava/lang/String;)[B

    move-result-object v4

    .line 751
    iget v5, v0, Lcom/itextpdf/barcodes/Barcode128;->barHeight:F

    float-to-int v11, v5

    mul-int v5, v14, v11

    .line 752
    new-array v12, v5, [I

    move v6, v8

    move v9, v6

    .line 753
    :goto_4
    array-length v10, v4

    if-ge v6, v10, :cond_7

    .line 754
    aget-byte v10, v4, v6

    if-eqz v7, :cond_5

    move v13, v1

    goto :goto_5

    :cond_5
    move v13, v2

    :goto_5
    xor-int/lit8 v7, v7, 0x1

    move v15, v8

    :goto_6
    if-ge v15, v10, :cond_6

    add-int/lit8 v16, v9, 0x1

    .line 761
    aput v13, v12, v9

    add-int/lit8 v15, v15, 0x1

    move/from16 v9, v16

    goto :goto_6

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_7
    move v1, v14

    :goto_7
    if-ge v1, v5, :cond_8

    .line 765
    invoke-static {v12, v8, v12, v1, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v14

    goto :goto_7

    .line 767
    :cond_8
    new-instance v1, Ljava/awt/image/MemoryImageSource;

    const/4 v13, 0x0

    move-object v9, v1

    move v10, v14

    invoke-direct/range {v9 .. v14}, Ljava/awt/image/MemoryImageSource;-><init>(II[III)V

    invoke-virtual {v3, v1}, Ljava/awt/Canvas;->createImage(Ljava/awt/image/ImageProducer;)Ljava/awt/Image;

    move-result-object v1

    return-object v1
.end method

.method public getBarcodeSize()Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 9

    .line 509
    iget-object v0, p0, Lcom/itextpdf/barcodes/Barcode128;->font:Lcom/itextpdf/kernel/font/PdfFont;

    const/4 v1, 0x1

    const v2, 0xffff

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v0, :cond_5

    .line 510
    iget v0, p0, Lcom/itextpdf/barcodes/Barcode128;->baseline:F

    cmpl-float v0, v0, v5

    if-lez v0, :cond_0

    .line 511
    iget v0, p0, Lcom/itextpdf/barcodes/Barcode128;->baseline:F

    invoke-virtual {p0}, Lcom/itextpdf/barcodes/Barcode128;->getDescender()F

    move-result v5

    sub-float/2addr v0, v5

    goto :goto_0

    .line 513
    :cond_0
    iget v0, p0, Lcom/itextpdf/barcodes/Barcode128;->baseline:F

    neg-float v0, v0

    iget v5, p0, Lcom/itextpdf/barcodes/Barcode128;->size:F

    add-float/2addr v0, v5

    :goto_0
    move v5, v0

    .line 515
    iget v0, p0, Lcom/itextpdf/barcodes/Barcode128;->codeType:I

    if-ne v0, v3, :cond_2

    .line 516
    iget-object v0, p0, Lcom/itextpdf/barcodes/Barcode128;->code:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    .line 518
    const-string v0, ""

    goto :goto_1

    .line 520
    :cond_1
    iget-object v6, p0, Lcom/itextpdf/barcodes/Barcode128;->code:Ljava/lang/String;

    add-int/2addr v0, v1

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 522
    :cond_2
    iget v0, p0, Lcom/itextpdf/barcodes/Barcode128;->codeType:I

    if-ne v0, v4, :cond_3

    .line 523
    iget-object v0, p0, Lcom/itextpdf/barcodes/Barcode128;->code:Ljava/lang/String;

    invoke-static {v0}, Lcom/itextpdf/barcodes/Barcode128;->getHumanReadableUCCEAN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 525
    :cond_3
    iget-object v0, p0, Lcom/itextpdf/barcodes/Barcode128;->code:Ljava/lang/String;

    invoke-static {v0}, Lcom/itextpdf/barcodes/Barcode128;->removeFNC1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 527
    :goto_1
    iget-object v6, p0, Lcom/itextpdf/barcodes/Barcode128;->font:Lcom/itextpdf/kernel/font/PdfFont;

    iget-object v7, p0, Lcom/itextpdf/barcodes/Barcode128;->altText:Ljava/lang/String;

    if-eqz v7, :cond_4

    iget-object v0, p0, Lcom/itextpdf/barcodes/Barcode128;->altText:Ljava/lang/String;

    :cond_4
    iget v7, p0, Lcom/itextpdf/barcodes/Barcode128;->size:F

    invoke-virtual {v6, v0, v7}, Lcom/itextpdf/kernel/font/PdfFont;->getWidth(Ljava/lang/String;F)F

    move-result v0

    move v8, v5

    move v5, v0

    move v0, v8

    goto :goto_2

    :cond_5
    move v0, v5

    .line 529
    :goto_2
    iget v6, p0, Lcom/itextpdf/barcodes/Barcode128;->codeType:I

    const/4 v7, 0x0

    if-ne v6, v3, :cond_7

    .line 530
    iget-object v1, p0, Lcom/itextpdf/barcodes/Barcode128;->code:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_6

    .line 532
    iget-object v2, p0, Lcom/itextpdf/barcodes/Barcode128;->code:Ljava/lang/String;

    invoke-virtual {v2, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 534
    :cond_6
    iget-object v1, p0, Lcom/itextpdf/barcodes/Barcode128;->code:Ljava/lang/String;

    goto :goto_4

    .line 536
    :cond_7
    iget-object v2, p0, Lcom/itextpdf/barcodes/Barcode128;->code:Ljava/lang/String;

    iget v3, p0, Lcom/itextpdf/barcodes/Barcode128;->codeType:I

    if-ne v3, v4, :cond_8

    goto :goto_3

    :cond_8
    move v1, v7

    :goto_3
    iget-object v3, p0, Lcom/itextpdf/barcodes/Barcode128;->codeSet:Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;

    invoke-static {v2, v1, v3}, Lcom/itextpdf/barcodes/Barcode128;->getRawText(Ljava/lang/String;ZLcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;)Ljava/lang/String;

    move-result-object v1

    .line 538
    :goto_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v4

    mul-int/lit8 v1, v1, 0xb

    int-to-float v1, v1

    .line 539
    iget v2, p0, Lcom/itextpdf/barcodes/Barcode128;->x:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    iget v3, p0, Lcom/itextpdf/barcodes/Barcode128;->x:F

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    .line 540
    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 541
    iget v2, p0, Lcom/itextpdf/barcodes/Barcode128;->barHeight:F

    add-float/2addr v2, v0

    .line 543
    new-instance v0, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    return-object v0
.end method

.method public getCodeSet()Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/itextpdf/barcodes/Barcode128;->codeSet:Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;

    return-object v0
.end method

.method public placeBarcode(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/colors/Color;Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    .line 588
    iget v1, v0, Lcom/itextpdf/barcodes/Barcode128;->codeType:I

    const v2, 0xffff

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x3

    if-ne v1, v5, :cond_1

    .line 589
    iget-object v1, v0, Lcom/itextpdf/barcodes/Barcode128;->code:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_0

    .line 591
    const-string v1, ""

    goto :goto_0

    .line 593
    :cond_0
    iget-object v6, v0, Lcom/itextpdf/barcodes/Barcode128;->code:Ljava/lang/String;

    add-int/2addr v1, v4

    invoke-virtual {v6, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 595
    :cond_1
    iget v1, v0, Lcom/itextpdf/barcodes/Barcode128;->codeType:I

    if-ne v1, v3, :cond_2

    .line 596
    iget-object v1, v0, Lcom/itextpdf/barcodes/Barcode128;->code:Ljava/lang/String;

    invoke-static {v1}, Lcom/itextpdf/barcodes/Barcode128;->getHumanReadableUCCEAN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 598
    :cond_2
    iget-object v1, v0, Lcom/itextpdf/barcodes/Barcode128;->code:Ljava/lang/String;

    invoke-static {v1}, Lcom/itextpdf/barcodes/Barcode128;->removeFNC1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 601
    :goto_0
    iget-object v6, v0, Lcom/itextpdf/barcodes/Barcode128;->font:Lcom/itextpdf/kernel/font/PdfFont;

    const/4 v7, 0x0

    if-eqz v6, :cond_4

    .line 602
    iget-object v6, v0, Lcom/itextpdf/barcodes/Barcode128;->font:Lcom/itextpdf/kernel/font/PdfFont;

    iget-object v8, v0, Lcom/itextpdf/barcodes/Barcode128;->altText:Ljava/lang/String;

    if-eqz v8, :cond_3

    iget-object v1, v0, Lcom/itextpdf/barcodes/Barcode128;->altText:Ljava/lang/String;

    :cond_3
    iget v8, v0, Lcom/itextpdf/barcodes/Barcode128;->size:F

    invoke-virtual {v6, v1, v8}, Lcom/itextpdf/kernel/font/PdfFont;->getWidth(Ljava/lang/String;F)F

    move-result v6

    move-object v12, v1

    goto :goto_1

    :cond_4
    move-object v12, v1

    move v6, v7

    .line 605
    :goto_1
    iget v1, v0, Lcom/itextpdf/barcodes/Barcode128;->codeType:I

    const/4 v8, 0x0

    if-ne v1, v5, :cond_6

    .line 606
    iget-object v1, v0, Lcom/itextpdf/barcodes/Barcode128;->code:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_5

    .line 608
    iget-object v2, v0, Lcom/itextpdf/barcodes/Barcode128;->code:Ljava/lang/String;

    invoke-virtual {v2, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 610
    :cond_5
    iget-object v1, v0, Lcom/itextpdf/barcodes/Barcode128;->code:Ljava/lang/String;

    goto :goto_3

    .line 612
    :cond_6
    iget-object v1, v0, Lcom/itextpdf/barcodes/Barcode128;->code:Ljava/lang/String;

    iget v2, v0, Lcom/itextpdf/barcodes/Barcode128;->codeType:I

    if-ne v2, v3, :cond_7

    move v2, v4

    goto :goto_2

    :cond_7
    move v2, v8

    :goto_2
    iget-object v5, v0, Lcom/itextpdf/barcodes/Barcode128;->codeSet:Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;

    invoke-static {v1, v2, v5}, Lcom/itextpdf/barcodes/Barcode128;->getRawText(Ljava/lang/String;ZLcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;)Ljava/lang/String;

    move-result-object v1

    .line 614
    :goto_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0xb

    int-to-float v2, v2

    .line 615
    iget v5, v0, Lcom/itextpdf/barcodes/Barcode128;->x:F

    mul-float/2addr v2, v5

    iget v5, v0, Lcom/itextpdf/barcodes/Barcode128;->x:F

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v5, v9

    add-float/2addr v2, v5

    .line 618
    iget v5, v0, Lcom/itextpdf/barcodes/Barcode128;->textAlignment:I

    if-eq v5, v4, :cond_b

    if-eq v5, v3, :cond_9

    cmpl-float v3, v6, v2

    if-lez v3, :cond_8

    sub-float/2addr v6, v2

    div-float/2addr v6, v9

    goto :goto_4

    :cond_8
    sub-float/2addr v2, v6

    div-float/2addr v2, v9

    goto :goto_5

    :cond_9
    cmpl-float v3, v6, v2

    if-lez v3, :cond_a

    sub-float/2addr v6, v2

    :goto_4
    move v13, v7

    goto :goto_6

    :cond_a
    sub-float/2addr v2, v6

    :goto_5
    move v13, v2

    move v6, v7

    goto :goto_6

    :cond_b
    move v6, v7

    move v13, v6

    .line 638
    :goto_6
    iget-object v2, v0, Lcom/itextpdf/barcodes/Barcode128;->font:Lcom/itextpdf/kernel/font/PdfFont;

    if-eqz v2, :cond_d

    .line 639
    iget v2, v0, Lcom/itextpdf/barcodes/Barcode128;->baseline:F

    cmpg-float v2, v2, v7

    if-gtz v2, :cond_c

    .line 640
    iget v2, v0, Lcom/itextpdf/barcodes/Barcode128;->barHeight:F

    iget v3, v0, Lcom/itextpdf/barcodes/Barcode128;->baseline:F

    sub-float/2addr v2, v3

    move v15, v2

    move v14, v7

    goto :goto_7

    .line 642
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/barcodes/Barcode128;->getDescender()F

    move-result v2

    neg-float v7, v2

    .line 643
    iget v2, v0, Lcom/itextpdf/barcodes/Barcode128;->baseline:F

    add-float/2addr v2, v7

    move v14, v2

    move v15, v7

    goto :goto_7

    :cond_d
    move v14, v7

    move v15, v14

    .line 646
    :goto_7
    invoke-static {v1}, Lcom/itextpdf/barcodes/Barcode128;->getBarsCode128Raw(Ljava/lang/String;)[B

    move-result-object v9

    if-eqz p2, :cond_e

    .line 649
    invoke-virtual/range {p1 .. p2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFillColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    :cond_e
    move/from16 v16, v4

    move/from16 v21, v8

    move v8, v6

    move/from16 v6, v21

    .line 651
    :goto_8
    array-length v1, v9

    if-ge v6, v1, :cond_10

    .line 652
    aget-byte v1, v9, v6

    int-to-float v1, v1

    iget v2, v0, Lcom/itextpdf/barcodes/Barcode128;->x:F

    mul-float v17, v1, v2

    if-eqz v16, :cond_f

    float-to-double v2, v8

    float-to-double v4, v14

    .line 654
    iget v1, v0, Lcom/itextpdf/barcodes/Barcode128;->inkSpreading:F

    sub-float v1, v17, v1

    move/from16 p2, v6

    float-to-double v6, v1

    iget v1, v0, Lcom/itextpdf/barcodes/Barcode128;->barHeight:F

    move/from16 v19, v8

    move-object/from16 v18, v9

    float-to-double v8, v1

    move-object/from16 v1, p1

    move/from16 v20, p2

    invoke-virtual/range {v1 .. v9}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->rectangle(DDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_9

    :cond_f
    move/from16 v20, v6

    move/from16 v19, v8

    move-object/from16 v18, v9

    :goto_9
    xor-int/lit8 v16, v16, 0x1

    add-float v8, v19, v17

    add-int/lit8 v6, v20, 0x1

    move-object/from16 v9, v18

    goto :goto_8

    .line 659
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->fill()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 660
    iget-object v1, v0, Lcom/itextpdf/barcodes/Barcode128;->font:Lcom/itextpdf/kernel/font/PdfFont;

    if-eqz v1, :cond_12

    if-eqz v11, :cond_11

    .line 662
    invoke-virtual {v10, v11}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFillColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 664
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->beginText()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 665
    iget-object v1, v0, Lcom/itextpdf/barcodes/Barcode128;->font:Lcom/itextpdf/kernel/font/PdfFont;

    iget v2, v0, Lcom/itextpdf/barcodes/Barcode128;->size:F

    invoke-virtual {v10, v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFontAndSize(Lcom/itextpdf/kernel/font/PdfFont;F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 666
    invoke-virtual {v10, v13, v15}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setTextMatrix(FF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 667
    invoke-virtual {v10, v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->showText(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 668
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endText()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 670
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/barcodes/Barcode128;->getBarcodeSize()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    return-object v1
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 10

    .line 683
    invoke-virtual {p0}, Lcom/itextpdf/barcodes/Barcode128;->getCodeType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const-string v0, "("

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 685
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    if-ltz v2, :cond_8

    const/16 v3, 0x29

    .line 687
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-ltz v3, :cond_7

    add-int/lit8 v2, v2, 0x1

    .line 691
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 692
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v1, :cond_6

    .line 695
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 696
    sget-object v4, Lcom/itextpdf/barcodes/Barcode128;->ais:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_5

    .line 700
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 701
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 702
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "0"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    const/16 v5, 0x28

    .line 704
    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    if-gez v5, :cond_1

    .line 705
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    goto :goto_1

    :cond_1
    move v7, v5

    .line 706
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {p1, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-gez v4, :cond_2

    if-ltz v5, :cond_3

    const/16 v2, 0xca

    .line 709
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    sub-int/2addr v7, v3

    sub-int/2addr v7, v6

    .line 711
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v7, v2

    if-ne v7, v4, :cond_4

    :cond_3
    :goto_2
    move v2, v5

    goto :goto_0

    .line 712
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid AI length"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 698
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "AI not found"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 693
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "AI is too short"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 689
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Badly formed ucc string"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 715
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/itextpdf/barcodes/Barcode1D;->setCode(Ljava/lang/String;)V

    goto :goto_3

    .line 717
    :cond_9
    invoke-super {p0, p1}, Lcom/itextpdf/barcodes/Barcode1D;->setCode(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public setCodeSet(Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/itextpdf/barcodes/Barcode128;->codeSet:Lcom/itextpdf/barcodes/Barcode128$Barcode128CodeSet;

    return-void
.end method
