package com.itextpdf.svg.renderers.factories;

import com.itextpdf.svg.SvgConstants;
import com.itextpdf.svg.renderers.ISvgNodeRenderer;
import com.itextpdf.svg.renderers.impl.CircleSvgNodeRenderer;
import com.itextpdf.svg.renderers.impl.ClipPathSvgNodeRenderer;
import com.itextpdf.svg.renderers.impl.DefsSvgNodeRenderer;
import com.itextpdf.svg.renderers.impl.EllipseSvgNodeRenderer;
import com.itextpdf.svg.renderers.impl.GroupSvgNodeRenderer;
import com.itextpdf.svg.renderers.impl.ImageSvgNodeRenderer;
import com.itextpdf.svg.renderers.impl.LineSvgNodeRenderer;
import com.itextpdf.svg.renderers.impl.LinearGradientSvgNodeRenderer;
import com.itextpdf.svg.renderers.impl.MarkerSvgNodeRenderer;
import com.itextpdf.svg.renderers.impl.PathSvgNodeRenderer;
import com.itextpdf.svg.renderers.impl.PatternSvgNodeRenderer;
import com.itextpdf.svg.renderers.impl.PolygonSvgNodeRenderer;
import com.itextpdf.svg.renderers.impl.PolylineSvgNodeRenderer;
import com.itextpdf.svg.renderers.impl.RectangleSvgNodeRenderer;
import com.itextpdf.svg.renderers.impl.StopSvgNodeRenderer;
import com.itextpdf.svg.renderers.impl.SvgTagSvgNodeRenderer;
import com.itextpdf.svg.renderers.impl.SymbolSvgNodeRenderer;
import com.itextpdf.svg.renderers.impl.TextLeafSvgNodeRenderer;
import com.itextpdf.svg.renderers.impl.TextSvgBranchRenderer;
import com.itextpdf.svg.renderers.impl.TextSvgTSpanBranchRenderer;
import com.itextpdf.svg.renderers.impl.UseSvgNodeRenderer;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
class DefaultSvgNodeRendererMapper {
    private static final String CLIP_PATH_LC;
    private static final String LINEAR_GRADIENT_LC;
    private static final String TEXT_LEAF_LC;
    private static final Collection<String> ignored;
    private static final Map<String, ISvgNodeRendererCreator> mapping;

    @FunctionalInterface
    public interface ISvgNodeRendererCreator {
        ISvgNodeRenderer create();
    }

