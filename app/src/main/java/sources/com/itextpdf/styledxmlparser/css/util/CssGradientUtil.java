package com.itextpdf.styledxmlparser.css.util;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.kernel.colors.gradients.AbstractLinearGradientBuilder;
import com.itextpdf.kernel.colors.gradients.GradientColorStop;
import com.itextpdf.kernel.colors.gradients.GradientSpreadMethod;
import com.itextpdf.kernel.colors.gradients.StrategyBasedLinearGradientBuilder;
import com.itextpdf.layout.properties.UnitValue;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import com.itextpdf.styledxmlparser.css.parse.CssDeclarationValueTokenizer;
import com.itextpdf.styledxmlparser.exceptions.StyledXMLParserException;
import java.util.ArrayList;
import java.util.List;
import org.shadow.apache.commons.lang3.StringUtils;

/* JADX INFO: loaded from: classes6.dex */
public final class CssGradientUtil {
    private static final String LINEAR_GRADIENT_FUNCTION_SUFFIX = "linear-gradient(";
    private static final String REPEATING_LINEAR_GRADIENT_FUNCTION_SUFFIX = "repeating-linear-gradient(";

    private CssGradientUtil() {
    }

    public static boolean isCssLinearGradientValue(String str) {
        if (str == null) {
            return false;
        }
        String strTrim = str.toLowerCase().trim();
        if (strTrim.endsWith(")")) {
            return strTrim.startsWith(LINEAR_GRADIENT_FUNCTION_SUFFIX) || strTrim.startsWith(REPEATING_LINEAR_GRADIENT_FUNCTION_SUFFIX);
        }
        return false;
    }

    public static StrategyBasedLinearGradientBuilder parseCssLinearGradient(String str, float f, float f2) {
        String strSubstring;
        if (isCssLinearGradientValue(str)) {
            String strTrim = str.toLowerCase().trim();
            boolean z = false;
            if (strTrim.startsWith(LINEAR_GRADIENT_FUNCTION_SUFFIX)) {
                strSubstring = strTrim.substring(LINEAR_GRADIENT_FUNCTION_SUFFIX.length(), strTrim.length() - 1);
            } else if (strTrim.startsWith(REPEATING_LINEAR_GRADIENT_FUNCTION_SUFFIX)) {
                strSubstring = strTrim.substring(REPEATING_LINEAR_GRADIENT_FUNCTION_SUFFIX.length(), strTrim.length() - 1);
                z = true;
            } else {
                strSubstring = null;
            }
            if (strSubstring != null) {
                ArrayList arrayList = new ArrayList();
                StringBuilder sb = new StringBuilder();
                CssDeclarationValueTokenizer cssDeclarationValueTokenizer = new CssDeclarationValueTokenizer(strSubstring);
                while (true) {
                    CssDeclarationValueTokenizer.Token nextValidToken = cssDeclarationValueTokenizer.getNextValidToken();
                    if (nextValidToken == null) {
                        break;
                    }
                    if (nextValidToken.getType() == CssDeclarationValueTokenizer.TokenType.COMMA) {
                        if (sb.length() != 0) {
                            arrayList.add(sb.toString().trim());
                            sb = new StringBuilder();
                        }
                    } else {
                        sb.append(StringUtils.SPACE).append(nextValidToken.getValue());
                    }
                }
                if (sb.length() != 0) {
                    arrayList.add(sb.toString().trim());
                }
                if (arrayList.isEmpty()) {
                    throw new StyledXMLParserException(MessageFormatUtil.format(StyledXMLParserException.INVALID_GRADIENT_FUNCTION_ARGUMENTS_LIST, strTrim));
                }
                return parseCssLinearGradient(arrayList, z, f, f2);
            }
        }
        return null;
    }

