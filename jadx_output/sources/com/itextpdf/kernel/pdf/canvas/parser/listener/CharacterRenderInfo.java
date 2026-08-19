package com.itextpdf.kernel.pdf.canvas.parser.listener;

import com.itextpdf.kernel.geom.LineSegment;
import com.itextpdf.kernel.geom.Point;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.canvas.parser.data.TextRenderInfo;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.shadow.apache.commons.lang3.StringUtils;

/* JADX INFO: loaded from: classes6.dex */
public class CharacterRenderInfo extends TextChunk {
    private Rectangle boundingBox;

    static StringConversionInfo mapString(List<CharacterRenderInfo> list) {
        HashMap map = new HashMap();
        StringBuilder sb = new StringBuilder();
        CharacterRenderInfo characterRenderInfo = null;
        int i = 0;
        while (i < list.size()) {
            CharacterRenderInfo characterRenderInfo2 = list.get(i);
            if (characterRenderInfo == null) {
                putCharsWithIndex(characterRenderInfo2.getText(), i, map, sb);
            } else if (characterRenderInfo2.sameLine(characterRenderInfo)) {
                if (characterRenderInfo2.getLocation().isAtWordBoundary(characterRenderInfo.getLocation()) && !characterRenderInfo2.getText().startsWith(StringUtils.SPACE) && !characterRenderInfo2.getText().endsWith(StringUtils.SPACE)) {
                    sb.append(' ');
                }
                putCharsWithIndex(characterRenderInfo2.getText(), i, map, sb);
            } else {
                sb.append('\n');
                putCharsWithIndex(characterRenderInfo2.getText(), i, map, sb);
            }
            i++;
            characterRenderInfo = characterRenderInfo2;
        }
        StringConversionInfo stringConversionInfo = new StringConversionInfo();
        stringConversionInfo.indexMap = map;
        stringConversionInfo.text = sb.toString();
        return stringConversionInfo;
    }

    private static void putCharsWithIndex(CharSequence charSequence, int i, Map<Integer, Integer> map, StringBuilder sb) {
        int length = charSequence.length();
        for (int i2 = 0; i2 < length; i2++) {
            map.put(Integer.valueOf(sb.length()), Integer.valueOf(i));
            sb.append(charSequence.charAt(i2));
        }
    }

    public CharacterRenderInfo(TextRenderInfo textRenderInfo) {
        super(textRenderInfo == null ? "" : textRenderInfo.getText(), textRenderInfo == null ? null : getLocation(textRenderInfo));
        if (textRenderInfo == null) {
            throw new IllegalArgumentException("TextRenderInfo argument is not nullable.");
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(new Point(textRenderInfo.getDescentLine().getStartPoint().get(0), textRenderInfo.getDescentLine().getStartPoint().get(1)));
        arrayList.add(new Point(textRenderInfo.getDescentLine().getEndPoint().get(0), textRenderInfo.getDescentLine().getEndPoint().get(1)));
        arrayList.add(new Point(textRenderInfo.getAscentLine().getStartPoint().get(0), textRenderInfo.getAscentLine().getStartPoint().get(1)));
        arrayList.add(new Point(textRenderInfo.getAscentLine().getEndPoint().get(0), textRenderInfo.getAscentLine().getEndPoint().get(1)));
        this.boundingBox = Rectangle.calculateBBox(arrayList);
    }

    public Rectangle getBoundingBox() {
        return this.boundingBox;
    }

    private static ITextChunkLocation getLocation(TextRenderInfo textRenderInfo) {
        LineSegment baseline = textRenderInfo.getBaseline();
        return new TextChunkLocationDefaultImp(baseline.getStartPoint(), baseline.getEndPoint(), textRenderInfo.getSingleSpaceWidth());
    }

    static class StringConversionInfo {
        Map<Integer, Integer> indexMap;
        String text;

        StringConversionInfo() {
        }
    }
}
