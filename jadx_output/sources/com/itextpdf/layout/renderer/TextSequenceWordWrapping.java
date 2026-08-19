package com.itextpdf.layout.renderer;

import com.itextpdf.layout.layout.LayoutArea;
import com.itextpdf.layout.layout.LayoutContext;
import com.itextpdf.layout.layout.LayoutResult;
import com.itextpdf.layout.layout.TextLayoutResult;
import com.itextpdf.layout.properties.OverflowPropertyValue;
import com.itextpdf.layout.properties.OverflowWrapPropertyValue;
import com.itextpdf.layout.renderer.LineRenderer;
import com.itextpdf.p017io.font.otf.ActualTextIterator;
import com.itextpdf.p017io.font.otf.GlyphLine;
import com.itextpdf.p017io.util.TextUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
final class TextSequenceWordWrapping {
    private static final float OCCUPIED_AREA_RELAYOUT_EPS = 1.0E-4f;

    enum SpecialScriptsContainingSequenceStatus {
        MOVE_SEQUENCE_CONTAINING_SPECIAL_SCRIPTS_ON_NEXT_LINE,
        MOVE_TO_PREVIOUS_TEXT_RENDERER_CONTAINING_SPECIAL_SCRIPTS,
        FORCED_SPLIT
    }

    private TextSequenceWordWrapping() {
    }

    public static boolean isTextRendererAndRequiresSpecialScriptPreLayoutProcessing(IRenderer iRenderer) {
        if (!(iRenderer instanceof TextRenderer)) {
            return false;
        }
        TextRenderer textRenderer = (TextRenderer) iRenderer;
        return textRenderer.getSpecialScriptsWordBreakPoints() == null && textRenderer.textContainsSpecialScriptGlyphs(false) && !LineRenderer.isChildFloating(iRenderer);
    }

    public static void processSpecialScriptPreLayout(LineRenderer lineRenderer, int i) {
        SpecialScriptsContainingTextRendererSequenceInfo specialScriptsContainingTextRendererSequenceInfo = getSpecialScriptsContainingTextRendererSequenceInfo(lineRenderer, i);
        int i2 = specialScriptsContainingTextRendererSequenceInfo.numberOfSequentialTextRenderers;
        String str = specialScriptsContainingTextRendererSequenceInfo.sequentialTextContent;
        distributePossibleBreakPointsOverSequentialTextRenderers(lineRenderer, i, i2, TypographyUtils.getPossibleBreaks(str), specialScriptsContainingTextRendererSequenceInfo.indicesOfFloating);
    }

    public static void updateTextSequenceLayoutResults(Map<Integer, LayoutResult> map, boolean z, IRenderer iRenderer, int i, LayoutResult layoutResult) {
        if ((iRenderer instanceof TextRenderer) && ((TextRenderer) iRenderer).textContainsSpecialScriptGlyphs(true) == z) {
            map.put(Integer.valueOf(i), layoutResult);
        }
    }

    public static void resetTextSequenceIfItEnded(Map<Integer, LayoutResult> map, boolean z, IRenderer iRenderer, int i, MinMaxWidthOfTextRendererSequenceHelper minMaxWidthOfTextRendererSequenceHelper, boolean z2, AbstractWidthHandler abstractWidthHandler) {
        if (((iRenderer instanceof TextRenderer) && ((TextRenderer) iRenderer).textContainsSpecialScriptGlyphs(true) == z && !LineRenderer.isChildFloating(iRenderer)) || map.isEmpty()) {
            return;
        }
        int i2 = i;
        while (i2 >= 0 && map.get(Integer.valueOf(i2)) == null) {
            i2--;
        }
        m2668x8f807147(z2, i2, map.get(Integer.valueOf(i2)), abstractWidthHandler, minMaxWidthOfTextRendererSequenceHelper, map);
        map.clear();
    }

