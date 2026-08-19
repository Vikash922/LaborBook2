package com.google.zxing.pdf417.encoder;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.FrameMetricsAggregator;
import androidx.recyclerview.widget.ItemTouchHelper;
import com.google.android.gms.identity.intents.AddressConstants;
import com.google.android.gms.wallet.WalletConstants;
import com.google.android.material.internal.ViewUtils;
import com.google.zxing.WriterException;
import com.google.zxing.pdf417.PDF417Common;
import com.itextpdf.kernel.pdf.canvas.wmf.MetaDo;
import com.itextpdf.kernel.xmp.XMPError;
import com.itextpdf.p017io.codec.TIFFConstants;
import org.bouncycastle.asn1.BERTags;
import org.bouncycastle.math.Primes;
import org.objectweb.asm.Opcodes;

/* JADX INFO: loaded from: classes6.dex */
final class PDF417ErrorCorrection {
    private static final int[][] EC_COEFFICIENTS = {new int[]{27, 917}, new int[]{MetaDo.META_SETTEXTJUSTIFICATION, 568, 723, 809}, new int[]{237, 308, 436, TIFFConstants.TIFFTAG_PLANARCONFIG, 646, 653, 428, 379}, new int[]{TIFFConstants.TIFFTAG_ORIENTATION, 562, 232, 755, 599, MetaDo.META_SETWINDOWEXT, 801, 132, MetaDo.META_RESTOREDC, 116, 442, 428, MetaDo.META_RESTOREDC, 42, Opcodes.ARETURN, 65}, new int[]{361, 575, 922, MetaDo.META_SETVIEWPORTORG, Opcodes.ARETURN, 586, 640, TIFFConstants.TIFFTAG_HALFTONEHINTS, 536, 742, 677, 742, 687, TIFFConstants.TIFFTAG_PLANARCONFIG, Opcodes.INSTANCEOF, TIFFConstants.TIFFTAG_JPEGLOSSLESSPREDICTORS, TIFFConstants.TIFFTAG_STRIPOFFSETS, 494, 263, Opcodes.I2S, 593, 800, 571, TIFFConstants.TIFFTAG_COLORMAP, 803, 133, 231, 390, 685, TIFFConstants.TIFFTAG_SUBIFD, 63, WalletConstants.ERROR_CODE_INVALID_TRANSACTION}, new int[]{539, TypedValues.CycleType.TYPE_CUSTOM_WAVE_SHAPE, 6, 93, 862, 771, 453, 106, TypedValues.MotionType.TYPE_QUANTIZE_MOTIONSTEPS, TIFFConstants.TIFFTAG_YPOSITION, 107, 505, 733, 877, 381, TypedValues.MotionType.TYPE_QUANTIZE_INTERPOLATOR_ID, 723, 476, 462, Opcodes.IRETURN, 430, TypedValues.MotionType.TYPE_POLAR_RELATIVETO, 858, 822, 543, 376, FrameMetricsAggregator.EVERY_DURATION, 400, 672, MetaDo.META_CREATEPENINDIRECT, TIFFConstants.TIFFTAG_YRESOLUTION, Opcodes.INVOKESTATIC, 440, 35, TIFFConstants.TIFFTAG_JPEGQTABLES, 31, 460, 594, 225, 535, TIFFConstants.TIFFTAG_JPEGLOSSLESSPREDICTORS, 352, TypedValues.MotionType.TYPE_ANIMATE_RELATIVE_TO, 158, 651, XMPError.BADXML, 488, TypedValues.PositionType.TYPE_DRAWPATH, 648, 733, 717, 83, WalletConstants.ERROR_CODE_INVALID_PARAMETERS, 97, TIFFConstants.TIFFTAG_MINSAMPLEVALUE, 771, 840, 629, 4, 381, 843, 623, 264, 543}, new int[]{521, 310, 864, 547, 858, 580, TIFFConstants.TIFFTAG_RESOLUTIONUNIT, 379, 53, 779, 897, 444, 400, 925, 749, 415, 822, 93, 217, 208, PDF417Common.MAX_CODEWORDS_IN_BARCODE, 244, 583, 620, 246, Opcodes.LCMP, 447, 631, TIFFConstants.TIFFTAG_GROUP3OPTIONS, 908, 490, TypedValues.TransitionType.TYPE_AUTO_TRANSITION, 516, 258, 457, 907, 594, 723, 674, TIFFConstants.TIFFTAG_GROUP3OPTIONS, TIFFConstants.TIFFTAG_MODEL, 96, 684, 432, 686, TypedValues.MotionType.TYPE_ANIMATE_CIRCLEANGLE_TO, 860, 569, Opcodes.INSTANCEOF, 219, 129, Opcodes.INVOKEDYNAMIC, 236, TIFFConstants.TIFFTAG_YPOSITION, 192, 775, TIFFConstants.TIFFTAG_ROWSPERSTRIP, Opcodes.LRETURN, 40, 379, 712, 463, 646, 776, Opcodes.LOOKUPSWITCH, 491, TIFFConstants.TIFFTAG_PAGENUMBER, MetaDo.META_CREATEFONTINDIRECT, 156, 732, 95, TIFFConstants.TIFFTAG_IMAGEDESCRIPTION, 447, 90, TypedValues.PositionType.TYPE_PERCENT_Y, 48, 228, 821, 808, 898, 784, 663, 627, 378, 382, 262, 380, TypedValues.MotionType.TYPE_QUANTIZE_MOTION_PHASE, 754, TIFFConstants.TIFFTAG_DOTRANGE, 89, 614, 87, 432, 670, 616, 157, 374, 242, 726, 600, TIFFConstants.TIFFTAG_DOCUMENTNAME, 375, 898, 845, 454, 354, 130, 814, 587, MetaDo.META_POLYGON, 34, Primes.SMALL_FACTOR_LIMIT, TIFFConstants.TIFFTAG_SUBIFD, 539, TIFFConstants.TIFFTAG_PAGENUMBER, 827, 865, 37, TIFFConstants.TIFFTAG_JPEGLOSSLESSPREDICTORS, 834, 315, 550, 86, 801, 4, 108, 539}, new int[]{MetaDo.META_SETWINDOWEXT, 894, 75, 766, 882, 857, 74, XMPError.BADSTREAM, 82, 586, 708, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, TypedValues.Custom.TYPE_DIMENSION, 786, Opcodes.L2D, 720, 858, Opcodes.MONITORENTER, 311, 913, 275, 190, 375, 850, 438, 733, Opcodes.MONITORENTER, TIFFConstants.TIFFTAG_MINSAMPLEVALUE, XMPError.BADXML, TIFFConstants.TIFFTAG_MINSAMPLEVALUE, 828, 757, 710, 814, 919, 89, 68, 569, 11, XMPError.BADSTREAM, 796, TypedValues.MotionType.TYPE_ANIMATE_RELATIVE_TO, 540, 913, 801, 700, 799, Opcodes.L2F, 439, 418, 592, 668, 353, 859, 370, 694, TIFFConstants.TIFFTAG_TILEBYTECOUNTS, 240, 216, 257, TIFFConstants.TIFFTAG_PLANARCONFIG, 549, 209, 884, 315, 70, 329, 793, 490, TIFFConstants.TIFFTAG_ORIENTATION, 877, Opcodes.IF_ICMPGE, 749, 812, 684, 461, TIFFConstants.TIFFTAG_NUMBEROFINKS, 376, 849, 521, 307, TIFFConstants.TIFFTAG_GRAYRESPONSECURVE, 803, 712, 19, 358, 399, 908, 103, FrameMetricsAggregator.EVERY_DURATION, 51, 8, TIFFConstants.TIFFTAG_JPEGLOSSLESSPREDICTORS, 225, TIFFConstants.TIFFTAG_FREEBYTECOUNTS, 470, 637, 731, 66, 255, 917, TIFFConstants.TIFFTAG_DOCUMENTNAME, 463, 830, 730, 433, 848, 585, 136, 538, TypedValues.Custom.TYPE_REFERENCE, 90, 2, TIFFConstants.TIFFTAG_GRAYRESPONSEUNIT, 743, Opcodes.IFNONNULL, 655, TypedValues.Custom.TYPE_STRING, 329, 49, 802, 580, 355, 588, 188, 462, 10, 134, 628, TIFFConstants.TIFFTAG_COLORMAP, 479, 130, 739, 71, 263, 318, 374, 601, 192, TypedValues.MotionType.TYPE_ANIMATE_RELATIVE_TO, Opcodes.D2I, 673, 687, 234, 722, 384, Opcodes.RETURN, 752, TypedValues.MotionType.TYPE_PATHMOTION_ARC, 640, 455, Opcodes.INSTANCEOF, 689, TypedValues.TransitionType.TYPE_TRANSITION_FLAGS, MetaDo.META_POLYLINE, 641, 48, 60, 732, 621, 895, MetaDo.META_OFFSETCLIPRGN, MetaDo.META_SETRELABS, 852, 655, 309, 697, 755, 756, 60, 231, 773, 434, 421, 726, 528, TypedValues.PositionType.TYPE_PERCENT_WIDTH, 118, 49, 795, 32, Opcodes.D2F, 500, 238, 836, 394, TIFFConstants.TIFFTAG_MINSAMPLEVALUE, 566, TIFFConstants.TIFFTAG_PRIMARYCHROMATICITIES, 9, 647, 550, 73, 914, 342, 126, 32, 681, 331, 792, 620, 60, TypedValues.MotionType.TYPE_POLAR_RELATIVETO, 441, Opcodes.GETFIELD, 791, 893, 754, TypedValues.MotionType.TYPE_ANIMATE_RELATIVE_TO, 383, 228, 749, 760, 213, 54, TIFFConstants.TIFFTAG_PAGENUMBER, 134, 54, 834, MetaDo.META_PAINTREGION, 922, Opcodes.ATHROW, 910, 532, TypedValues.MotionType.TYPE_POLAR_RELATIVETO, 829, Opcodes.ANEWARRAY, 20, Opcodes.GOTO, 29, 872, 449, 83, 402, 41, 656, 505, 579, 481, Opcodes.LRETURN, WalletConstants.ERROR_CODE_INVALID_PARAMETERS, 251, 688, 95, 497, AddressConstants.ErrorCodes.ERROR_CODE_NO_APPLICABLE_ADDRESSES, 642, 543, 307, Opcodes.IF_ICMPEQ, 924, 558, 648, 55, 497, 10}, new int[]{352, 77, 373, TypedValues.PositionType.TYPE_PERCENT_HEIGHT, 35, 599, 428, 207, WalletConstants.ERROR_CODE_BUYER_ACCOUNT_ERROR, 574, 118, 498, TIFFConstants.TIFFTAG_PAGENAME, 380, 350, 492, Opcodes.MULTIANEWARRAY, TIFFConstants.TIFFTAG_CELLLENGTH, 920, 155, 914, MetaDo.META_PAINTREGION, 229, 643, 294, 871, 306, 88, 87, Opcodes.INSTANCEOF, 352, 781, 846, 75, TIFFConstants.TIFFTAG_CLEANFAXDATA, TIFFConstants.TIFFTAG_JPEGDCTABLES, 435, 543, XMPError.BADXMP, 666, 249, 346, 781, 621, 640, 268, 794, 534, 539, 781, 408, 390, 644, 102, 476, 499, TIFFConstants.TIFFTAG_GRAYRESPONSEUNIT, 632, 545, 37, 858, 916, MetaDo.META_FILLREGION, 41, 542, TIFFConstants.TIFFTAG_FREEBYTECOUNTS, 122, TIFFConstants.TIFFTAG_MODEL, 383, 800, 485, 98, 752, 472, 761, 107, 784, 860, 658, 741, TIFFConstants.TIFFTAG_GRAYRESPONSEUNIT, XMPError.BADSTREAM, 681, 407, 855, 85, 99, 62, 482, Opcodes.GETFIELD, 20, TIFFConstants.TIFFTAG_PAGENUMBER, 451, 593, 913, Opcodes.D2I, 808, 684, TIFFConstants.TIFFTAG_YPOSITION, 536, MetaDo.META_SETMAPPERFLAGS, 76, 653, 899, 729, 567, 744, 390, 513, 192, 516, 258, 240, TIFFConstants.TIFFTAG_JPEGPOINTTRANSFORM, 794, 395, ViewUtils.EDGE_TO_EDGE_FLAGS, 848, 51, TypedValues.MotionType.TYPE_QUANTIZE_MOTIONSTEPS, 384, Opcodes.JSR, 190, 826, TIFFConstants.TIFFTAG_CONSECUTIVEBADFAXLINES, 596, 786, 303, 570, 381, 415, 641, 156, 237, Opcodes.DCMPL, 429, 531, 207, 676, 710, 89, Opcodes.JSR, 304, 402, 40, 708, 575, Opcodes.IF_ICMPGE, 864, 229, 65, 861, 841, 512, Opcodes.IF_ICMPLE, 477, 221, 92, 358, 785, TIFFConstants.TIFFTAG_FREEOFFSETS, 357, 850, 836, 827, 736, TypedValues.TransitionType.TYPE_TRANSITION_FLAGS, 94, 8, 494, 114, 521, 2, 499, 851, 543, Opcodes.DCMPG, 729, 771, 95, 248, 361, 578, TIFFConstants.TIFFTAG_TILELENGTH, 856, 797, TIFFConstants.TIFFTAG_FREEBYTECOUNTS, 51, 684, 466, 533, 820, 669, 45, TypedValues.Custom.TYPE_COLOR, 452, Opcodes.GOTO, 342, 244, Opcodes.LRETURN, 35, 463, 651, 51, 699, 591, 452, 578, 37, 124, MetaDo.META_INVERTREGION, TIFFConstants.TIFFTAG_INKSET, MetaDo.META_FILLREGION, 43, 427, 119, 662, 777, 475, 850, MetaDo.META_CREATEBRUSHINDIRECT, 364, 578, 911, TIFFConstants.TIFFTAG_YRESOLUTION, 711, 472, TypedValues.CycleType.TYPE_EASING, 245, TIFFConstants.TIFFTAG_FREEOFFSETS, 594, 394, FrameMetricsAggregator.EVERY_DURATION, TIFFConstants.TIFFTAG_CLEANFAXDATA, 589, 777, 699, 688, 43, 408, 842, 383, 721, 521, 560, 644, 714, 559, 62, Opcodes.I2B, 873, 663, 713, Opcodes.IF_ICMPEQ, 672, 729, 624, 59, Opcodes.INSTANCEOF, 417, 158, 209, 563, MetaDo.META_SELECTPALETTE, 343, 693, 109, TypedValues.MotionType.TYPE_DRAW_PATH, 563, 365, Opcodes.PUTFIELD, 772, 677, 310, 248, 353, 708, WalletConstants.ERROR_CODE_INVALID_TRANSACTION, 579, 870, 617, 841, 632, 860, TIFFConstants.TIFFTAG_FREEBYTECOUNTS, 536, 35, 777, 618, 586, TypedValues.CycleType.TYPE_WAVE_OFFSET, 833, 77, 597, 346, TIFFConstants.TIFFTAG_DOCUMENTNAME, 757, 632, 695, 751, 331, MetaDo.META_CREATEPALETTE, Opcodes.INVOKESTATIC, 45, 787, 680, 18, 66, 407, 369, 54, 492, 228, 613, 830, 922, 437, TIFFConstants.TIFFTAG_JPEGQTABLES, 644, TypedValues.Custom.TYPE_DIMENSION, 789, TypedValues.CycleType.TYPE_EASING, 305, 441, 207, 300, 892, 827, Opcodes.F2D, 537, 381, 662, 513, 56, 252, 341, 242, 797, 838, 837, 720, BERTags.FLAGS, 307, 631, 61, 87, 560, 310, 756, 665, 397, 808, 851, 309, 473, 795, 378, 31, 647, 915, 459, 806, 590, 731, TypedValues.CycleType.TYPE_WAVE_PHASE, 216, 548, 249, TIFFConstants.TIFFTAG_HALFTONEHINTS, 881, 699, 535, 673, 782, 210, 815, TypedValues.Custom.TYPE_DIMENSION, 303, 843, 922, TIFFConstants.TIFFTAG_MAXSAMPLEVALUE, 73, 469, 791, 660, Opcodes.IF_ICMPGE, 498, 308, 155, TypedValues.CycleType.TYPE_CUSTOM_WAVE_SHAPE, 907, 817, Opcodes.NEW, 62, 16, TypedValues.CycleType.TYPE_WAVE_PHASE, 535, TIFFConstants.TIFFTAG_DOTRANGE, TIFFConstants.TIFFTAG_XPOSITION, 437, 375, TIFFConstants.TIFFTAG_STRIPOFFSETS, TypedValues.MotionType.TYPE_QUANTIZE_MOTIONSTEPS, TIFFConstants.TIFFTAG_RESOLUTIONUNIT, Opcodes.INVOKESPECIAL, 923, 116, 667, 751, 353, 62, 366, 691, 379, 687, 842, 37, 357, 720, 742, TIFFConstants.TIFFTAG_SUBIFD, 5, 39, 923, 311, TypedValues.CycleType.TYPE_WAVE_OFFSET, 242, 749, TIFFConstants.TIFFTAG_HALFTONEHINTS, 54, 669, 316, 342, MetaDo.META_PAINTREGION, 534, 105, 667, 488, 640, 672, 576, 540, 316, 486, 721, TypedValues.MotionType.TYPE_QUANTIZE_MOTIONSTEPS, 46, 656, 447, Opcodes.LOOKUPSWITCH, 616, 464, 190, 531, TIFFConstants.TIFFTAG_PAGENUMBER, TIFFConstants.TIFFTAG_HALFTONEHINTS, MetaDo.META_CREATEPENINDIRECT, 752, 533, Opcodes.DRETURN, 134, 14, 381, 433, 717, 45, 111, 20, 596, TIFFConstants.TIFFTAG_PLANARCONFIG, 736, Opcodes.L2D, 646, WalletConstants.ERROR_CODE_AUTHENTICATION_FAILURE, 877, 669, Opcodes.F2D, 919, 45, 780, 407, Opcodes.IF_ICMPLE, TIFFConstants.TIFFTAG_INKSET, 899, Opcodes.IF_ACMPEQ, 726, 600, TIFFConstants.TIFFTAG_TILEBYTECOUNTS, 498, 655, 357, 752, ViewUtils.EDGE_TO_EDGE_FLAGS, 223, 849, 647, 63, 310, 863, 251, 366, 304, TIFFConstants.TIFFTAG_XRESOLUTION, 738, 675, WalletConstants.ERROR_CODE_INVALID_TRANSACTION, 389, 244, 31, 121, 303, 263}};