    private static StrategyBasedLinearGradientBuilder parseCssLinearGradient(List<String> list, boolean z, float f, float f2) {
        StrategyBasedLinearGradientBuilder strategyBasedLinearGradientBuilder = new StrategyBasedLinearGradientBuilder();
        strategyBasedLinearGradientBuilder.setSpreadMethod(z ? GradientSpreadMethod.REPEAT : GradientSpreadMethod.PAD);
        int i = 0;
        String str = list.get(0);
        if (CssTypesValidationUtils.isAngleValue(str)) {
            strategyBasedLinearGradientBuilder.setGradientDirectionAsCentralRotationAngle(-CssDimensionParsingUtils.parseAngle(str));
        } else if (str.startsWith("to ")) {
            strategyBasedLinearGradientBuilder.setGradientDirectionAsStrategy(parseDirection(str));
        } else {
            strategyBasedLinearGradientBuilder.setGradientDirectionAsStrategy(StrategyBasedLinearGradientBuilder.GradientStrategy.TO_BOTTOM);
            addStopColors(strategyBasedLinearGradientBuilder, list, i, f, f2);
            return strategyBasedLinearGradientBuilder;
        }
        i = 1;
        addStopColors(strategyBasedLinearGradientBuilder, list, i, f, f2);
        return strategyBasedLinearGradientBuilder;
    }

    private static void addStopColors(AbstractLinearGradientBuilder abstractLinearGradientBuilder, List<String> list, int i, float f, float f2) {
        UnitValue unitValue;
        int i2 = 1;
        int size = list.size() - 1;
        int i3 = i;
        GradientColorStop gradientColorStopCreateStopColor = null;
        while (i3 <= size) {
            String str = list.get(i3);
            ArrayList arrayList = new ArrayList();
            CssDeclarationValueTokenizer cssDeclarationValueTokenizer = new CssDeclarationValueTokenizer(str);
            while (true) {
                CssDeclarationValueTokenizer.Token nextValidToken = cssDeclarationValueTokenizer.getNextValidToken();
                if (nextValidToken == null) {
                    break;
                } else {
                    arrayList.add(nextValidToken.getValue());
                }
            }
            if (arrayList.isEmpty() || arrayList.size() > 3) {
                throw new StyledXMLParserException(MessageFormatUtil.format(StyledXMLParserException.INVALID_GRADIENT_COLOR_STOP_VALUE, str));
            }
            if (CssTypesValidationUtils.isColorProperty((String) arrayList.get(0))) {
                float[] rgbaColor = CssDimensionParsingUtils.parseRgbaColor((String) arrayList.get(0));
                if (arrayList.size() == i2) {
                    if (i3 == i) {
                        unitValue = new UnitValue(2, 0.0f);
                    } else {
                        unitValue = i3 == size ? new UnitValue(2, 100.0f) : null;
                    }
                    gradientColorStopCreateStopColor = createStopColor(rgbaColor, unitValue);
                    abstractLinearGradientBuilder.addColorStop(gradientColorStopCreateStopColor);
                } else {
                    for (int i4 = i2; i4 < arrayList.size(); i4++) {
                        if (CssTypesValidationUtils.isNumber((String) arrayList.get(i4))) {
                            throw new StyledXMLParserException(MessageFormatUtil.format(StyledXMLParserException.INVALID_GRADIENT_COLOR_STOP_VALUE, str));
                        }
                        UnitValue lengthValueToPt = CssDimensionParsingUtils.parseLengthValueToPt((String) arrayList.get(i4), f, f2);
                        if (lengthValueToPt == null) {
                            throw new StyledXMLParserException(MessageFormatUtil.format(StyledXMLParserException.INVALID_GRADIENT_COLOR_STOP_VALUE, str));
                        }
                        gradientColorStopCreateStopColor = createStopColor(rgbaColor, lengthValueToPt);
                        abstractLinearGradientBuilder.addColorStop(gradientColorStopCreateStopColor);
                    }
                }
            } else {
                if (arrayList.size() != i2 || gradientColorStopCreateStopColor == null || gradientColorStopCreateStopColor.getHintOffsetType() != GradientColorStop.HintOffsetType.NONE || i3 == size) {
                    throw new StyledXMLParserException(MessageFormatUtil.format(StyledXMLParserException.INVALID_GRADIENT_COLOR_STOP_VALUE, str));
                }
                UnitValue lengthValueToPt2 = CssDimensionParsingUtils.parseLengthValueToPt((String) arrayList.get(0), f, f2);
                if (lengthValueToPt2 == null) {
                    throw new StyledXMLParserException(MessageFormatUtil.format(StyledXMLParserException.INVALID_GRADIENT_COLOR_STOP_VALUE, str));
                }
                if (lengthValueToPt2.getUnitType() == 2) {
                    gradientColorStopCreateStopColor.setHint(lengthValueToPt2.getValue() / 100.0f, GradientColorStop.HintOffsetType.RELATIVE_ON_GRADIENT);
                } else {
                    gradientColorStopCreateStopColor.setHint(lengthValueToPt2.getValue(), GradientColorStop.HintOffsetType.ABSOLUTE_ON_GRADIENT);
                }
            }
            i3++;
            i2 = 1;
        }
    }