    static {
        String lowerCase = SvgConstants.Tags.CLIP_PATH.toLowerCase();
        CLIP_PATH_LC = lowerCase;
        String lowerCase2 = SvgConstants.Tags.LINEAR_GRADIENT.toLowerCase();
        LINEAR_GRADIENT_LC = lowerCase2;
        String lowerCase3 = SvgConstants.Tags.TEXT_LEAF.toLowerCase();
        TEXT_LEAF_LC = lowerCase3;
        HashMap map = new HashMap();
        map.put("circle", new ISvgNodeRendererCreator() { // from class: com.itextpdf.svg.renderers.factories.DefaultSvgNodeRendererMapper$$ExternalSyntheticLambda0
            @Override // com.itextpdf.svg.renderers.factories.DefaultSvgNodeRendererMapper.ISvgNodeRendererCreator
            public final ISvgNodeRenderer create() {
                return DefaultSvgNodeRendererMapper.lambda$static$0();
            }
        });
        map.put(SvgConstants.Tags.CLIP_PATH, new ISvgNodeRendererCreator() { // from class: com.itextpdf.svg.renderers.factories.DefaultSvgNodeRendererMapper$$ExternalSyntheticLambda2
            @Override // com.itextpdf.svg.renderers.factories.DefaultSvgNodeRendererMapper.ISvgNodeRendererCreator
            public final ISvgNodeRenderer create() {
                return DefaultSvgNodeRendererMapper.lambda$static$1();
            }
        });
        map.put(SvgConstants.Tags.DEFS, new ISvgNodeRendererCreator() { // from class: com.itextpdf.svg.renderers.factories.DefaultSvgNodeRendererMapper$$ExternalSyntheticLambda7
            @Override // com.itextpdf.svg.renderers.factories.DefaultSvgNodeRendererMapper.ISvgNodeRendererCreator
            public final ISvgNodeRenderer create() {
                return DefaultSvgNodeRendererMapper.lambda$static$2();
            }
        });
        map.put(SvgConstants.Tags.ELLIPSE, new ISvgNodeRendererCreator() { // from class: com.itextpdf.svg.renderers.factories.DefaultSvgNodeRendererMapper$$ExternalSyntheticLambda8
            @Override // com.itextpdf.svg.renderers.factories.DefaultSvgNodeRendererMapper.ISvgNodeRendererCreator
            public final ISvgNodeRenderer create() {
                return DefaultSvgNodeRendererMapper.lambda$static$3();
            }
        });
        map.put(SvgConstants.Tags.f3337G, new ISvgNodeRendererCreator() { // from class: com.itextpdf.svg.renderers.factories.DefaultSvgNodeRendererMapper$$ExternalSyntheticLambda9
            @Override // com.itextpdf.svg.renderers.factories.DefaultSvgNodeRendererMapper.ISvgNodeRendererCreator
            public final ISvgNodeRenderer create() {
                return DefaultSvgNodeRendererMapper.lambda$static$4();
            }
        });
        map.put("image", new ISvgNodeRendererCreator() { // from class: com.itextpdf.svg.renderers.factories.DefaultSvgNodeRendererMapper$$ExternalSyntheticLambda10
            @Override // com.itextpdf.svg.renderers.factories.DefaultSvgNodeRendererMapper.ISvgNodeRendererCreator
            public final ISvgNodeRenderer create() {
                return DefaultSvgNodeRendererMapper.lambda$static$5();
            }
        });
        map.put("line", new ISvgNodeRendererCreator() { // from class: com.itextpdf.svg.renderers.factories.DefaultSvgNodeRendererMapper$$ExternalSyntheticLambda12
            @Override // com.itextpdf.svg.renderers.factories.DefaultSvgNodeRendererMapper.ISvgNodeRendererCreator
            public final ISvgNodeRenderer create() {
                return DefaultSvgNodeRendererMapper.lambda$static$6();
            }
        });
        map.put(SvgConstants.Tags.LINEAR_GRADIENT, new ISvgNodeRendererCreator() { // from class: com.itextpdf.svg.renderers.factories.DefaultSvgNodeRendererMapper$$ExternalSyntheticLambda13
            @Override // com.itextpdf.svg.renderers.factories.DefaultSvgNodeRendererMapper.ISvgNodeRendererCreator
            public final ISvgNodeRenderer create() {
                return DefaultSvgNodeRendererMapper.lambda$static$7();
            }
        });
        map.put(SvgConstants.Tags.MARKER, new ISvgNodeRendererCreator() { // from class: com.itextpdf.svg.renderers.factories.DefaultSvgNodeRendererMapper$$ExternalSyntheticLambda14
            @Override // com.itextpdf.svg.renderers.factories.DefaultSvgNodeRendererMapper.ISvgNodeRendererCreator
            public final ISvgNodeRenderer create() {
                return DefaultSvgNodeRendererMapper.lambda$static$8();
            }
        });
        map.put("pattern", new ISvgNodeRendererCreator() { // from class: com.itextpdf.svg.renderers.factories.DefaultSvgNodeRendererMapper$$ExternalSyntheticLambda15
            @Override // com.itextpdf.svg.renderers.factories.DefaultSvgNodeRendererMapper.ISvgNodeRendererCreator
            public final ISvgNodeRenderer create() {
                return DefaultSvgNodeRendererMapper.lambda$static$9();
            }
        });
        map.put(SvgConstants.Tags.PATH, new ISvgNodeRendererCreator() { // from class: com.itextpdf.svg.renderers.factories.DefaultSvgNodeRendererMapper$$ExternalSyntheticLambda11
            @Override // com.itextpdf.svg.renderers.factories.DefaultSvgNodeRendererMapper.ISvgNodeRendererCreator
            public final ISvgNodeRenderer create() {
                return DefaultSvgNodeRendererMapper.lambda$static$10();
            }
        });
        map.put("polygon", new ISvgNodeRendererCreator() { // from class: com.itextpdf.svg.renderers.factories.DefaultSvgNodeRendererMapper$$ExternalSyntheticLambda16
            @Override // com.itextpdf.svg.renderers.factories.DefaultSvgNodeRendererMapper.ISvgNodeRendererCreator
            public final ISvgNodeRenderer create() {
                return DefaultSvgNodeRendererMapper.lambda$static$11();
            }
        });
        map.put("polyline", new ISvgNodeRendererCreator() { // from class: com.itextpdf.svg.renderers.factories.DefaultSvgNodeRendererMapper$$ExternalSyntheticLambda17
            @Override // com.itextpdf.svg.renderers.factories.DefaultSvgNodeRendererMapper.ISvgNodeRendererCreator
            public final ISvgNodeRenderer create() {
                return DefaultSvgNodeRendererMapper.lambda$static$12();
            }
        });
        map.put("rect", new ISvgNodeRendererCreator() { // from class: com.itextpdf.svg.renderers.factories.DefaultSvgNodeRendererMapper$$ExternalSyntheticLambda18
            @Override // com.itextpdf.svg.renderers.factories.DefaultSvgNodeRendererMapper.ISvgNodeRendererCreator
            public final ISvgNodeRenderer create() {
                return DefaultSvgNodeRendererMapper.lambda$static$13();
            }
        });
        map.put(SvgConstants.Tags.STOP, new ISvgNodeRendererCreator() { // from class: com.itextpdf.svg.renderers.factories.DefaultSvgNodeRendererMapper$$ExternalSyntheticLambda19
            @Override // com.itextpdf.svg.renderers.factories.DefaultSvgNodeRendererMapper.ISvgNodeRendererCreator
            public final ISvgNodeRenderer create() {
                return DefaultSvgNodeRendererMapper.lambda$static$14();
            }
        });
        map.put(SvgConstants.Tags.SVG, new ISvgNodeRendererCreator() { // from class: com.itextpdf.svg.renderers.factories.DefaultSvgNodeRendererMapper$$ExternalSyntheticLambda20
            @Override // com.itextpdf.svg.renderers.factories.DefaultSvgNodeRendererMapper.ISvgNodeRendererCreator
            public final ISvgNodeRenderer create() {
                return DefaultSvgNodeRendererMapper.lambda$static$15();
            }
        });
        map.put(SvgConstants.Tags.SYMBOL, new ISvgNodeRendererCreator() { // from class: com.itextpdf.svg.renderers.factories.DefaultSvgNodeRendererMapper$$ExternalSyntheticLambda21
            @Override // com.itextpdf.svg.renderers.factories.DefaultSvgNodeRendererMapper.ISvgNodeRendererCreator
            public final ISvgNodeRenderer create() {
                return DefaultSvgNodeRendererMapper.lambda$static$16();
            }
        });
        map.put("text", new ISvgNodeRendererCreator() { // from class: com.itextpdf.svg.renderers.factories.DefaultSvgNodeRendererMapper$$ExternalSyntheticLambda22
            @Override // com.itextpdf.svg.renderers.factories.DefaultSvgNodeRendererMapper.ISvgNodeRendererCreator
            public final ISvgNodeRenderer create() {
                return DefaultSvgNodeRendererMapper.lambda$static$17();
            }
        });
        map.put(SvgConstants.Tags.TSPAN, new ISvgNodeRendererCreator() { // from class: com.itextpdf.svg.renderers.factories.DefaultSvgNodeRendererMapper$$ExternalSyntheticLambda23
            @Override // com.itextpdf.svg.renderers.factories.DefaultSvgNodeRendererMapper.ISvgNodeRendererCreator
            public final ISvgNodeRenderer create() {
                return DefaultSvgNodeRendererMapper.lambda$static$18();
            }
        });
        map.put(SvgConstants.Tags.USE, new ISvgNodeRendererCreator() { // from class: com.itextpdf.svg.renderers.factories.DefaultSvgNodeRendererMapper$$ExternalSyntheticLambda1
            @Override // com.itextpdf.svg.renderers.factories.DefaultSvgNodeRendererMapper.ISvgNodeRendererCreator
            public final ISvgNodeRenderer create() {
                return DefaultSvgNodeRendererMapper.lambda$static$19();
            }
        });
        map.put(SvgConstants.Tags.TEXT_LEAF, new ISvgNodeRendererCreator() { // from class: com.itextpdf.svg.renderers.factories.DefaultSvgNodeRendererMapper$$ExternalSyntheticLambda3
            @Override // com.itextpdf.svg.renderers.factories.DefaultSvgNodeRendererMapper.ISvgNodeRendererCreator
            public final ISvgNodeRenderer create() {
                return DefaultSvgNodeRendererMapper.lambda$static$20();
            }
        });
        map.put(lowerCase, new ISvgNodeRendererCreator() { // from class: com.itextpdf.svg.renderers.factories.DefaultSvgNodeRendererMapper$$ExternalSyntheticLambda4
            @Override // com.itextpdf.svg.renderers.factories.DefaultSvgNodeRendererMapper.ISvgNodeRendererCreator
            public final ISvgNodeRenderer create() {
                return DefaultSvgNodeRendererMapper.lambda$static$21();
            }
        });
        map.put(lowerCase2, new ISvgNodeRendererCreator() { // from class: com.itextpdf.svg.renderers.factories.DefaultSvgNodeRendererMapper$$ExternalSyntheticLambda5
            @Override // com.itextpdf.svg.renderers.factories.DefaultSvgNodeRendererMapper.ISvgNodeRendererCreator
            public final ISvgNodeRenderer create() {
                return DefaultSvgNodeRendererMapper.lambda$static$22();
            }
        });
        map.put(lowerCase3, new ISvgNodeRendererCreator() { // from class: com.itextpdf.svg.renderers.factories.DefaultSvgNodeRendererMapper$$ExternalSyntheticLambda6
            @Override // com.itextpdf.svg.renderers.factories.DefaultSvgNodeRendererMapper.ISvgNodeRendererCreator
            public final ISvgNodeRenderer create() {
                return DefaultSvgNodeRendererMapper.lambda$static$23();
            }
        });
        mapping = Collections.unmodifiableMap(map);
        HashSet hashSet = new HashSet();
        hashSet.add("a");
        hashSet.add(SvgConstants.Tags.ALT_GLYPH);
        hashSet.add(SvgConstants.Tags.ALT_GLYPH_DEF);
        hashSet.add(SvgConstants.Tags.ALT_GLYPH_ITEM);
        hashSet.add(SvgConstants.Tags.COLOR_PROFILE);
        hashSet.add(SvgConstants.Tags.DESC);
        hashSet.add(SvgConstants.Tags.FE_BLEND);
        hashSet.add(SvgConstants.Tags.FE_COLOR_MATRIX);
        hashSet.add(SvgConstants.Tags.FE_COMPONENT_TRANSFER);
        hashSet.add(SvgConstants.Tags.FE_COMPOSITE);
        hashSet.add(SvgConstants.Tags.FE_COMVOLVE_MATRIX);
        hashSet.add(SvgConstants.Tags.FE_DIFFUSE_LIGHTING);
        hashSet.add(SvgConstants.Tags.FE_DISPLACEMENT_MAP);
        hashSet.add(SvgConstants.Tags.FE_DISTANT_LIGHT);
        hashSet.add(SvgConstants.Tags.FE_FLOOD);
        hashSet.add(SvgConstants.Tags.FE_FUNC_A);
        hashSet.add(SvgConstants.Tags.FE_FUNC_B);
        hashSet.add(SvgConstants.Tags.FE_FUNC_G);
        hashSet.add(SvgConstants.Tags.FE_FUNC_R);
        hashSet.add(SvgConstants.Tags.FE_GAUSSIAN_BLUR);
        hashSet.add(SvgConstants.Tags.FE_IMAGE);
        hashSet.add(SvgConstants.Tags.FE_MERGE);
        hashSet.add(SvgConstants.Tags.FE_MERGE_NODE);
        hashSet.add(SvgConstants.Tags.FE_MORPHOLOGY);
        hashSet.add(SvgConstants.Tags.FE_OFFSET);
        hashSet.add(SvgConstants.Tags.FE_POINT_LIGHT);
        hashSet.add(SvgConstants.Tags.FE_SPECULAR_LIGHTING);
        hashSet.add(SvgConstants.Tags.FE_SPOTLIGHT);
        hashSet.add(SvgConstants.Tags.FE_TILE);
        hashSet.add(SvgConstants.Tags.FE_TURBULENCE);
        hashSet.add(SvgConstants.Tags.FILTER);
        hashSet.add("font");
        hashSet.add("font-face");
        hashSet.add(SvgConstants.Tags.FONT_FACE_FORMAT);
        hashSet.add(SvgConstants.Tags.FONT_FACE_NAME);
        hashSet.add(SvgConstants.Tags.FONT_FACE_SRC);
        hashSet.add(SvgConstants.Tags.FONT_FACE_URI);
        hashSet.add(SvgConstants.Tags.FOREIGN_OBJECT);
        hashSet.add(SvgConstants.Tags.GLYPH);
        hashSet.add(SvgConstants.Tags.GLYPH_REF);
        hashSet.add(SvgConstants.Tags.HKERN);
        hashSet.add(SvgConstants.Tags.MASK);
        hashSet.add(SvgConstants.Tags.METADATA);
        hashSet.add(SvgConstants.Tags.MISSING_GLYPH);
        hashSet.add(SvgConstants.Tags.RADIAL_GRADIENT);
        hashSet.add("style");
        hashSet.add("title");
        ignored = Collections.unmodifiableCollection(hashSet);
    }