    private PDF417ErrorCorrection() {
    }

    static int getErrorCorrectionCodewordCount(int i) {
        if (i < 0 || i > 8) {
            throw new IllegalArgumentException("Error correction level must be between 0 and 8!");
        }
        return 1 << (i + 1);
    }

    static int getRecommendedMinimumErrorCorrectionLevel(int i) throws WriterException {
        if (i <= 0) {
            throw new IllegalArgumentException("n must be > 0");
        }
        if (i <= 40) {
            return 2;
        }
        if (i <= 160) {
            return 3;
        }
        if (i <= 320) {
            return 4;
        }
        if (i <= 863) {
            return 5;
        }
        throw new WriterException("No recommendation possible");
    }

    static String generateErrorCorrection(CharSequence charSequence, int i) {
        int errorCorrectionCodewordCount = getErrorCorrectionCodewordCount(i);
        char[] cArr = new char[errorCorrectionCodewordCount];
        int length = charSequence.length();
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = errorCorrectionCodewordCount - 1;
            int iCharAt = (charSequence.charAt(i2) + cArr[i3]) % PDF417Common.NUMBER_OF_CODEWORDS;
            while (i3 > 0) {
                cArr[i3] = (char) ((cArr[i3 - 1] + (929 - ((EC_COEFFICIENTS[i][i3] * iCharAt) % PDF417Common.NUMBER_OF_CODEWORDS))) % PDF417Common.NUMBER_OF_CODEWORDS);
                i3--;
            }
            cArr[0] = (char) ((929 - ((iCharAt * EC_COEFFICIENTS[i][0]) % PDF417Common.NUMBER_OF_CODEWORDS)) % PDF417Common.NUMBER_OF_CODEWORDS);
        }
        StringBuilder sb = new StringBuilder(errorCorrectionCodewordCount);
        for (int i4 = errorCorrectionCodewordCount - 1; i4 >= 0; i4--) {
            char c = cArr[i4];
            if (c != 0) {
                cArr[i4] = (char) (929 - c);
            }
            sb.append(cArr[i4]);
        }
        return sb.toString();
    }
}