    public static LineRenderer.LineAscentDescentState updateTextRendererSequenceAscentDescent(LineRenderer lineRenderer, Map<Integer, float[]> map, int i, float[] fArr, LineRenderer.LineAscentDescentState lineAscentDescentState) {
        IRenderer iRenderer = lineRenderer.childRenderers.get(i);
        if ((iRenderer instanceof TextRenderer) && !((TextRenderer) iRenderer).textContainsSpecialScriptGlyphs(true)) {
            if (map.isEmpty()) {
                lineAscentDescentState = new LineRenderer.LineAscentDescentState(lineRenderer.maxAscent, lineRenderer.maxDescent, lineRenderer.maxTextAscent, lineRenderer.maxTextDescent);
            }
            map.put(Integer.valueOf(i), fArr);
            return lineAscentDescentState;
        }
        if (map.isEmpty()) {
            return lineAscentDescentState;
        }
        map.clear();
        return null;
    }

    public static MinMaxWidthOfTextRendererSequenceHelper updateTextRendererSequenceMinMaxWidth(LineRenderer lineRenderer, AbstractWidthHandler abstractWidthHandler, int i, MinMaxWidthOfTextRendererSequenceHelper minMaxWidthOfTextRendererSequenceHelper, boolean z, Map<Integer, LayoutResult> map, Map<Integer, LayoutResult> map2, float f) {
        IRenderer iRenderer = lineRenderer.childRenderers.get(i);
        if (!(iRenderer instanceof TextRenderer)) {
            return null;
        }
        TextRenderer textRenderer = (TextRenderer) iRenderer;
        return ((textRenderer.textContainsSpecialScriptGlyphs(true) || map.size() != 1) && !(textRenderer.textContainsSpecialScriptGlyphs(true) && map2.size() == 1)) ? minMaxWidthOfTextRendererSequenceHelper : new MinMaxWidthOfTextRendererSequenceHelper(abstractWidthHandler.minMaxWidth.getChildrenMinWidth(), f, z);
    }

    public static LastFittingChildRendererData getIndexAndLayoutResultOfTheLastTextRendererWithNoSpecialScripts(LineRenderer lineRenderer, int i, Map<Integer, LayoutResult> map, boolean z, boolean z2, boolean z3) {
        LayoutResult textLayoutResult;
        LayoutResult layoutResult;
        TextLayoutResult textLayoutResult2;
        LayoutResult layoutResult2 = map.get(Integer.valueOf(i));
        if (layoutResult2.getStatus() == 2 && !((TextLayoutResult) layoutResult2).isWordHasBeenSplit()) {
            return new LastFittingChildRendererData(i, map.get(Integer.valueOf(i)));
        }
        int i2 = i;
        int i3 = i2;
        while (i2 >= 0) {
            if ((lineRenderer.childRenderers.get(i2) instanceof TextRenderer) && !LineRenderer.isChildFloating(lineRenderer.childRenderers.get(i2))) {
                TextRenderer textRenderer = (TextRenderer) lineRenderer.childRenderers.get(i2);
                if (!textRenderer.textContainsSpecialScriptGlyphs(true)) {
                    TextLayoutResult textLayoutResult3 = (TextLayoutResult) map.get(Integer.valueOf(i2));
                    TextLayoutResult textLayoutResult4 = (TextLayoutResult) map.get(Integer.valueOf(i3));
                    if (i2 != i3 && textLayoutResult3.getStatus() == 1 && (textLayoutResult4.isStartsWithSplitCharacterWhiteSpace() || textLayoutResult3.isEndsWithSplitCharacter())) {
                        int status = textLayoutResult4.getStatus();
                        textLayoutResult2 = textLayoutResult4;
                        if (status != 3) {
                            textLayoutResult2 = new TextLayoutResult(3, null, null, lineRenderer.childRenderers.get(i3));
                        }
                    } else if (!textLayoutResult3.isContainsPossibleBreak() || textLayoutResult3.getStatus() == 3) {
                        i3 = i2;
                        i2--;
                    } else {
                        textRenderer.setIndexOfFirstCharacterToBeForcedToOverflow(textRenderer.line.end);
                        LayoutArea layoutAreaMo3122clone = textRenderer.getOccupiedArea().mo3122clone();
                        layoutAreaMo3122clone.getBBox().increaseHeight(1.0E-4f).increaseWidth(1.0E-4f);
                        LayoutResult layoutResultLayout = textRenderer.layout(new LayoutContext(layoutAreaMo3122clone, z));
                        textRenderer.setIndexOfFirstCharacterToBeForcedToOverflow(Integer.MAX_VALUE);
                        int status2 = layoutResultLayout.getStatus();
                        textLayoutResult = layoutResultLayout;
                        if (status2 == 1) {
                            textLayoutResult2 = new TextLayoutResult(3, null, null, lineRenderer.childRenderers.get(i3));
                        }
                    }
                } else {
                    textLayoutResult2 = new TextLayoutResult(3, null, null, lineRenderer.childRenderers.get(i3));
                }
                i2 = i3;
                textLayoutResult = textLayoutResult2;
                break;
            }
            if (LineRenderer.isChildFloating(lineRenderer.childRenderers.get(i2)) || (lineRenderer.childRenderers.get(i2) instanceof ImageRenderer) || LineRenderer.isInlineBlockChild(lineRenderer.childRenderers.get(i2))) {
                textLayoutResult2 = new TextLayoutResult(3, null, null, lineRenderer.childRenderers.get(i3));
                i2 = i3;
                textLayoutResult = textLayoutResult2;
                break;
            }
            i2 = i3;
            textLayoutResult = null;
        }
        i2 = i3;
        textLayoutResult = null;
        if (textLayoutResult != null) {
            i = i2;
            layoutResult = textLayoutResult;
        } else {
            OverflowWrapPropertyValue overflowWrapPropertyValue = (OverflowWrapPropertyValue) lineRenderer.childRenderers.get(i).getProperty(102);
            if (((overflowWrapPropertyValue == OverflowWrapPropertyValue.ANYWHERE || overflowWrapPropertyValue == OverflowWrapPropertyValue.BREAK_WORD) && map.get(Integer.valueOf(i2)).getStatus() != 3) || z2) {
                layoutResult = map.get(Integer.valueOf(i));
            } else {
                if (!z3) {
                    return null;
                }
                textLayoutResult = new TextLayoutResult(3, null, null, lineRenderer.childRenderers.get(i2));
                i = i2;
                layoutResult = textLayoutResult;
            }
        }
        if (layoutResult != null) {
            return new LastFittingChildRendererData(i, layoutResult);
        }
        return null;
    }

