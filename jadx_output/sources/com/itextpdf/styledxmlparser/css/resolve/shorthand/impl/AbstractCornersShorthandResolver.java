package com.itextpdf.styledxmlparser.css.resolve.shorthand.impl;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.styledxmlparser.css.CssDeclaration;
import com.itextpdf.styledxmlparser.css.resolve.shorthand.IShorthandResolver;
import java.util.ArrayList;
import java.util.List;
import org.shadow.apache.commons.lang3.StringUtils;

/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractCornersShorthandResolver implements IShorthandResolver {
    private static final String _0_BOTTOM_LEFT_1 = "{0}-bottom-left{1}";
    private static final String _0_BOTTOM_RIGHT_1 = "{0}-bottom-right{1}";
    private static final String _0_TOP_LEFT_1 = "{0}-top-left{1}";
    private static final String _0_TOP_RIGHT_1 = "{0}-top-right{1}";

    protected abstract String getPostfix();

    protected abstract String getPrefix();

    @Override // com.itextpdf.styledxmlparser.css.resolve.shorthand.IShorthandResolver
    public List<CssDeclaration> resolveShorthand(String str) {
        String[] strArrSplit = str.split("\\s*\\/\\s*");
        int length = strArrSplit.length;
        String[][] strArr = new String[length][];
        for (int i = 0; i < strArrSplit.length; i++) {
            strArr[i] = strArrSplit[i].split("\\s+");
        }
        String[] strArr2 = new String[4];
        for (int i2 = 0; i2 < 4; i2++) {
            strArr2[i2] = "";
        }
        ArrayList arrayList = new ArrayList();
        String str2 = MessageFormatUtil.format(_0_TOP_LEFT_1, getPrefix(), getPostfix());
        String str3 = MessageFormatUtil.format(_0_TOP_RIGHT_1, getPrefix(), getPostfix());
        String str4 = MessageFormatUtil.format(_0_BOTTOM_RIGHT_1, getPrefix(), getPostfix());
        String str5 = MessageFormatUtil.format(_0_BOTTOM_LEFT_1, getPrefix(), getPostfix());
        for (int i3 = 0; i3 < length; i3++) {
            String[] strArr3 = strArr[i3];
            if (strArr3.length == 1) {
                strArr2[0] = strArr2[0] + strArr[i3][0] + StringUtils.SPACE;
                strArr2[1] = strArr2[1] + strArr[i3][0] + StringUtils.SPACE;
                strArr2[2] = strArr2[2] + strArr[i3][0] + StringUtils.SPACE;
                strArr2[3] = strArr2[3] + strArr[i3][0] + StringUtils.SPACE;
            } else if (strArr3.length == 2) {
                strArr2[0] = strArr2[0] + strArr[i3][0] + StringUtils.SPACE;
                strArr2[1] = strArr2[1] + strArr[i3][1] + StringUtils.SPACE;
                strArr2[2] = strArr2[2] + strArr[i3][0] + StringUtils.SPACE;
                strArr2[3] = strArr2[3] + strArr[i3][1] + StringUtils.SPACE;
            } else if (strArr3.length == 3) {
                strArr2[0] = strArr2[0] + strArr[i3][0] + StringUtils.SPACE;
                strArr2[1] = strArr2[1] + strArr[i3][1] + StringUtils.SPACE;
                strArr2[2] = strArr2[2] + strArr[i3][2] + StringUtils.SPACE;
                strArr2[3] = strArr2[3] + strArr[i3][1] + StringUtils.SPACE;
            } else if (strArr3.length == 4) {
                strArr2[0] = strArr2[0] + strArr[i3][0] + StringUtils.SPACE;
                strArr2[1] = strArr2[1] + strArr[i3][1] + StringUtils.SPACE;
                strArr2[2] = strArr2[2] + strArr[i3][2] + StringUtils.SPACE;
                strArr2[3] = strArr2[3] + strArr[i3][3] + StringUtils.SPACE;
            }
        }
        arrayList.add(new CssDeclaration(str2, strArr2[0]));
        arrayList.add(new CssDeclaration(str3, strArr2[1]));
        arrayList.add(new CssDeclaration(str4, strArr2[2]));
        arrayList.add(new CssDeclaration(str5, strArr2[3]));
        return arrayList;
    }
}