    private static StrategyBasedLinearGradientBuilder.GradientStrategy parseDirection(String str) {
        String[] strArrSplit = str.split("\\s+");
        if (strArrSplit.length < 2) {
            throw new StyledXMLParserException(MessageFormatUtil.format(StyledXMLParserException.INVALID_GRADIENT_TO_SIDE_OR_CORNER_STRING, str));
        }
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 1; i5 < strArrSplit.length; i5++) {
            if ("top".equals(strArrSplit[i5])) {
                i++;
            } else if (CommonCssConstants.BOTTOM.equals(strArrSplit[i5])) {
                i2++;
            } else if ("left".equals(strArrSplit[i5])) {
                i3++;
            } else {
                if (!"right".equals(strArrSplit[i5])) {
                    throw new StyledXMLParserException(MessageFormatUtil.format(StyledXMLParserException.INVALID_GRADIENT_TO_SIDE_OR_CORNER_STRING, str));
                }
                i4++;
            }
        }
        if (i == 1 && i2 == 0) {
            if (i3 == 1 && i4 == 0) {
                return StrategyBasedLinearGradientBuilder.GradientStrategy.TO_TOP_LEFT;
            }
            if (i3 == 0 && i4 == 1) {
                return StrategyBasedLinearGradientBuilder.GradientStrategy.TO_TOP_RIGHT;
            }
            if (i3 == 0 && i4 == 0) {
                return StrategyBasedLinearGradientBuilder.GradientStrategy.TO_TOP;
            }
        } else if (i == 0 && i2 == 1) {
            if (i3 == 1 && i4 == 0) {
                return StrategyBasedLinearGradientBuilder.GradientStrategy.TO_BOTTOM_LEFT;
            }
            if (i3 == 0 && i4 == 1) {
                return StrategyBasedLinearGradientBuilder.GradientStrategy.TO_BOTTOM_RIGHT;
            }
            if (i3 == 0 && i4 == 0) {
                return StrategyBasedLinearGradientBuilder.GradientStrategy.TO_BOTTOM;
            }
        } else if (i == 0 && i2 == 0) {
            if (i3 == 1 && i4 == 0) {
                return StrategyBasedLinearGradientBuilder.GradientStrategy.TO_LEFT;
            }
            if (i3 == 0 && i4 == 1) {
                return StrategyBasedLinearGradientBuilder.GradientStrategy.TO_RIGHT;
            }
        }
        throw new StyledXMLParserException(MessageFormatUtil.format(StyledXMLParserException.INVALID_GRADIENT_TO_SIDE_OR_CORNER_STRING, str));
    }

    private static GradientColorStop createStopColor(float[] fArr, UnitValue unitValue) {
        GradientColorStop.OffsetType offsetType;
        float value;
        GradientColorStop.OffsetType offsetType2;
        double d;
        if (unitValue == null) {
            offsetType2 = GradientColorStop.OffsetType.AUTO;
            d = 0.0d;
        } else {
            if (unitValue.getUnitType() == 1) {
                offsetType = GradientColorStop.OffsetType.ABSOLUTE;
                value = unitValue.getValue();
            } else {
                offsetType = GradientColorStop.OffsetType.RELATIVE;
                value = unitValue.getValue() / 100.0f;
            }
            double d2 = value;
            offsetType2 = offsetType;
            d = d2;
        }
        return new GradientColorStop(fArr, d, offsetType2);
    }
}
