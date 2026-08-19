package com.itextpdf.kernel.pdf.canvas.parser.listener;

import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.canvas.parser.EventType;
import com.itextpdf.kernel.pdf.canvas.parser.data.IEventData;
import com.itextpdf.kernel.pdf.canvas.parser.data.TextRenderInfo;
import com.itextpdf.kernel.pdf.canvas.parser.listener.CharacterRenderInfo;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes6.dex */
public class RegexBasedLocationExtractionStrategy implements ILocationExtractionStrategy {
    private static final float EPS = 1.0E-4f;
    private List<CharacterRenderInfo> parseResult = new ArrayList();
    private Pattern pattern;

    @Override // com.itextpdf.kernel.pdf.canvas.parser.listener.IEventListener
    public Set<EventType> getSupportedEvents() {
        return null;
    }

    public RegexBasedLocationExtractionStrategy(String str) {
        this.pattern = Pattern.compile(str);
    }

    public RegexBasedLocationExtractionStrategy(Pattern pattern) {
        this.pattern = pattern;
    }

    @Override // com.itextpdf.kernel.pdf.canvas.parser.listener.ILocationExtractionStrategy
    public Collection<IPdfTextLocation> getResultantLocations() {
        Collections.sort(this.parseResult, new TextChunkLocationBasedComparator(new DefaultTextChunkLocationComparator()));
        ArrayList arrayList = new ArrayList();
        CharacterRenderInfo.StringConversionInfo stringConversionInfoMapString = CharacterRenderInfo.mapString(this.parseResult);
        Matcher matcher = this.pattern.matcher(stringConversionInfoMapString.text);
        while (matcher.find()) {
            Integer startIndex = getStartIndex(stringConversionInfoMapString.indexMap, matcher.start(), stringConversionInfoMapString.text);
            Integer endIndex = getEndIndex(stringConversionInfoMapString.indexMap, matcher.end() - 1);
            if (startIndex != null && endIndex != null && startIndex.intValue() <= endIndex.intValue()) {
                Iterator<Rectangle> it = toRectangles(this.parseResult.subList(startIndex.intValue(), endIndex.intValue() + 1)).iterator();
                while (it.hasNext()) {
                    arrayList.add(new DefaultPdfTextLocation(0, it.next(), matcher.group(0)));
                }
            }
        }
        Collections.sort(arrayList, new PdfTextLocationComparator());
        removeDuplicates(arrayList);
        return arrayList;
    }

    private void removeDuplicates(List<IPdfTextLocation> list) {
        int size = list.size() - 1;
        IPdfTextLocation iPdfTextLocation = null;
        while (size >= 0) {
            IPdfTextLocation iPdfTextLocation2 = list.get(size);
            Rectangle rectangle = iPdfTextLocation2.getRectangle();
            if (iPdfTextLocation != null && rectangle.equalsWithEpsilon(iPdfTextLocation.getRectangle())) {
                list.remove(iPdfTextLocation2);
            }
            size--;
            iPdfTextLocation = iPdfTextLocation2;
        }
    }

    @Override // com.itextpdf.kernel.pdf.canvas.parser.listener.IEventListener
    public void eventOccurred(IEventData iEventData, EventType eventType) {
        if (iEventData instanceof TextRenderInfo) {
            this.parseResult.addAll(toCRI((TextRenderInfo) iEventData));
        }
    }

    protected List<CharacterRenderInfo> toCRI(TextRenderInfo textRenderInfo) {
        ArrayList arrayList = new ArrayList();
        Iterator<TextRenderInfo> it = textRenderInfo.getCharacterRenderInfos().iterator();
        while (it.hasNext()) {
            arrayList.add(new CharacterRenderInfo(it.next()));
        }
        return arrayList;
    }

    protected List<Rectangle> toRectangles(List<CharacterRenderInfo> list) {
        ArrayList arrayList = new ArrayList();
        if (list.isEmpty()) {
            return arrayList;
        }
        int i = 0;
        while (true) {
            int i2 = i;
            if (i >= list.size()) {
                return arrayList;
            }
            while (i < list.size() && list.get(i).sameLine(list.get(i2))) {
                i++;
            }
            Iterator<CharacterRenderInfo> it = list.subList(i2, i).iterator();
            Rectangle commonRectangle = null;
            while (it.hasNext()) {
                commonRectangle = Rectangle.getCommonRectangle(commonRectangle, it.next().getBoundingBox());
            }
            arrayList.add(commonRectangle);
        }
    }

    private static Integer getStartIndex(Map<Integer, Integer> map, int i, String str) {
        while (!map.containsKey(Integer.valueOf(i)) && i < str.length()) {
            i++;
        }
        return map.get(Integer.valueOf(i));
    }

    private static Integer getEndIndex(Map<Integer, Integer> map, int i) {
        while (!map.containsKey(Integer.valueOf(i)) && i >= 0) {
            i--;
        }
        return map.get(Integer.valueOf(i));
    }

    private static final class PdfTextLocationComparator implements Comparator<IPdfTextLocation> {
        private PdfTextLocationComparator() {
        }

        @Override // java.util.Comparator
        public int compare(IPdfTextLocation iPdfTextLocation, IPdfTextLocation iPdfTextLocation2) {
            Rectangle rectangle = iPdfTextLocation.getRectangle();
            Rectangle rectangle2 = iPdfTextLocation2.getRectangle();
            if (Math.abs(rectangle.getY() - rectangle2.getY()) >= 1.0E-4f) {
                return rectangle2.getY() - rectangle.getY() > 1.0E-4f ? -1 : 1;
            }
            if (Math.abs(rectangle.getX() - rectangle2.getX()) < 1.0E-4f) {
                return 0;
            }
            return rectangle2.getX() - rectangle.getX() > 1.0E-4f ? -1 : 1;
        }
    }
}
