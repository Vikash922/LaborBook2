package com.itextpdf.styledxmlparser.css.media;

import com.itextpdf.styledxmlparser.css.util.CssDimensionParsingUtils;
import com.itextpdf.styledxmlparser.css.util.CssTypesValidationUtils;
import com.itextpdf.styledxmlparser.css.util.CssUtils;

/* JADX INFO: loaded from: classes6.dex */
public class MediaExpression {
    private static final float DEFAULT_FONT_SIZE = 12.0f;
    private String feature;
    private boolean maxPrefix;
    private boolean minPrefix;
    private String value;

    MediaExpression(String str, String str2) {
        this.feature = str.trim().toLowerCase();
        if (str2 != null) {
            this.value = str2.trim().toLowerCase();
        }
        boolean zStartsWith = str.startsWith("min-");
        this.minPrefix = zStartsWith;
        if (zStartsWith) {
            this.feature = str.substring("min-".length());
        }
        boolean zStartsWith2 = str.startsWith("max-");
        this.maxPrefix = zStartsWith2;
        if (zStartsWith2) {
            this.feature = str.substring("max-".length());
        }
    }

    public boolean matches(MediaDeviceDescription mediaDeviceDescription) {
        String str = this.feature;
        str.hashCode();
        switch (str) {
            case "monochrome":
                Integer integer = CssDimensionParsingUtils.parseInteger(this.value);
                if (this.minPrefix) {
                    if (integer == null || mediaDeviceDescription.getMonochrome() < integer.intValue()) {
                    }
                    break;
                } else {
                    if (!this.maxPrefix) {
                        if (integer == null) {
                            if (mediaDeviceDescription.getMonochrome() > 0) {
                            }
                        } else if (integer.intValue() == mediaDeviceDescription.getMonochrome()) {
                        }
                    } else if (integer == null || mediaDeviceDescription.getMonochrome() > integer.intValue()) {
                    }
                    break;
                }
                break;
            case "resolution":
                float resolution = CssDimensionParsingUtils.parseResolution(this.value);
                if (!this.minPrefix) {
                    if (!this.maxPrefix) {
                        if (mediaDeviceDescription.getResolution() <= 0.0f) {
                            break;
                        }
                    } else if (mediaDeviceDescription.getResolution() > resolution) {
                        break;
                    }
                } else if (mediaDeviceDescription.getResolution() < resolution) {
                    break;
                }
                break;
            case "aspect-ratio":
                int[] aspectRatio = CssDimensionParsingUtils.parseAspectRatio(this.value);
                if (this.minPrefix) {
                    if (aspectRatio == null || aspectRatio[0] * mediaDeviceDescription.getHeight() < aspectRatio[1] * mediaDeviceDescription.getWidth()) {
                    }
                    break;
                } else {
                    if (!this.maxPrefix) {
                        if (aspectRatio == null || !CssUtils.compareFloats(aspectRatio[0] * mediaDeviceDescription.getHeight(), aspectRatio[1] * mediaDeviceDescription.getWidth())) {
                        }
                    } else if (aspectRatio == null || aspectRatio[0] * mediaDeviceDescription.getHeight() > aspectRatio[1] * mediaDeviceDescription.getWidth()) {
                    }
                    break;
                }
                break;
            case "height":
                float absoluteLength = parseAbsoluteLength(this.value);
                if (!this.minPrefix) {
                    if (!this.maxPrefix) {
                        if (mediaDeviceDescription.getHeight() <= 0.0f) {
                            break;
                        }
                    } else if (mediaDeviceDescription.getHeight() > absoluteLength) {
                        break;
                    }
                } else if (mediaDeviceDescription.getHeight() < absoluteLength) {
                    break;
                }
                break;
            case "color-index":
                Integer integer2 = CssDimensionParsingUtils.parseInteger(this.value);
                if (this.minPrefix) {
                    if (integer2 == null || mediaDeviceDescription.getColorIndex() < integer2.intValue()) {
                    }
                    break;
                } else {
                    if (!this.maxPrefix) {
                        if (integer2 == null) {
                            if (mediaDeviceDescription.getColorIndex() != 0) {
                            }
                        } else if (integer2.intValue() == mediaDeviceDescription.getColorIndex()) {
                        }
                    } else if (integer2 == null || mediaDeviceDescription.getColorIndex() > integer2.intValue()) {
                    }
                    break;
                }
                break;
            case "grid":
                Integer integer3 = CssDimensionParsingUtils.parseInteger(this.value);
                if ((integer3 == null || integer3.intValue() != 0 || mediaDeviceDescription.isGrid()) && !mediaDeviceDescription.isGrid()) {
                    break;
                }
                break;
            case "color":
                Integer integer4 = CssDimensionParsingUtils.parseInteger(this.value);
                if (this.minPrefix) {
                    if (integer4 == null || mediaDeviceDescription.getBitsPerComponent() < integer4.intValue()) {
                    }
                    break;
                } else {
                    if (!this.maxPrefix) {
                        if (integer4 == null) {
                            if (mediaDeviceDescription.getBitsPerComponent() != 0) {
                            }
                        } else if (integer4.intValue() == mediaDeviceDescription.getBitsPerComponent()) {
                        }
                    } else if (integer4 == null || mediaDeviceDescription.getBitsPerComponent() > integer4.intValue()) {
                    }
                    break;
                }
                break;
            case "width":
                float absoluteLength2 = parseAbsoluteLength(this.value);
                if (!this.minPrefix) {
                    if (!this.maxPrefix) {
                        if (mediaDeviceDescription.getWidth() <= 0.0f) {
                            break;
                        }
                    } else if (mediaDeviceDescription.getWidth() > absoluteLength2) {
                        break;
                    }
                } else if (mediaDeviceDescription.getWidth() < absoluteLength2) {
                    break;
                }
                break;
        }
        return false;
    }

    private static float parseAbsoluteLength(String str) {
        if (CssTypesValidationUtils.isRelativeValue(str)) {
            return CssDimensionParsingUtils.parseRelativeValue(str, DEFAULT_FONT_SIZE);
        }
        return CssDimensionParsingUtils.parseAbsoluteLength(str);
    }
}