    DefaultSvgNodeRendererMapper() {
    }

    static /* synthetic */ ISvgNodeRenderer lambda$static$0() {
        return new CircleSvgNodeRenderer();
    }

    static /* synthetic */ ISvgNodeRenderer lambda$static$1() {
        return new ClipPathSvgNodeRenderer();
    }

    static /* synthetic */ ISvgNodeRenderer lambda$static$2() {
        return new DefsSvgNodeRenderer();
    }

    static /* synthetic */ ISvgNodeRenderer lambda$static$3() {
        return new EllipseSvgNodeRenderer();
    }

    static /* synthetic */ ISvgNodeRenderer lambda$static$4() {
        return new GroupSvgNodeRenderer();
    }

    static /* synthetic */ ISvgNodeRenderer lambda$static$5() {
        return new ImageSvgNodeRenderer();
    }

    static /* synthetic */ ISvgNodeRenderer lambda$static$6() {
        return new LineSvgNodeRenderer();
    }

    static /* synthetic */ ISvgNodeRenderer lambda$static$7() {
        return new LinearGradientSvgNodeRenderer();
    }

    static /* synthetic */ ISvgNodeRenderer lambda$static$8() {
        return new MarkerSvgNodeRenderer();
    }

    static /* synthetic */ ISvgNodeRenderer lambda$static$9() {
        return new PatternSvgNodeRenderer();
    }