    /* JADX INFO: renamed from: getIndexAndLayoutResultOfTheLastTextRendererContainingSpecialScripts */
    public static LastFittingChildRendererData m2667xc450a0db(LineRenderer lineRenderer, int i, Map<Integer, LayoutResult> map, boolean z, boolean z2) {
        int i2;
        int i3;
        int i4;
        LayoutResult textLayoutResult;
        List<Integer> specialScriptsWordBreakPoints;
        int iFindPossibleBreaksSplitPosition;
        int i5 = i;
        LayoutResult layoutResultLayout = map.get(Integer.valueOf(i));
        int i6 = i5;
        int length = 0;
        int i7 = 0;
        while (true) {
            if (i6 < 0) {
                i2 = 0;
                i3 = i7;
                break;
            }
            TextRenderer textRenderer = (TextRenderer) lineRenderer.childRenderers.get(i6);
            if (i6 != i5) {
                length = textRenderer.length();
            } else if (layoutResultLayout.getSplitRenderer() != null) {
                TextRenderer textRenderer2 = (TextRenderer) layoutResultLayout.getSplitRenderer();
                GlyphLine glyphLine = textRenderer2.text;
                if (textRenderer2.length() > 0) {
                    length = textRenderer2.length();
                    while (glyphLine.end + i7 < glyphLine.size() && TextUtil.isWhitespace(glyphLine.get(glyphLine.end + i7))) {
                        length++;
                        i7++;
                    }
                }
            }
            if (length > 0 && (specialScriptsWordBreakPoints = textRenderer.getSpecialScriptsWordBreakPoints()) != null && specialScriptsWordBreakPoints.size() > 0 && specialScriptsWordBreakPoints.get(0).intValue() != -1 && (iFindPossibleBreaksSplitPosition = TextRenderer.findPossibleBreaksSplitPosition(textRenderer.getSpecialScriptsWordBreakPoints(), textRenderer.text.start + length, false)) > -1) {
                int iIntValue = specialScriptsWordBreakPoints.get(iFindPossibleBreaksSplitPosition).intValue() - i7;
                z = iIntValue != textRenderer.text.end;
                if (!z) {
                    i6++;
                }
                i3 = i7;
                i4 = length;
                textLayoutResult = null;
                int i8 = i6;
                i2 = iIntValue;
                i5 = i8;
            } else {
                SpecialScriptsContainingSequenceStatus specialScriptsContainingSequenceStatus = getSpecialScriptsContainingSequenceStatus(lineRenderer, i6);
                if (specialScriptsContainingSequenceStatus == SpecialScriptsContainingSequenceStatus.FORCED_SPLIT) {
                    OverflowWrapPropertyValue overflowWrapPropertyValue = (OverflowWrapPropertyValue) lineRenderer.childRenderers.get(i5).getProperty(102);
                    if (((overflowWrapPropertyValue != OverflowWrapPropertyValue.ANYWHERE && overflowWrapPropertyValue != OverflowWrapPropertyValue.BREAK_WORD) || layoutResultLayout.getStatus() == 3) && !z2) {
                        return null;
                    }
                    i3 = i7;
                    i4 = length;
                    textLayoutResult = layoutResultLayout.getStatus() != 3 ? layoutResultLayout : null;
                    i2 = 0;
                } else {
                    if (specialScriptsContainingSequenceStatus == SpecialScriptsContainingSequenceStatus.MOVE_SEQUENCE_CONTAINING_SPECIAL_SCRIPTS_ON_NEXT_LINE) {
                        i5 = i6;
                        i3 = i7;
                        i2 = 0;
                        break;
                    }
                    i6--;
                }
            }
        }
        i4 = length;
        textLayoutResult = null;
        if (textLayoutResult == null) {
            TextRenderer textRenderer3 = (TextRenderer) lineRenderer.childRenderers.get(i5);
            if (z) {
                if ((i4 - i3) + textRenderer3.text.start != i2) {
                    LayoutArea layoutAreaMo3122clone = textRenderer3.getOccupiedArea().mo3122clone();
                    layoutAreaMo3122clone.getBBox().increaseHeight(1.0E-4f).increaseWidth(1.0E-4f);
                    textRenderer3.setSpecialScriptFirstNotFittingIndex(i2);
                    layoutResultLayout = textRenderer3.layout(new LayoutContext(layoutAreaMo3122clone, z));
                    textRenderer3.setSpecialScriptFirstNotFittingIndex(-1);
                }
                textLayoutResult = layoutResultLayout;
            } else {
                textLayoutResult = new TextLayoutResult(3, null, null, textRenderer3);
            }
        }
        return new LastFittingChildRendererData(i5, textLayoutResult);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0010  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void preprocessTextSequenceOverflowX(com.itextpdf.layout.renderer.LineRenderer r4, boolean r5, com.itextpdf.layout.renderer.IRenderer r6, boolean r7, com.itextpdf.layout.properties.OverflowPropertyValue r8) {
        /*
            boolean r0 = r6 instanceof com.itextpdf.layout.renderer.TextRenderer
            r1 = 0
            if (r0 == 0) goto L10
            r0 = r6
            com.itextpdf.layout.renderer.TextRenderer r0 = (com.itextpdf.layout.renderer.TextRenderer) r0
            r2 = 1
            boolean r0 = r0.textContainsSpecialScriptGlyphs(r2)
            if (r0 == 0) goto L10
            goto L11
        L10:
            r2 = r1
        L11:
            r0 = 103(0x67, float:1.44E-43)
            if (r5 == 0) goto L32
            if (r2 == 0) goto L32
            com.itextpdf.layout.renderer.TextRenderer r6 = (com.itextpdf.layout.renderer.TextRenderer) r6
            java.util.List r3 = r6.getSpecialScriptsWordBreakPoints()
            java.lang.Object r1 = r3.get(r1)
            java.lang.Integer r1 = (java.lang.Integer) r1
            int r1 = r1.intValue()
            r3 = -1
            if (r1 == r3) goto L2d
            r6.setSpecialScriptFirstNotFittingIndex(r1)
        L2d:
            if (r7 == 0) goto L32
            r4.setProperty(r0, r8)
        L32:
            if (r5 == 0) goto L3b
            if (r2 != 0) goto L3b
            if (r7 == 0) goto L3b
            r4.setProperty(r0, r8)
        L3b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.layout.renderer.TextSequenceWordWrapping.preprocessTextSequenceOverflowX(com.itextpdf.layout.renderer.LineRenderer, boolean, com.itextpdf.layout.renderer.IRenderer, boolean, com.itextpdf.layout.properties.OverflowPropertyValue):void");
    }

    public static boolean postprocessTextSequenceOverflowX(LineRenderer lineRenderer, boolean z, int i, IRenderer iRenderer, LayoutResult layoutResult, boolean z2) {
        boolean z3 = true;
        boolean z4 = (iRenderer instanceof TextRenderer) && ((TextRenderer) iRenderer).textContainsSpecialScriptGlyphs(true);
        int i2 = i + 1;
        boolean z5 = i2 == lineRenderer.childRenderers.size() || LineRenderer.isChildFloating(lineRenderer.childRenderers.get(i2)) || !(lineRenderer.childRenderers.get(i2) instanceof TextRenderer);
        if (z && z4) {
            TextRenderer textRenderer = (TextRenderer) iRenderer;
            z = textRenderer.getSpecialScriptFirstNotFittingIndex() > 0 || z5;
            textRenderer.setSpecialScriptFirstNotFittingIndex(-1);
            if (z2) {
                lineRenderer.setProperty(103, OverflowPropertyValue.FIT);
            }
        }
        if (!z || z4) {
            return z;
        }
        if ((!(layoutResult instanceof TextLayoutResult) || !((TextLayoutResult) layoutResult).isContainsPossibleBreak()) && !z5) {
            z3 = z;
        }
        if (z2) {
            lineRenderer.setProperty(103, OverflowPropertyValue.FIT);
        }
        return z3;
    }

    static SpecialScriptsContainingTextRendererSequenceInfo getSpecialScriptsContainingTextRendererSequenceInfo(LineRenderer lineRenderer, int i) {
        StringBuilder sb = new StringBuilder();
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        while (i < lineRenderer.childRenderers.size()) {
            if (LineRenderer.isChildFloating(lineRenderer.childRenderers.get(i))) {
                i2++;
                arrayList.add(Integer.valueOf(i));
            } else {
                if (!(lineRenderer.childRenderers.get(i) instanceof TextRenderer) || !((TextRenderer) lineRenderer.childRenderers.get(i)).textContainsSpecialScriptGlyphs(false)) {
                    break;
                }
                sb.append(((TextRenderer) lineRenderer.childRenderers.get(i)).text.toString());
                i2++;
            }
            i++;
        }
        return new SpecialScriptsContainingTextRendererSequenceInfo(i2, sb.toString(), arrayList);
    }

    static void distributePossibleBreakPointsOverSequentialTextRenderers(LineRenderer lineRenderer, int i, int i2, List<Integer> list, List<Integer> list2) {
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < i2; i5++) {
            if (!list2.contains(Integer.valueOf(i5))) {
                TextRenderer textRenderer = (TextRenderer) lineRenderer.childRenderers.get(i + i5);
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                fillActualTextChunkRelatedLists(textRenderer.getText(), arrayList, arrayList2);
                ArrayList arrayList3 = new ArrayList();
                int i6 = i3;
                while (true) {
                    if (i6 >= list.size()) {
                        break;
                    }
                    int iIntValue = list.get(i6).intValue() - i4;
                    int iIntValue2 = ((Integer) arrayList.get(arrayList.size() - 1)).intValue();
                    if (iIntValue > iIntValue2) {
                        i4 += iIntValue2;
                        i3 = i6;
                        break;
                    } else {
                        arrayList3.add(Integer.valueOf(iIntValue));
                        i6++;
                    }
                }
                textRenderer.setSpecialScriptsWordBreakPoints(convertPossibleBreakPointsToGlyphLineBased(arrayList3, arrayList, arrayList2));
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0035  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static com.itextpdf.layout.renderer.TextSequenceWordWrapping.SpecialScriptsContainingSequenceStatus getSpecialScriptsContainingSequenceStatus(com.itextpdf.layout.renderer.LineRenderer r2, int r3) {
        /*
            r0 = 1
            r1 = 0
            if (r3 <= 0) goto L35
            java.util.List<com.itextpdf.layout.renderer.IRenderer> r2 = r2.childRenderers
            int r3 = r3 - r0
            java.lang.Object r2 = r2.get(r3)
            com.itextpdf.layout.renderer.IRenderer r2 = (com.itextpdf.layout.renderer.IRenderer) r2
            boolean r3 = r2 instanceof com.itextpdf.layout.renderer.TextRenderer
            if (r3 == 0) goto L22
            boolean r3 = com.itextpdf.layout.renderer.LineRenderer.isChildFloating(r2)
            if (r3 != 0) goto L22
            com.itextpdf.layout.renderer.TextRenderer r2 = (com.itextpdf.layout.renderer.TextRenderer) r2
            boolean r2 = r2.textContainsSpecialScriptGlyphs(r0)
            if (r2 == 0) goto L32
            r2 = r0
            r3 = r1
            goto L37
        L22:
            boolean r3 = com.itextpdf.layout.renderer.LineRenderer.isChildFloating(r2)
            if (r3 != 0) goto L32
            boolean r3 = r2 instanceof com.itextpdf.layout.renderer.ImageRenderer
            if (r3 != 0) goto L32
            boolean r2 = com.itextpdf.layout.renderer.LineRenderer.isInlineBlockChild(r2)
            if (r2 == 0) goto L35
        L32:
            r3 = r0
            r2 = r1
            goto L37
        L35:
            r2 = r1
            r3 = r2
        L37:
            if (r2 != 0) goto L3c
            if (r3 != 0) goto L3c
            goto L3d
        L3c:
            r0 = r1
        L3d:
            if (r3 == 0) goto L42
            com.itextpdf.layout.renderer.TextSequenceWordWrapping$SpecialScriptsContainingSequenceStatus r2 = com.itextpdf.layout.renderer.TextSequenceWordWrapping.SpecialScriptsContainingSequenceStatus.MOVE_SEQUENCE_CONTAINING_SPECIAL_SCRIPTS_ON_NEXT_LINE
            return r2
        L42:
            if (r0 == 0) goto L47
            com.itextpdf.layout.renderer.TextSequenceWordWrapping$SpecialScriptsContainingSequenceStatus r2 = com.itextpdf.layout.renderer.TextSequenceWordWrapping.SpecialScriptsContainingSequenceStatus.FORCED_SPLIT
            return r2
        L47:
            com.itextpdf.layout.renderer.TextSequenceWordWrapping$SpecialScriptsContainingSequenceStatus r2 = com.itextpdf.layout.renderer.TextSequenceWordWrapping.SpecialScriptsContainingSequenceStatus.MOVE_TO_PREVIOUS_TEXT_RENDERER_CONTAINING_SPECIAL_SCRIPTS
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.layout.renderer.TextSequenceWordWrapping.getSpecialScriptsContainingSequenceStatus(com.itextpdf.layout.renderer.LineRenderer, int):com.itextpdf.layout.renderer.TextSequenceWordWrapping$SpecialScriptsContainingSequenceStatus");
    }

    static float getCurWidthRelayoutedTextSequenceDecrement(int i, int i2, Map<Integer, LayoutResult> map) {
        float width = 0.0f;
        if (i != i2) {
            for (int i3 = i - 1; i3 >= i2; i3--) {
                if (map.get(Integer.valueOf(i3)) != null) {
                    width += map.get(Integer.valueOf(i3)).getOccupiedArea().getBBox().getWidth();
                }
            }
        }
        return width;
    }

    /* JADX INFO: renamed from: updateMinMaxWidthOfLineRendererAfterTextRendererSequenceProcessing */
    private static void m2668x8f807147(boolean z, int i, LayoutResult layoutResult, AbstractWidthHandler abstractWidthHandler, MinMaxWidthOfTextRendererSequenceHelper minMaxWidthOfTextRendererSequenceHelper, Map<Integer, LayoutResult> map) {
        if (z) {
            return;
        }
        TextLayoutResult textLayoutResult = (TextLayoutResult) layoutResult;
        float leftMinWidth = textLayoutResult.getLeftMinWidth();
        float minWidth = textLayoutResult.getMinMaxWidth().getMinWidth();
        for (int i2 = i - 1; i2 >= 0; i2--) {
            if (map.get(Integer.valueOf(i2)) != null) {
                TextLayoutResult textLayoutResult2 = (TextLayoutResult) map.get(Integer.valueOf(i2));
                float leftMinWidth2 = textLayoutResult2.getLeftMinWidth();
                float minWidth2 = textLayoutResult2.getMinMaxWidth().getMinWidth();
                float rightMinWidth = textLayoutResult2.getRightMinWidth();
                minWidth = Math.max(minWidth, minWidth2);
                if (!textLayoutResult2.isEndsWithSplitCharacter() && !textLayoutResult.isStartsWithSplitCharacterWhiteSpace()) {
                    float f = rightMinWidth > -1.0f ? leftMinWidth + rightMinWidth : leftMinWidth + leftMinWidth2;
                    minWidth = Math.max(minWidth, f);
                    if (rightMinWidth <= -1.0f) {
                        leftMinWidth2 = f;
                    }
                }
                textLayoutResult = textLayoutResult2;
                leftMinWidth = leftMinWidth2;
            }
        }
        if (!minMaxWidthOfTextRendererSequenceHelper.anythingPlacedBeforeTextRendererSequence) {
            minWidth = Math.max(minWidth, leftMinWidth + minMaxWidthOfTextRendererSequenceHelper.textIndent);
        }
        abstractWidthHandler.minMaxWidth.setChildrenMinWidth(Math.max(minWidth, minMaxWidthOfTextRendererSequenceHelper.minWidthPreSequence));
    }

    private static List<Integer> convertPossibleBreakPointsToGlyphLineBased(List<Integer> list, List<Integer> list2, List<Integer> list3) {
        if (list.isEmpty()) {
            list.add(-1);
            return list;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<Integer> it = list.iterator();
        while (it.hasNext()) {
            int iFindPossibleBreaksSplitPosition = TextRenderer.findPossibleBreaksSplitPosition(list2, it.next().intValue(), true);
            if (iFindPossibleBreaksSplitPosition >= 0) {
                arrayList.add(list3.get(iFindPossibleBreaksSplitPosition));
            }
        }
        return arrayList;
    }

    private static void fillActualTextChunkRelatedLists(GlyphLine glyphLine, List<Integer> list, List<Integer> list2) {
        ActualTextIterator actualTextIterator = new ActualTextIterator(glyphLine);
        int length = 0;
        while (actualTextIterator.hasNext()) {
            GlyphLine.GlyphLinePart next = actualTextIterator.next();
            if (next.actualText != null) {
                int length2 = next.actualText.length() + length;
                list.add(Integer.valueOf(length2));
                list2.add(Integer.valueOf(next.end));
                length = length2;
            } else {
                int i = next.start;
                while (i < next.end) {
                    char[] chars = glyphLine.get(i).getChars();
                    length += chars != null ? chars.length : 0;
                    list.add(Integer.valueOf(length));
                    i++;
                    list2.add(Integer.valueOf(i));
                }
            }
        }
    }

    static class MinMaxWidthOfTextRendererSequenceHelper {
        public boolean anythingPlacedBeforeTextRendererSequence;
        public float minWidthPreSequence;
        public float textIndent;

        public MinMaxWidthOfTextRendererSequenceHelper(float f, float f2, boolean z) {
            this.minWidthPreSequence = f;
            this.textIndent = f2;
            this.anythingPlacedBeforeTextRendererSequence = z;
        }
    }

    static class LastFittingChildRendererData {
        public int childIndex;
        public LayoutResult childLayoutResult;

        public LastFittingChildRendererData(int i, LayoutResult layoutResult) {
            this.childIndex = i;
            this.childLayoutResult = layoutResult;
        }
    }

    static class SpecialScriptsContainingTextRendererSequenceInfo {
        List<Integer> indicesOfFloating;
        public int numberOfSequentialTextRenderers;
        public String sequentialTextContent;

        public SpecialScriptsContainingTextRendererSequenceInfo(int i, String str, List<Integer> list) {
            this.numberOfSequentialTextRenderers = i;
            this.sequentialTextContent = str;
            this.indicesOfFloating = list;
        }
    }
}
