package com.google.zxing.maxicode.decoder;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.FrameMetricsAggregator;
import androidx.recyclerview.widget.ItemTouchHelper;
import com.facebook.internal.FacebookRequestErrorClassification;
import com.google.android.gms.identity.intents.AddressConstants;
import com.google.android.gms.wallet.WalletConstants;
import com.google.android.material.internal.ViewUtils;
import com.google.zxing.common.BitMatrix;
import com.itextpdf.kernel.pdf.canvas.wmf.MetaDo;
import com.itextpdf.kernel.xmp.XMPError;
import com.itextpdf.p017io.codec.TIFFConstants;
import org.bouncycastle.asn1.BERTags;
import org.bouncycastle.math.Primes;
import org.objectweb.asm.Opcodes;

/* JADX INFO: loaded from: classes6.dex */
final class BitMatrixParser {
    private static final int[][] BITNR;
    private final BitMatrix bitMatrix;

    static {
        int[] iArr = new int[30];
        // fill-array-data instruction
        iArr[0] = 419;
        iArr[1] = 418;
        iArr[2] = 425;
        iArr[3] = 424;
        iArr[4] = 431;
        iArr[5] = 430;
        iArr[6] = 107;
        iArr[7] = 106;
        iArr[8] = 59;
        iArr[9] = 58;
        iArr[10] = -3;
        iArr[11] = -3;
        iArr[12] = -3;
        iArr[13] = -3;
        iArr[14] = -3;
        iArr[15] = -3;
        iArr[16] = -3;
        iArr[17] = -3;
        iArr[18] = -3;
        iArr[19] = 23;
        iArr[20] = 89;
        iArr[21] = 88;
        iArr[22] = 437;
        iArr[23] = 436;
        iArr[24] = 443;
        iArr[25] = 442;
        iArr[26] = 449;
        iArr[27] = 448;
        iArr[28] = 836;
        iArr[29] = 835;
        BITNR = new int[][]{new int[]{121, 120, 127, 126, 133, 132, Opcodes.F2I, Opcodes.L2D, Opcodes.I2B, Opcodes.D2F, Opcodes.DCMPL, Opcodes.FCMPG, 157, 156, Opcodes.IF_ICMPGT, Opcodes.IF_ICMPGE, Opcodes.RET, Opcodes.JSR, Opcodes.DRETURN, Opcodes.FRETURN, Opcodes.PUTFIELD, Opcodes.GETFIELD, Opcodes.NEW, Opcodes.INVOKEDYNAMIC, Opcodes.INSTANCEOF, 192, Opcodes.IFNONNULL, Opcodes.IFNULL, -2, -2}, new int[]{123, 122, 129, 128, 135, 134, Opcodes.F2D, Opcodes.F2L, Opcodes.I2S, Opcodes.I2C, 153, Opcodes.DCMPG, Opcodes.IF_ICMPEQ, 158, Opcodes.IF_ACMPEQ, Opcodes.IF_ICMPLE, Opcodes.LOOKUPSWITCH, Opcodes.TABLESWITCH, Opcodes.RETURN, Opcodes.ARETURN, Opcodes.INVOKESPECIAL, Opcodes.INVOKEVIRTUAL, Opcodes.ANEWARRAY, 188, Opcodes.MONITOREXIT, Opcodes.MONITORENTER, XMPError.BADXML, 200, 816, -3}, new int[]{125, 124, 131, 130, Opcodes.L2F, 136, Opcodes.D2L, Opcodes.D2I, Opcodes.FCMPL, Opcodes.LCMP, 155, 154, Opcodes.IF_ICMPLT, Opcodes.IF_ICMPNE, Opcodes.GOTO, Opcodes.IF_ACMPNE, Opcodes.LRETURN, Opcodes.IRETURN, Opcodes.PUTSTATIC, Opcodes.GETSTATIC, Opcodes.INVOKEINTERFACE, Opcodes.INVOKESTATIC, Opcodes.ATHROW, 190, Opcodes.MULTIANEWARRAY, 196, XMPError.BADXMP, XMPError.BADRDF, 818, 817}, new int[]{TIFFConstants.TIFFTAG_YRESOLUTION, TIFFConstants.TIFFTAG_XRESOLUTION, TIFFConstants.TIFFTAG_SAMPLESPERPIXEL, 276, TIFFConstants.TIFFTAG_MAKE, TIFFConstants.TIFFTAG_IMAGEDESCRIPTION, TIFFConstants.TIFFTAG_CELLLENGTH, 264, 259, 258, 253, 252, MetaDo.META_CREATEPALETTE, 246, 241, 240, 235, 234, 229, 228, 223, 222, 217, 216, Primes.SMALL_FACTOR_LIMIT, 210, 205, XMPError.BADSTREAM, 819, -3}, new int[]{TIFFConstants.TIFFTAG_PAGENAME, TIFFConstants.TIFFTAG_PLANARCONFIG, TIFFConstants.TIFFTAG_STRIPBYTECOUNTS, TIFFConstants.TIFFTAG_ROWSPERSTRIP, TIFFConstants.TIFFTAG_STRIPOFFSETS, TIFFConstants.TIFFTAG_MODEL, 267, TIFFConstants.TIFFTAG_FILLORDER, MetaDo.META_SETRELABS, MetaDo.META_SETROP2, 255, TIFFConstants.TIFFTAG_SUBFILETYPE, 249, 248, 243, 242, 237, 236, 231, 230, 225, BERTags.FLAGS, 219, 218, 213, 212, 207, 206, 821, 820}, new int[]{TIFFConstants.TIFFTAG_YPOSITION, TIFFConstants.TIFFTAG_XPOSITION, TIFFConstants.TIFFTAG_MAXSAMPLEVALUE, TIFFConstants.TIFFTAG_MINSAMPLEVALUE, 275, TIFFConstants.TIFFTAG_ORIENTATION, TIFFConstants.TIFFTAG_DOCUMENTNAME, 268, 263, 262, 257, 256, 251, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, 245, 244, 239, 238, 233, 232, 227, 226, 221, 220, 215, 214, 209, 208, 822, -3}, new int[]{TIFFConstants.TIFFTAG_FREEBYTECOUNTS, TIFFConstants.TIFFTAG_FREEOFFSETS, MetaDo.META_RESTOREDC, 294, 301, 300, 307, 306, 313, 312, TIFFConstants.TIFFTAG_PRIMARYCHROMATICITIES, 318, TIFFConstants.TIFFTAG_TILEBYTECOUNTS, TIFFConstants.TIFFTAG_TILEOFFSETS, 331, TIFFConstants.TIFFTAG_SUBIFD, TIFFConstants.TIFFTAG_TARGETPRINTER, TIFFConstants.TIFFTAG_DOTRANGE, 343, 342, 349, 348, 355, 354, 361, 360, 367, 366, 824, 823}, new int[]{TIFFConstants.TIFFTAG_GRAYRESPONSECURVE, TIFFConstants.TIFFTAG_GRAYRESPONSEUNIT, TIFFConstants.TIFFTAG_PAGENUMBER, TIFFConstants.TIFFTAG_RESOLUTIONUNIT, 303, 302, 309, 308, 315, 314, TIFFConstants.TIFFTAG_HALFTONEHINTS, TIFFConstants.TIFFTAG_COLORMAP, TIFFConstants.TIFFTAG_CLEANFAXDATA, TIFFConstants.TIFFTAG_BADFAXLINES, TIFFConstants.TIFFTAG_INKNAMES, TIFFConstants.TIFFTAG_INKSET, TIFFConstants.TIFFTAG_SAMPLEFORMAT, TIFFConstants.TIFFTAG_EXTRASAMPLES, 345, 344, 351, 350, 357, 356, 363, 362, 369, 368, 825, -3}, new int[]{TIFFConstants.TIFFTAG_GROUP4OPTIONS, TIFFConstants.TIFFTAG_GROUP3OPTIONS, MetaDo.META_PAINTREGION, MetaDo.META_INVERTREGION, 305, 304, 311, 310, 317, 316, TIFFConstants.TIFFTAG_TILELENGTH, 322, 329, TIFFConstants.TIFFTAG_CONSECUTIVEBADFAXLINES, 335, TIFFConstants.TIFFTAG_NUMBEROFINKS, 341, TIFFConstants.TIFFTAG_SMINSAMPLEVALUE, TIFFConstants.TIFFTAG_JPEGTABLES, 346, 353, 352, 359, 358, 365, 364, 371, 370, 827, 826}, new int[]{WalletConstants.ERROR_CODE_BUYER_ACCOUNT_ERROR, 408, TypedValues.CycleType.TYPE_ALPHA, 402, 397, 396, 391, 390, 79, 78, -2, -2, 13, 12, 37, 36, 2, -1, 44, 43, 109, 108, 385, 384, 379, 378, 373, 372, 828, -3}, new int[]{WalletConstants.ERROR_CODE_AUTHENTICATION_FAILURE, WalletConstants.ERROR_CODE_INVALID_TRANSACTION, WalletConstants.ERROR_CODE_MERCHANT_ACCOUNT_ERROR, WalletConstants.ERROR_CODE_INVALID_PARAMETERS, 399, 398, 393, 392, 81, 80, 40, -2, 15, 14, 39, 38, 3, -1, -1, 45, 111, 110, 387, 386, 381, 380, 375, 374, 830, 829}, new int[]{WalletConstants.ERROR_CODE_UNKNOWN, 412, 407, WalletConstants.ERROR_CODE_SPENDING_LIMIT_EXCEEDED, TypedValues.CycleType.TYPE_CURVE_FIT, 400, 395, 394, 83, 82, 41, -3, -3, -3, -3, -3, 5, 4, 47, 46, 113, 112, 389, 388, 383, 382, 377, 376, 831, -3}, new int[]{415, 414, 421, TypedValues.CycleType.TYPE_EASING, 427, 426, 103, 102, 55, 54, 16, -3, -3, -3, -3, -3, -3, -3, 20, 19, 85, 84, 433, 432, 439, 438, 445, 444, 833, 832}, new int[]{417, TypedValues.CycleType.TYPE_PATH_ROTATE, TypedValues.CycleType.TYPE_WAVE_PERIOD, TypedValues.CycleType.TYPE_CUSTOM_WAVE_SHAPE, 429, 428, 105, 104, 57, 56, -3, -3, -3, -3, -3, -3, -3, -3, 22, 21, 87, 86, 435, 434, 441, 440, 447, 446, 834, -3}, iArr, new int[]{481, 480, 475, 474, 469, 468, 48, -2, 30, -3, -3, -3, -3, -3, -3, -3, -3, -3, -3, 0, 53, 52, 463, 462, 457, 456, 451, 450, 837, -3}, new int[]{483, 482, 477, 476, 471, 470, 49, -1, -2, -3, -3, -3, -3, -3, -3, -3, -3, -3, -3, -3, -2, -1, 465, 464, 459, FacebookRequestErrorClassification.ESC_APP_NOT_INSTALLED, 453, 452, 839, 838}, new int[]{485, 484, 479, 478, 473, 472, 51, 50, 31, -3, -3, -3, -3, -3, -3, -3, -3, -3, -3, 1, -2, 42, 467, 466, 461, 460, 455, 454, 840, -3}, new int[]{487, 486, FacebookRequestErrorClassification.ESC_APP_INACTIVE, 492, 499, 498, 97, 96, 61, 60, -3, -3, -3, -3, -3, -3, -3, -3, -3, 26, 91, 90, 505, TypedValues.PositionType.TYPE_PERCENT_HEIGHT, FrameMetricsAggregator.EVERY_DURATION, TypedValues.PositionType.TYPE_POSITION_TYPE, TIFFConstants.TIFFTAG_JPEGLOSSLESSPREDICTORS, 516, 842, 841}, new int[]{489, 488, 495, 494, TypedValues.PositionType.TYPE_TRANSITION_EASING, 500, 99, 98, 63, 62, -3, -3, -3, -3, -3, -3, -3, -3, 28, 27, 93, 92, TypedValues.PositionType.TYPE_PERCENT_Y, TypedValues.PositionType.TYPE_PERCENT_X, 513, 512, TIFFConstants.TIFFTAG_JPEGQTABLES, TIFFConstants.TIFFTAG_JPEGPOINTTRANSFORM, 843, -3}, new int[]{491, 490, 497, MetaDo.META_DELETEOBJECT, TypedValues.PositionType.TYPE_PERCENT_WIDTH, TypedValues.PositionType.TYPE_DRAWPATH, 101, 100, 65, 64, 17, -3, -3, -3, -3, -3, -3, -3, 18, 29, 95, 94, 509, TypedValues.PositionType.TYPE_CURVE_FIT, TIFFConstants.TIFFTAG_JPEGRESTARTINTERVAL, TIFFConstants.TIFFTAG_JPEGIFBYTECOUNT, 521, TIFFConstants.TIFFTAG_JPEGDCTABLES, 845, 844}, new int[]{559, 558, 553, MetaDo.META_FILLREGION, 547, 546, 541, 540, 73, 72, 32, -3, -3, -3, -3, -3, -3, 10, 67, 66, 115, 114, 535, 534, 529, 528, MetaDo.META_SETWINDOWORG, MetaDo.META_SETTEXTJUSTIFICATION, 846, -3}, new int[]{MetaDo.META_SETMAPPERFLAGS, 560, AddressConstants.ErrorCodes.ERROR_CODE_NO_APPLICABLE_ADDRESSES, 554, 549, 548, 543, 542, 75, 74, -2, -1, 7, 6, 35, 34, 11, -2, 69, 68, 117, 116, 537, 536, 531, TIFFConstants.TIFFTAG_YCBCRSUBSAMPLING, MetaDo.META_SETVIEWPORTORG, MetaDo.META_SETWINDOWEXT, 848, 847}, new int[]{563, 562, 557, 556, 551, 550, 545, MetaDo.META_OFFSETCLIPRGN, 77, 76, -2, 33, 9, 8, 25, 24, -1, -2, 71, 70, 119, 118, 539, 538, 533, 532, MetaDo.META_OFFSETWINDOWORG, MetaDo.META_SETVIEWPORTEXT, 849, -3}, new int[]{565, MetaDo.META_SELECTPALETTE, 571, 570, 577, 576, 583, 582, 589, 588, 595, 594, 601, 600, TypedValues.MotionType.TYPE_PATHMOTION_ARC, TypedValues.MotionType.TYPE_ANIMATE_CIRCLEANGLE_TO, 613, TypedValues.MotionType.TYPE_QUANTIZE_INTERPOLATOR_ID, 619, 618, 625, 624, 631, 630, 637, 636, 643, 642, 851, 850}, new int[]{567, 566, 573, 572, 579, 578, 585, 584, 591, 590, 597, 596, TypedValues.MotionType.TYPE_EASING, TypedValues.MotionType.TYPE_QUANTIZE_MOTION_PHASE, TypedValues.MotionType.TYPE_POLAR_RELATIVETO, TypedValues.MotionType.TYPE_DRAW_PATH, 615, 614, 621, 620, 627, 626, 633, 632, 639, 638, 645, 644, 852, -3}, new int[]{569, 568, 575, 574, 581, 580, 587, 586, 593, 592, 599, 598, TypedValues.MotionType.TYPE_ANIMATE_RELATIVE_TO, TypedValues.MotionType.TYPE_QUANTIZE_INTERPOLATOR, TypedValues.MotionType.TYPE_QUANTIZE_INTERPOLATOR_TYPE, TypedValues.MotionType.TYPE_QUANTIZE_MOTIONSTEPS, 617, 616, 623, 622, 629, 628, 635, 634, 641, 640, 647, 646, 854, 853}, new int[]{727, 726, 721, 720, 715, 714, 709, 708, 703, TypedValues.TransitionType.TYPE_TO, 697, 696, 691, 690, 685, 684, 679, 678, 673, 672, 667, 666, 661, 660, 655, 654, 649, 648, 855, -3}, new int[]{729, 728, 723, 722, 717, 716, 711, 710, TypedValues.TransitionType.TYPE_INTERPOLATOR, TypedValues.TransitionType.TYPE_AUTO_TRANSITION, 699, 698, 693, 692, 687, 686, 681, 680, 675, 674, 669, 668, 663, 662, 657, 656, 651, 650, 857, 856}, new int[]{731, 730, 725, 724, 719, 718, 713, 712, TypedValues.TransitionType.TYPE_TRANSITION_FLAGS, TypedValues.TransitionType.TYPE_STAGGERED, TypedValues.TransitionType.TYPE_FROM, 700, 695, 694, 689, 688, 683, 682, 677, 676, 671, 670, 665, 664, 659, 658, 653, 652, 858, -3}, new int[]{733, 732, 739, 738, 745, 744, 751, 750, 757, 756, MetaDo.META_CREATEFONTINDIRECT, MetaDo.META_CREATEPENINDIRECT, 769, ViewUtils.EDGE_TO_EDGE_FLAGS, 775, 774, 781, 780, 787, 786, 793, 792, 799, 798, MetaDo.META_POLYLINE, MetaDo.META_POLYGON, 811, 810, 860, 859}, new int[]{735, 734, 741, 740, 747, 746, 753, 752, 759, 758, 765, MetaDo.META_CREATEBRUSHINDIRECT, 771, 770, 777, 776, 783, 782, 789, 788, 795, 794, 801, 800, 807, 806, 813, 812, 861, -3}, new int[]{737, 736, 743, 742, 749, 748, 755, 754, 761, 760, 767, 766, 773, 772, 779, 778, 785, 784, 791, 790, 797, 796, 803, 802, 809, 808, 815, 814, 863, 862}};
    }

    BitMatrixParser(BitMatrix bitMatrix) {
        this.bitMatrix = bitMatrix;
    }

    byte[] readCodewords() {
        byte[] bArr = new byte[Opcodes.D2F];
        int height = this.bitMatrix.getHeight();
        int width = this.bitMatrix.getWidth();
        for (int i = 0; i < height; i++) {
            int[] iArr = BITNR[i];
            for (int i2 = 0; i2 < width; i2++) {
                int i3 = iArr[i2];
                if (i3 >= 0 && this.bitMatrix.get(i2, i)) {
                    int i4 = i3 / 6;
                    bArr[i4] = (byte) (((byte) (1 << (5 - (i3 % 6)))) | bArr[i4]);
                }
            }
        }
        return bArr;
    }
}
