package com.itextpdf.kernel.pdf.canvas.parser.listener;

import com.itextpdf.kernel.geom.LineSegment;
import com.itextpdf.kernel.geom.Matrix;
import com.itextpdf.kernel.geom.Vector;
import com.itextpdf.kernel.pdf.canvas.CanvasTag;
import com.itextpdf.kernel.pdf.canvas.parser.EventType;
import com.itextpdf.kernel.pdf.canvas.parser.data.IEventData;
import com.itextpdf.kernel.pdf.canvas.parser.data.TextRenderInfo;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public class LocationTextExtractionStrategy implements ITextExtractionStrategy {
    private static boolean DUMP_STATE = false;
    private TextRenderInfo lastTextRenderInfo;
    private final List<TextChunk> locationalResult;
    private boolean rightToLeftRunDirection;
    private final ITextChunkLocationStrategy tclStrat;
    private boolean useActualText;

    public interface ITextChunkLocationStrategy {
        ITextChunkLocation createLocation(TextRenderInfo textRenderInfo, LineSegment lineSegment);
    }

    @Override // com.itextpdf.kernel.pdf.canvas.parser.listener.IEventListener
    public Set<EventType> getSupportedEvents() {
        return null;
    }

    public LocationTextExtractionStrategy() {
        this(new ITextChunkLocationStrategyImpl());
    }

    public LocationTextExtractionStrategy(ITextChunkLocationStrategy iTextChunkLocationStrategy) {
        this.locationalResult = new ArrayList();
        this.useActualText = false;
        this.rightToLeftRunDirection = false;
        this.tclStrat = iTextChunkLocationStrategy;
    }

    public LocationTextExtractionStrategy setUseActualText(boolean z) {
        this.useActualText = z;
        return this;
    }

    public LocationTextExtractionStrategy setRightToLeftRunDirection(boolean z) {
        this.rightToLeftRunDirection = z;
        return this;
    }

    public boolean isUseActualText() {
        return this.useActualText;
    }

    @Override // com.itextpdf.kernel.pdf.canvas.parser.listener.IEventListener
    public void eventOccurred(IEventData iEventData, EventType eventType) {
        if (eventType.equals(EventType.RENDER_TEXT)) {
            TextRenderInfo textRenderInfo = (TextRenderInfo) iEventData;
            LineSegment baseline = textRenderInfo.getBaseline();
            if (textRenderInfo.getRise() != 0.0f) {
                baseline = baseline.transformBy(new Matrix(0.0f, -textRenderInfo.getRise()));
            }
            if (this.useActualText) {
                TextRenderInfo textRenderInfo2 = this.lastTextRenderInfo;
                CanvasTag canvasTagFindLastTagWithActualText = textRenderInfo2 != null ? findLastTagWithActualText(textRenderInfo2.getCanvasTagHierarchy()) : null;
                if (canvasTagFindLastTagWithActualText != null && canvasTagFindLastTagWithActualText == findLastTagWithActualText(textRenderInfo.getCanvasTagHierarchy())) {
                    List<TextChunk> list = this.locationalResult;
                    TextChunk textChunk = list.get(list.size() - 1);
                    TextChunk textChunk2 = new TextChunk(textChunk.getText(), this.tclStrat.createLocation(textRenderInfo, new LineSegment(new Vector(Math.min(textChunk.getLocation().getStartLocation().get(0), baseline.getStartPoint().get(0)), Math.min(textChunk.getLocation().getStartLocation().get(1), baseline.getStartPoint().get(1)), Math.min(textChunk.getLocation().getStartLocation().get(2), baseline.getStartPoint().get(2))), new Vector(Math.max(textChunk.getLocation().getEndLocation().get(0), baseline.getEndPoint().get(0)), Math.max(textChunk.getLocation().getEndLocation().get(1), baseline.getEndPoint().get(1)), Math.max(textChunk.getLocation().getEndLocation().get(2), baseline.getEndPoint().get(2))))));
                    List<TextChunk> list2 = this.locationalResult;
                    list2.set(list2.size() - 1, textChunk2);
                } else {
                    String actualText = textRenderInfo.getActualText();
                    if (actualText == null) {
                        actualText = textRenderInfo.getText();
                    }
                    this.locationalResult.add(new TextChunk(actualText, this.tclStrat.createLocation(textRenderInfo, baseline)));
                }
            } else {
                this.locationalResult.add(new TextChunk(textRenderInfo.getText(), this.tclStrat.createLocation(textRenderInfo, baseline)));
            }
            this.lastTextRenderInfo = textRenderInfo;
        }
    }

    @Override // com.itextpdf.kernel.pdf.canvas.parser.listener.ITextExtractionStrategy
    public String getResultantText() {
        if (DUMP_STATE) {
            dumpState();
        }
        ArrayList arrayList = new ArrayList(this.locationalResult);
        sortWithMarks(arrayList);
        StringBuilder sb = new StringBuilder();
        TextChunk textChunk = null;
        for (TextChunk textChunk2 : arrayList) {
            if (textChunk == null) {
                sb.append(textChunk2.text);
            } else if (textChunk2.sameLine(textChunk)) {
                if (isChunkAtWordBoundary(textChunk2, textChunk) && !startsWithSpace(textChunk2.text) && !endsWithSpace(textChunk.text)) {
                    sb.append(' ');
                }
                sb.append(textChunk2.text);
            } else {
                sb.append('\n');
                sb.append(textChunk2.text);
            }
            textChunk = textChunk2;
        }
        return sb.toString();
    }

    protected boolean isChunkAtWordBoundary(TextChunk textChunk, TextChunk textChunk2) {
        return textChunk.getLocation().isAtWordBoundary(textChunk2.getLocation());
    }

    private boolean startsWithSpace(String str) {
        return str.length() != 0 && str.charAt(0) == ' ';
    }

    private boolean endsWithSpace(String str) {
        return str.length() != 0 && str.charAt(str.length() - 1) == ' ';
    }

    private void dumpState() {
        Iterator<TextChunk> it = this.locationalResult.iterator();
        while (it.hasNext()) {
            it.next().printDiagnostics();
            System.out.println();
        }
    }

    private CanvasTag findLastTagWithActualText(List<CanvasTag> list) {
        for (CanvasTag canvasTag : list) {
            if (canvasTag.getActualText() != null) {
                return canvasTag;
            }
        }
        return null;
    }

    private void sortWithMarks(List<TextChunk> list) {
        HashMap map = new HashMap();
        ArrayList<TextChunk> arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            ITextChunkLocation location = list.get(i).getLocation();
            if (location.getStartLocation().equals(location.getEndLocation())) {
                int i2 = 0;
                while (true) {
                    if (i2 >= list.size()) {
                        arrayList.add(list.get(i));
                        break;
                    }
                    if (i != i2) {
                        ITextChunkLocation location2 = list.get(i2).getLocation();
                        if (!location2.getStartLocation().equals(location2.getEndLocation()) && TextChunkLocationDefaultImp.containsMark(location2, location)) {
                            TextChunkMarks textChunkMarks = (TextChunkMarks) map.get(list.get(i2));
                            if (textChunkMarks == null) {
                                textChunkMarks = new TextChunkMarks();
                                map.put(list.get(i2), textChunkMarks);
                            }
                            if (i < i2) {
                                textChunkMarks.preceding.add(list.get(i));
                            } else {
                                textChunkMarks.succeeding.add(list.get(i));
                            }
                        }
                    }
                    i2++;
                }
            } else {
                arrayList.add(list.get(i));
            }
        }
        Collections.sort(arrayList, new TextChunkLocationBasedComparator(new DefaultTextChunkLocationComparator(!this.rightToLeftRunDirection)));
        list.clear();
        for (TextChunk textChunk : arrayList) {
            TextChunkMarks textChunkMarks2 = (TextChunkMarks) map.get(textChunk);
            if (textChunkMarks2 != null) {
                if (this.rightToLeftRunDirection) {
                    for (int size = textChunkMarks2.succeeding.size() - 1; size >= 0; size--) {
                        list.add(textChunkMarks2.succeeding.get(size));
                    }
                } else {
                    for (int i3 = 0; i3 < textChunkMarks2.preceding.size(); i3++) {
                        list.add(textChunkMarks2.preceding.get(i3));
                    }
                }
            }
            list.add(textChunk);
            if (textChunkMarks2 != null) {
                if (this.rightToLeftRunDirection) {
                    for (int size2 = textChunkMarks2.preceding.size() - 1; size2 >= 0; size2--) {
                        list.add(textChunkMarks2.preceding.get(size2));
                    }
                } else {
                    for (int i4 = 0; i4 < textChunkMarks2.succeeding.size(); i4++) {
                        list.add(textChunkMarks2.succeeding.get(i4));
                    }
                }
            }
        }
    }

    private static class TextChunkMarks {
        List<TextChunk> preceding;
        List<TextChunk> succeeding;

        private TextChunkMarks() {
            this.preceding = new ArrayList();
            this.succeeding = new ArrayList();
        }
    }

    private static final class ITextChunkLocationStrategyImpl implements ITextChunkLocationStrategy {
        private ITextChunkLocationStrategyImpl() {
        }

        @Override // com.itextpdf.kernel.pdf.canvas.parser.listener.LocationTextExtractionStrategy.ITextChunkLocationStrategy
        public ITextChunkLocation createLocation(TextRenderInfo textRenderInfo, LineSegment lineSegment) {
            return new TextChunkLocationDefaultImp(lineSegment.getStartPoint(), lineSegment.getEndPoint(), textRenderInfo.getSingleSpaceWidth());
        }
    }
}