    static /* synthetic */ ISvgNodeRenderer lambda$static$10() {
        return new PathSvgNodeRenderer();
    }

    static /* synthetic */ ISvgNodeRenderer lambda$static$11() {
        return new PolygonSvgNodeRenderer();
    }

    static /* synthetic */ ISvgNodeRenderer lambda$static$12() {
        return new PolylineSvgNodeRenderer();
    }

    static /* synthetic */ ISvgNodeRenderer lambda$static$13() {
        return new RectangleSvgNodeRenderer();
    }

    static /* synthetic */ ISvgNodeRenderer lambda$static$14() {
        return new StopSvgNodeRenderer();
    }

    static /* synthetic */ ISvgNodeRenderer lambda$static$15() {
        return new SvgTagSvgNodeRenderer();
    }

    static /* synthetic */ ISvgNodeRenderer lambda$static$16() {
        return new SymbolSvgNodeRenderer();
    }

    static /* synthetic */ ISvgNodeRenderer lambda$static$17() {
        return new TextSvgBranchRenderer();
    }

    static /* synthetic */ ISvgNodeRenderer lambda$static$18() {
        return new TextSvgTSpanBranchRenderer();
    }

    static /* synthetic */ ISvgNodeRenderer lambda$static$19() {
        return new UseSvgNodeRenderer();
    }

    static /* synthetic */ ISvgNodeRenderer lambda$static$20() {
        return new TextLeafSvgNodeRenderer();
    }

    static /* synthetic */ ISvgNodeRenderer lambda$static$21() {
        return new ClipPathSvgNodeRenderer();
    }

    static /* synthetic */ ISvgNodeRenderer lambda$static$22() {
        return new LinearGradientSvgNodeRenderer();
    }

    static /* synthetic */ ISvgNodeRenderer lambda$static$23() {
        return new TextLeafSvgNodeRenderer();
    }

    Map<String, ISvgNodeRendererCreator> getMapping() {
        return mapping;
    }

    Collection<String> getIgnoredTags() {
        return ignored;
    }
}
