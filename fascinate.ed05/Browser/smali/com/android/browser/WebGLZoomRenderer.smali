.class Lcom/android/browser/WebGLZoomRenderer;
.super Ljava/lang/Object;
.source "WebGLZoomView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/WebGLZoomRenderer$TileQueue;,
        Lcom/android/browser/WebGLZoomRenderer$Tile;
    }
.end annotation


# static fields
.field private static final FLOAT_SIZE_BYTES:I = 0x4

.field private static final INVALID_TEXTURE_ID:I = -0x1

.field private static LOGTAG:Ljava/lang/String; = null

.field static final SCROLL_BITS:I = 0x6

.field static final TILEQUEUE_SIZE:I = 0xa

.field private static final TRIANGLE_VERTICES_DATA_POS_OFFSET:I = 0x0

.field private static final TRIANGLE_VERTICES_DATA_STRIDE_BYTES:I = 0x14

.field private static final TRIANGLE_VERTICES_DATA_UV_OFFSET:I = 0x3

.field static final ZOOM_BITS:I = 0x86


# instance fields
.field final CHECKERBOARD_BITMAP_FORMAT:Landroid/graphics/Bitmap$Config;

.field final CHECKERBOARD_BITMAP_HEIGHT:I

.field final CHECKERBOARD_BITMAP_WIDTH:I

.field final CHECKERBOARD_TILE_SIZE:I

.field private final DEBUG:Z

.field private final DRAW_MODE:I

.field private final DRAW_MODE_PICTURE:I

.field private final DRAW_MODE_WEBVIEW:I

.field private final MAX_TILE_NUM:I

.field private final MAX_UPDATE_TIME:I

.field private final QUEUE_FULL_INIT_TICK:J

.field private final QUEUE_FULL_THRESHOLD:J

.field private final REARRANGE_THRESHOLD:I

.field private final SCALE_FOR_WIDTH_TILENUM_HORIZONTAL:F

.field private final SCALE_FOR_WIDTH_TILENUM_VERTICAL:F

.field private final TEXTURE_FORMAT:Landroid/graphics/Bitmap$Config;

.field private final TILE_HEIGHT:I

.field private final TILE_WIDTH:I

.field mAfterLoadFinishedCount:I

.field private mBeginScale:F

.field mCanvas:Landroid/graphics/Canvas;

.field mCheckerBoardBitmap:Landroid/graphics/Bitmap;

.field private mCheckerBoardTextureID:I

.field mContentsHeight:I

.field mContentsWidth:I

.field private mContext:Landroid/content/Context;

.field mDebugTiles:[[Landroid/graphics/Bitmap;

.field mDrawFrameFlag:Z

.field mError:I

.field private final mFragmentShader:Ljava/lang/String;

.field public mHeight:F

.field mIsDrawingWebView:Z

.field private mMMatrix:[F

.field private mMVPMatrix:[F

.field mMatrix:Landroid/graphics/Matrix;

.field mOldViewLeft:I

.field mOldViewTop:I

.field private mProgram:I

.field private mProjMatrix:[F

.field mQueueFullTick:J

.field mScrollDX:F

.field mScrollDY:F

.field mScrollFilter:Landroid/graphics/DrawFilter;

.field mStatus:I

.field mSurfaceView:Lcom/android/browser/WebGLZoomView;

.field private mTMatrix:[F

.field mTexTiles:[[I

.field mTexTilesLock:Ljava/lang/Object;

.field mTextureHeight:I

.field mTextureIDs:[I

.field private mTextureMatrix:[F

.field mTextureRegion:Landroid/graphics/Rect;

.field mTextureScaleX:F

.field mTextureScaleY:F

.field mTextureWidth:I

.field mTileNumX:I

.field mTileNumY:I

.field private mTileQueue:Lcom/android/browser/WebGLZoomRenderer$TileQueue;

.field mTilesLock:Ljava/lang/Object;

.field mTiltebarBitmapUpdated:Z

.field mTitleBarBitmap:Landroid/graphics/Bitmap;

.field mTitleBarGLTop:F

.field mTitleBarHeight:I

.field private mTitleBarTextureID:I

.field mTitleBarVisibility:Z

.field mTitleBarWidth:I

.field private mTriangleVertices:Ljava/nio/FloatBuffer;

.field private final mTriangleVerticesData:[F

.field private mVMatrix:[F

.field mValidTextureRegion:Landroid/graphics/Region;

.field private final mVertexShader:Ljava/lang/String;

.field mViewGLLeft:F

.field mViewGLTop:F

.field mViewHeight:I

.field mViewLeft:I

.field mViewRect:Landroid/graphics/Rect;

.field mViewTop:I

.field mViewWidth:I

.field private mWebView:Landroid/webkit/WebView;

.field public mWidth:F

.field public mZoomCenterGLX:F

.field public mZoomCenterGLY:F

.field mZoomCenterX:F

.field mZoomCenterY:F

.field mZoomFilter:Landroid/graphics/DrawFilter;

.field mZoomRegionLeft:I

.field mZoomRegionTop:I

.field public mZoomScale:F

.field private maPositionHandle:I

.field private maTextureHandle:I

.field private muMVPMatrixHandle:I

.field private muTextureMatrixHandle:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3179
    const-string v0, "WebGLZoomView"

    sput-object v0, Lcom/android/browser/WebGLZoomRenderer;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;Lcom/android/browser/WebGLZoomView;)V
    .locals 9
    .parameter "context"
    .parameter "webview"
    .parameter "surfaceview"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/16 v4, 0x10

    const/4 v5, 0x0

    .line 1059
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 850
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, p0, Lcom/android/browser/WebGLZoomRenderer;->TEXTURE_FORMAT:Landroid/graphics/Bitmap$Config;

    .line 851
    iput v6, p0, Lcom/android/browser/WebGLZoomRenderer;->MAX_UPDATE_TIME:I

    .line 852
    iput v6, p0, Lcom/android/browser/WebGLZoomRenderer;->DRAW_MODE_WEBVIEW:I

    .line 853
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/browser/WebGLZoomRenderer;->DRAW_MODE_PICTURE:I

    .line 854
    iput v6, p0, Lcom/android/browser/WebGLZoomRenderer;->DRAW_MODE:I

    .line 855
    iput-boolean v5, p0, Lcom/android/browser/WebGLZoomRenderer;->DEBUG:Z

    .line 856
    const-wide/16 v2, 0x1388

    iput-wide v2, p0, Lcom/android/browser/WebGLZoomRenderer;->QUEUE_FULL_THRESHOLD:J

    .line 857
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/browser/WebGLZoomRenderer;->QUEUE_FULL_INIT_TICK:J

    .line 860
    const/16 v2, 0x100

    iput v2, p0, Lcom/android/browser/WebGLZoomRenderer;->TILE_WIDTH:I

    .line 861
    const/16 v2, 0x100

    iput v2, p0, Lcom/android/browser/WebGLZoomRenderer;->TILE_HEIGHT:I

    .line 862
    const/16 v2, 0x60

    iput v2, p0, Lcom/android/browser/WebGLZoomRenderer;->MAX_TILE_NUM:I

    .line 863
    const/high16 v2, 0x4020

    iput v2, p0, Lcom/android/browser/WebGLZoomRenderer;->SCALE_FOR_WIDTH_TILENUM_VERTICAL:F

    .line 864
    const/high16 v2, 0x3fc0

    iput v2, p0, Lcom/android/browser/WebGLZoomRenderer;->SCALE_FOR_WIDTH_TILENUM_HORIZONTAL:F

    .line 865
    const/16 v2, 0xa

    iput v2, p0, Lcom/android/browser/WebGLZoomRenderer;->REARRANGE_THRESHOLD:I

    .line 868
    iput-boolean v5, p0, Lcom/android/browser/WebGLZoomRenderer;->mIsDrawingWebView:Z

    .line 877
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/browser/WebGLZoomRenderer;->mTexTilesLock:Ljava/lang/Object;

    .line 1013
    iput-object v7, p0, Lcom/android/browser/WebGLZoomRenderer;->mWebView:Landroid/webkit/WebView;

    .line 1023
    iput v5, p0, Lcom/android/browser/WebGLZoomRenderer;->mViewWidth:I

    iput v5, p0, Lcom/android/browser/WebGLZoomRenderer;->mViewHeight:I

    .line 1024
    const/high16 v2, -0x4180

    iput v2, p0, Lcom/android/browser/WebGLZoomRenderer;->mViewGLLeft:F

    const/high16 v2, 0x3f80

    iput v2, p0, Lcom/android/browser/WebGLZoomRenderer;->mViewGLTop:F

    .line 1048
    iput-boolean v5, p0, Lcom/android/browser/WebGLZoomRenderer;->mTiltebarBitmapUpdated:Z

    .line 1110
    iput-boolean v5, p0, Lcom/android/browser/WebGLZoomRenderer;->mDrawFrameFlag:Z

    .line 1160
    iput v5, p0, Lcom/android/browser/WebGLZoomRenderer;->mAfterLoadFinishedCount:I

    .line 2062
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/browser/WebGLZoomRenderer;->mTilesLock:Ljava/lang/Object;

    .line 3013
    iput-object v7, p0, Lcom/android/browser/WebGLZoomRenderer;->mCheckerBoardBitmap:Landroid/graphics/Bitmap;

    .line 3015
    const/16 v2, 0x40

    iput v2, p0, Lcom/android/browser/WebGLZoomRenderer;->CHECKERBOARD_BITMAP_WIDTH:I

    .line 3016
    const/16 v2, 0x40

    iput v2, p0, Lcom/android/browser/WebGLZoomRenderer;->CHECKERBOARD_BITMAP_HEIGHT:I

    .line 3017
    const/16 v2, 0x8

    iput v2, p0, Lcom/android/browser/WebGLZoomRenderer;->CHECKERBOARD_TILE_SIZE:I

    .line 3018
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, p0, Lcom/android/browser/WebGLZoomRenderer;->CHECKERBOARD_BITMAP_FORMAT:Landroid/graphics/Bitmap$Config;

    .line 3131
    const/16 v2, 0x14

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVerticesData:[F

    .line 3143
    const-string v2, "uniform mat4 uMVPMatrix;\nuniform mat4 uTextureMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec4 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = uTextureMatrix * aTextureCoord;\n}\n"

    iput-object v2, p0, Lcom/android/browser/WebGLZoomRenderer;->mVertexShader:Ljava/lang/String;

    .line 3154
    const-string v2, "precision mediump float;\nvarying vec4 vTextureCoord;\nuniform sampler2D sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord.st);\n}\n"

    iput-object v2, p0, Lcom/android/browser/WebGLZoomRenderer;->mFragmentShader:Ljava/lang/String;

    .line 3162
    new-array v2, v4, [F

    iput-object v2, p0, Lcom/android/browser/WebGLZoomRenderer;->mMVPMatrix:[F

    .line 3163
    new-array v2, v4, [F

    iput-object v2, p0, Lcom/android/browser/WebGLZoomRenderer;->mTextureMatrix:[F

    .line 3164
    new-array v2, v4, [F

    iput-object v2, p0, Lcom/android/browser/WebGLZoomRenderer;->mProjMatrix:[F

    .line 3165
    new-array v2, v4, [F

    iput-object v2, p0, Lcom/android/browser/WebGLZoomRenderer;->mMMatrix:[F

    .line 3166
    new-array v2, v4, [F

    iput-object v2, p0, Lcom/android/browser/WebGLZoomRenderer;->mVMatrix:[F

    .line 3167
    new-array v2, v4, [F

    iput-object v2, p0, Lcom/android/browser/WebGLZoomRenderer;->mTMatrix:[F

    .line 3171
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/browser/WebGLZoomRenderer;->mCheckerBoardTextureID:I

    .line 3172
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/browser/WebGLZoomRenderer;->mTitleBarTextureID:I

    .line 3180
    const/high16 v2, 0x3f80

    iput v2, p0, Lcom/android/browser/WebGLZoomRenderer;->mZoomScale:F

    .line 3183
    iput v8, p0, Lcom/android/browser/WebGLZoomRenderer;->mZoomCenterGLX:F

    iput v8, p0, Lcom/android/browser/WebGLZoomRenderer;->mZoomCenterGLY:F

    .line 3186
    const/high16 v2, -0x4080

    iput v2, p0, Lcom/android/browser/WebGLZoomRenderer;->mTitleBarGLTop:F

    .line 3188
    iput-boolean v6, p0, Lcom/android/browser/WebGLZoomRenderer;->mTitleBarVisibility:Z

    .line 3190
    iput v8, p0, Lcom/android/browser/WebGLZoomRenderer;->mScrollDX:F

    iput v8, p0, Lcom/android/browser/WebGLZoomRenderer;->mScrollDY:F

    .line 1062
    :try_start_0
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/android/browser/WebGLZoomRenderer;->mMatrix:Landroid/graphics/Matrix;

    .line 1063
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/browser/WebGLZoomRenderer;->mStatus:I

    .line 1064
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/browser/WebGLZoomRenderer;->mQueueFullTick:J

    .line 1065
    iput-object p1, p0, Lcom/android/browser/WebGLZoomRenderer;->mContext:Landroid/content/Context;

    .line 1066
    iput-object p2, p0, Lcom/android/browser/WebGLZoomRenderer;->mWebView:Landroid/webkit/WebView;

    .line 1067
    iput-object p3, p0, Lcom/android/browser/WebGLZoomRenderer;->mSurfaceView:Lcom/android/browser/WebGLZoomView;

    .line 1068
    iget-object v2, p0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVerticesData:[F

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVertices:Ljava/nio/FloatBuffer;

    .line 1070
    iget-object v2, p0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVertices:Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVerticesData:[F

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1071
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/browser/WebGLZoomRenderer;->mTextureRegion:Landroid/graphics/Rect;

    .line 1073
    new-instance v2, Landroid/graphics/Region;

    invoke-direct {v2}, Landroid/graphics/Region;-><init>()V

    iput-object v2, p0, Lcom/android/browser/WebGLZoomRenderer;->mValidTextureRegion:Landroid/graphics/Region;

    .line 1074
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/browser/WebGLZoomRenderer;->mViewRect:Landroid/graphics/Rect;

    .line 1075
    new-instance v2, Landroid/graphics/PaintFlagsDrawFilter;

    const/16 v3, 0x86

    const/16 v4, 0x40

    invoke-direct {v2, v3, v4}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v2, p0, Lcom/android/browser/WebGLZoomRenderer;->mZoomFilter:Landroid/graphics/DrawFilter;

    .line 1077
    new-instance v2, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v2, p0, Lcom/android/browser/WebGLZoomRenderer;->mScrollFilter:Landroid/graphics/DrawFilter;

    .line 1079
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    iput-object v2, p0, Lcom/android/browser/WebGLZoomRenderer;->mCanvas:Landroid/graphics/Canvas;

    .line 1080
    iget-object v2, p0, Lcom/android/browser/WebGLZoomRenderer;->mCanvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/android/browser/WebGLZoomRenderer;->mScrollFilter:Landroid/graphics/DrawFilter;

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 1082
    new-instance v2, Lcom/android/browser/WebGLZoomRenderer$TileQueue;

    const/16 v3, 0xa

    invoke-direct {v2, p0, v3}, Lcom/android/browser/WebGLZoomRenderer$TileQueue;-><init>(Lcom/android/browser/WebGLZoomRenderer;I)V

    iput-object v2, p0, Lcom/android/browser/WebGLZoomRenderer;->mTileQueue:Lcom/android/browser/WebGLZoomRenderer$TileQueue;

    .line 1083
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/browser/WebGLZoomRenderer;->mTitleBarBitmap:Landroid/graphics/Bitmap;

    .line 1085
    const/16 v2, 0x60

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/browser/WebGLZoomRenderer;->mTextureIDs:[I

    .line 1086
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v2, 0x60

    if-ge v1, v2, :cond_0

    .line 1087
    iget-object v2, p0, Lcom/android/browser/WebGLZoomRenderer;->mTextureIDs:[I

    const/4 v3, -0x1

    aput v3, v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 1086
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1089
    .end local v1           #i:I
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1091
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/android/browser/WebGLZoomRenderer;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WebGLZoomRenderer: constructor fail"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    iget-object v2, p0, Lcom/android/browser/WebGLZoomRenderer;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v7}, Landroid/webkit/WebView;->setPinchZoomListener(Landroid/webkit/OnPinchZoomListener;)V

    .line 1093
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/browser/WebGLZoomRenderer;->mStatus:I

    .line 1102
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    :goto_1
    invoke-virtual {p0, v5, v5}, Lcom/android/browser/WebGLZoomRenderer;->initWebViewVariables(ZZ)Z

    .line 1108
    return-void

    .line 1095
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 1097
    .local v0, e:Ljava/lang/OutOfMemoryError;
    sget-object v2, Lcom/android/browser/WebGLZoomRenderer;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WebGLZoomRenderer: constructor fail"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    iget-object v2, p0, Lcom/android/browser/WebGLZoomRenderer;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v7}, Landroid/webkit/WebView;->setPinchZoomListener(Landroid/webkit/OnPinchZoomListener;)V

    .line 1099
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/browser/WebGLZoomRenderer;->mStatus:I

    goto :goto_1

    .line 3131
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/browser/WebGLZoomRenderer;)Landroid/graphics/Bitmap$Config;
    .locals 1
    .parameter "x0"

    .prologue
    .line 846
    iget-object v0, p0, Lcom/android/browser/WebGLZoomRenderer;->TEXTURE_FORMAT:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 846
    sget-object v0, Lcom/android/browser/WebGLZoomRenderer;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/browser/WebGLZoomRenderer;)Lcom/android/browser/WebGLZoomRenderer$TileQueue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 846
    iget-object v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mTileQueue:Lcom/android/browser/WebGLZoomRenderer$TileQueue;

    return-object v0
.end method

.method private checkGlError(Ljava/lang/String;)V
    .locals 5
    .parameter "op"

    .prologue
    const-string v4, ": glError "

    .line 3120
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .local v0, error:I
    if-eqz v0, :cond_0

    .line 3121
    sget-object v1, Lcom/android/browser/WebGLZoomRenderer;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": glError "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3122
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": glError "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3124
    :cond_0
    return-void
.end method

.method private createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .parameter "vertexSource"
    .parameter "fragmentSource"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v7, "glAttachShader"

    .line 3089
    const v4, 0x8b31

    invoke-direct {p0, v4, p1}, Lcom/android/browser/WebGLZoomRenderer;->loadShader(ILjava/lang/String;)I

    move-result v3

    .line 3090
    .local v3, vertexShader:I
    if-nez v3, :cond_0

    move v4, v5

    .line 3115
    :goto_0
    return v4

    .line 3094
    :cond_0
    const v4, 0x8b30

    invoke-direct {p0, v4, p2}, Lcom/android/browser/WebGLZoomRenderer;->loadShader(ILjava/lang/String;)I

    move-result v1

    .line 3095
    .local v1, pixelShader:I
    if-nez v1, :cond_1

    move v4, v5

    .line 3096
    goto :goto_0

    .line 3099
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    .line 3100
    .local v2, program:I
    if-eqz v2, :cond_2

    .line 3101
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 3102
    const-string v4, "glAttachShader"

    invoke-direct {p0, v7}, Lcom/android/browser/WebGLZoomRenderer;->checkGlError(Ljava/lang/String;)V

    .line 3103
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 3104
    const-string v4, "glAttachShader"

    invoke-direct {p0, v7}, Lcom/android/browser/WebGLZoomRenderer;->checkGlError(Ljava/lang/String;)V

    .line 3105
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 3106
    new-array v0, v6, [I

    .line 3107
    .local v0, linkStatus:[I
    const v4, 0x8b82

    invoke-static {v2, v4, v0, v5}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 3108
    aget v4, v0, v5

    if-eq v4, v6, :cond_2

    .line 3109
    sget-object v4, Lcom/android/browser/WebGLZoomRenderer;->LOGTAG:Ljava/lang/String;

    const-string v5, "Could not link program: "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3110
    sget-object v4, Lcom/android/browser/WebGLZoomRenderer;->LOGTAG:Ljava/lang/String;

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3111
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 3112
    const/4 v2, 0x0

    .end local v0           #linkStatus:[I
    :cond_2
    move v4, v2

    .line 3115
    goto :goto_0
.end method

.method private loadCheckerBoardTexture()V
    .locals 8

    .prologue
    const/16 v7, 0x2901

    const/high16 v6, 0x4618

    const/4 v5, 0x1

    const/16 v4, 0xde1

    const/4 v3, 0x0

    .line 2842
    new-array v0, v5, [I

    .line 2844
    .local v0, textures:[I
    iget v1, p0, Lcom/android/browser/WebGLZoomRenderer;->mCheckerBoardTextureID:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 2846
    iget v1, p0, Lcom/android/browser/WebGLZoomRenderer;->mCheckerBoardTextureID:I

    aput v1, v0, v3

    .line 2847
    invoke-static {v5, v0, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 2848
    const-string v1, "loadCheckerBoardTexture"

    invoke-direct {p0, v1}, Lcom/android/browser/WebGLZoomRenderer;->checkGlError(Ljava/lang/String;)V

    .line 2851
    :cond_0
    invoke-static {v5, v0, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 2853
    aget v1, v0, v3

    iput v1, p0, Lcom/android/browser/WebGLZoomRenderer;->mCheckerBoardTextureID:I

    .line 2854
    iget v1, p0, Lcom/android/browser/WebGLZoomRenderer;->mCheckerBoardTextureID:I

    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 2856
    const/16 v1, 0x2801

    invoke-static {v4, v1, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 2858
    const/16 v1, 0x2800

    invoke-static {v4, v1, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 2862
    const/16 v1, 0x2802

    invoke-static {v4, v1, v7}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 2864
    const/16 v1, 0x2803

    invoke-static {v4, v1, v7}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 2867
    invoke-virtual {p0}, Lcom/android/browser/WebGLZoomRenderer;->makeCheckerBoardBitmap()V

    .line 2869
    iget-object v1, p0, Lcom/android/browser/WebGLZoomRenderer;->mCheckerBoardBitmap:Landroid/graphics/Bitmap;

    invoke-static {v4, v3, v1, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 2870
    const-string v1, "loadCheckerBoardTexture"

    invoke-direct {p0, v1}, Lcom/android/browser/WebGLZoomRenderer;->checkGlError(Ljava/lang/String;)V

    .line 2872
    return-void
.end method

.method private loadShader(ILjava/lang/String;)I
    .locals 5
    .parameter "shaderType"
    .parameter "source"

    .prologue
    const/4 v3, 0x0

    .line 3072
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 3073
    .local v1, shader:I
    if-eqz v1, :cond_0

    .line 3074
    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 3075
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 3076
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 3077
    .local v0, compiled:[I
    const v2, 0x8b81

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 3078
    aget v2, v0, v3

    if-nez v2, :cond_0

    .line 3079
    sget-object v2, Lcom/android/browser/WebGLZoomRenderer;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not compile shader "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3080
    sget-object v2, Lcom/android/browser/WebGLZoomRenderer;->LOGTAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3081
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 3082
    const/4 v1, 0x0

    .line 3085
    .end local v0           #compiled:[I
    :cond_0
    return v1
.end method

.method private loadTitleBarTexture(I)V
    .locals 9
    .parameter "width"

    .prologue
    const/4 v8, 0x3

    const/high16 v7, 0x4618

    const/4 v6, 0x1

    const/16 v5, 0xde1

    const/4 v4, 0x0

    .line 2770
    :try_start_0
    iget-object v2, p0, Lcom/android/browser/WebGLZoomRenderer;->mTitleBarBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 2771
    iget-object v2, p0, Lcom/android/browser/WebGLZoomRenderer;->mTitleBarBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 2772
    :cond_0
    iget-object v2, p0, Lcom/android/browser/WebGLZoomRenderer;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/browser/WebGLZoomRenderer;->TEXTURE_FORMAT:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/WebGLZoomRenderer;->mTitleBarBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 2791
    new-array v1, v6, [I

    .line 2792
    .local v1, textures:[I
    iget v2, p0, Lcom/android/browser/WebGLZoomRenderer;->mTitleBarTextureID:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 2794
    iget v2, p0, Lcom/android/browser/WebGLZoomRenderer;->mTitleBarTextureID:I

    aput v2, v1, v4

    .line 2795
    invoke-static {v6, v1, v4}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 2796
    const-string v2, "loadTitleBarTexture"

    invoke-direct {p0, v2}, Lcom/android/browser/WebGLZoomRenderer;->checkGlError(Ljava/lang/String;)V

    .line 2798
    :cond_1
    invoke-static {v6, v1, v4}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 2802
    aget v2, v1, v4

    iput v2, p0, Lcom/android/browser/WebGLZoomRenderer;->mTitleBarTextureID:I

    .line 2803
    iget v2, p0, Lcom/android/browser/WebGLZoomRenderer;->mTitleBarTextureID:I

    invoke-static {v5, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 2807
    const/16 v2, 0x2801

    invoke-static {v5, v2, v7}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 2810
    const/16 v2, 0x2800

    invoke-static {v5, v2, v7}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 2815
    const/16 v2, 0x2802

    const v3, 0x812f

    invoke-static {v5, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 2818
    const/16 v2, 0x2803

    const v3, 0x812f

    invoke-static {v5, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 2827
    iget-object v2, p0, Lcom/android/browser/WebGLZoomRenderer;->mTitleBarBitmap:Landroid/graphics/Bitmap;

    invoke-static {v5, v4, v2, v4}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 2829
    const-string v2, "loadTitleBarTexture"

    invoke-direct {p0, v2}, Lcom/android/browser/WebGLZoomRenderer;->checkGlError(Ljava/lang/String;)V

    .line 2835
    .end local v1           #textures:[I
    :goto_0
    return-void

    .line 2775
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 2777
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/android/browser/WebGLZoomRenderer;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadTitleBarTexture:  fail"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2778
    iget-object v2, p0, Lcom/android/browser/WebGLZoomRenderer;->mWebView:Landroid/webkit/WebView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setPinchZoomListener(Landroid/webkit/OnPinchZoomListener;)V

    .line 2779
    iput v8, p0, Lcom/android/browser/WebGLZoomRenderer;->mStatus:I

    goto :goto_0

    .line 2782
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 2784
    .local v0, e:Ljava/lang/OutOfMemoryError;
    sget-object v2, Lcom/android/browser/WebGLZoomRenderer;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadTitleBarTexture:  fail"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2785
    iget-object v2, p0, Lcom/android/browser/WebGLZoomRenderer;->mWebView:Landroid/webkit/WebView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setPinchZoomListener(Landroid/webkit/OnPinchZoomListener;)V

    .line 2786
    iput v8, p0, Lcom/android/browser/WebGLZoomRenderer;->mStatus:I

    goto :goto_0
.end method

.method private loadWebViewTexture()V
    .locals 12

    .prologue
    const/16 v3, 0x100

    const/high16 v11, 0x4618

    const/16 v10, 0x60

    const/4 v1, 0x0

    const/16 v0, 0xde1

    .line 2725
    iget-object v2, p0, Lcom/android/browser/WebGLZoomRenderer;->mTextureIDs:[I

    aget v2, v2, v1

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 2727
    iget-object v2, p0, Lcom/android/browser/WebGLZoomRenderer;->mTextureIDs:[I

    invoke-static {v10, v2, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 2728
    const-string v2, "loadWebViewTexture: glDeleteTextures "

    invoke-direct {p0, v2}, Lcom/android/browser/WebGLZoomRenderer;->checkGlError(Ljava/lang/String;)V

    .line 2732
    :cond_0
    iget-object v2, p0, Lcom/android/browser/WebGLZoomRenderer;->mTextureIDs:[I

    invoke-static {v10, v2, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 2734
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v10, :cond_1

    .line 2736
    iget-object v2, p0, Lcom/android/browser/WebGLZoomRenderer;->mTextureIDs:[I

    aget v2, v2, v9

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 2738
    const/16 v2, 0x2801

    invoke-static {v0, v2, v11}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 2740
    const/16 v2, 0x2800

    invoke-static {v0, v2, v11}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 2744
    const/16 v2, 0x2802

    const/16 v4, 0x2901

    invoke-static {v0, v2, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 2746
    const/16 v2, 0x2803

    const/16 v4, 0x2901

    invoke-static {v0, v2, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 2749
    const/16 v2, 0x1907

    const/16 v6, 0x1907

    const v7, 0x8363

    const/4 v8, 0x0

    move v4, v3

    move v5, v1

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 2752
    const-string v2, "loadWebViewTexture : texImage2D"

    invoke-direct {p0, v2}, Lcom/android/browser/WebGLZoomRenderer;->checkGlError(Ljava/lang/String;)V

    .line 2734
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 2755
    :cond_1
    return-void
.end method


# virtual methods
.method calcTextureRegion(II)Landroid/graphics/Rect;
    .locals 8
    .parameter "viewLeft"
    .parameter "viewTop"

    .prologue
    const/high16 v7, 0x4380

    .line 1260
    iget v5, p0, Lcom/android/browser/WebGLZoomRenderer;->mViewWidth:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, p1

    iget v6, p0, Lcom/android/browser/WebGLZoomRenderer;->mTextureWidth:I

    div-int/lit8 v6, v6, 0x2

    sub-int v0, v5, v6

    .line 1261
    .local v0, left:I
    iget v5, p0, Lcom/android/browser/WebGLZoomRenderer;->mViewHeight:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, p2

    iget v6, p0, Lcom/android/browser/WebGLZoomRenderer;->mTextureHeight:I

    div-int/lit8 v6, v6, 0x2

    sub-int v4, v5, v6

    .line 1264
    .local v4, top:I
    iget v5, p0, Lcom/android/browser/WebGLZoomRenderer;->mTextureWidth:I

    iget v6, p0, Lcom/android/browser/WebGLZoomRenderer;->mContentsWidth:I

    invoke-virtual {p0, v0, v5, v6}, Lcom/android/browser/WebGLZoomRenderer;->pinLoc(III)I

    move-result v0

    .line 1265
    iget v5, p0, Lcom/android/browser/WebGLZoomRenderer;->mTextureHeight:I

    iget v6, p0, Lcom/android/browser/WebGLZoomRenderer;->mContentsHeight:I

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/browser/WebGLZoomRenderer;->pinLoc(III)I

    move-result v4

    .line 1269
    int-to-float v5, v0

    div-float/2addr v5, v7

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v2, v5

    .line 1270
    .local v2, tilex:I
    int-to-float v5, v4

    div-float/2addr v5, v7

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v3, v5

    .line 1274
    .local v3, tiley:I
    mul-int/lit16 v0, v2, 0x100

    .line 1275
    mul-int/lit16 v4, v3, 0x100

    .line 1277
    new-instance v1, Landroid/graphics/Rect;

    iget v5, p0, Lcom/android/browser/WebGLZoomRenderer;->mTextureWidth:I

    add-int/2addr v5, v0

    iget v6, p0, Lcom/android/browser/WebGLZoomRenderer;->mTextureHeight:I

    add-int/2addr v6, v4

    invoke-direct {v1, v0, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1280
    .local v1, region:Landroid/graphics/Rect;
    return-object v1
.end method

.method debugPrintTiles(Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 11
    .parameter "s"
    .parameter "r"

    .prologue
    const/4 v9, 0x1

    const-string v10, ","

    .line 2013
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2014
    .local v2, rect:Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/android/browser/WebGLZoomRenderer;->mTextureRegion:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    neg-int v7, v7

    iget-object v8, p0, Lcom/android/browser/WebGLZoomRenderer;->mTextureRegion:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    neg-int v8, v8

    invoke-virtual {v2, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 2018
    iget v7, v2, Landroid/graphics/Rect;->left:I

    div-int/lit16 v1, v7, 0x100

    .line 2020
    .local v1, lx:I
    iget v7, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v9

    div-int/lit16 v3, v7, 0x100

    .line 2021
    .local v3, rx:I
    iget v7, v2, Landroid/graphics/Rect;->top:I

    div-int/lit16 v6, v7, 0x100

    .line 2022
    .local v6, ty:I
    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v9

    div-int/lit16 v0, v7, 0x100

    .line 2027
    .local v0, by:I
    iget-object v7, p0, Lcom/android/browser/WebGLZoomRenderer;->mTextureRegion:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget v8, p0, Lcom/android/browser/WebGLZoomRenderer;->mTextureWidth:I

    rem-int/2addr v7, v8

    div-int/lit16 v4, v7, 0x100

    .line 2028
    .local v4, shiftx:I
    iget-object v7, p0, Lcom/android/browser/WebGLZoomRenderer;->mTextureRegion:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget v8, p0, Lcom/android/browser/WebGLZoomRenderer;->mTextureHeight:I

    rem-int/2addr v7, v8

    div-int/lit16 v5, v7, 0x100

    .line 2030
    .local v5, shifty:I
    add-int v7, v1, v4

    iget v8, p0, Lcom/android/browser/WebGLZoomRenderer;->mTileNumX:I

    rem-int v1, v7, v8

    .line 2031
    add-int v7, v3, v4

    iget v8, p0, Lcom/android/browser/WebGLZoomRenderer;->mTileNumX:I

    rem-int v3, v7, v8

    .line 2032
    add-int v7, v6, v5

    iget v8, p0, Lcom/android/browser/WebGLZoomRenderer;->mTileNumY:I

    rem-int v6, v7, v8

    .line 2033
    add-int v7, v0, v5

    iget v8, p0, Lcom/android/browser/WebGLZoomRenderer;->mTileNumY:I

    rem-int v0, v7, v8

    .line 2035
    const-string v7, "GL"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "debugPrintTiles = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2036
    return-void
.end method

.method drawCheckerBoard()V
    .locals 14

    .prologue
    .line 2112
    const/4 v7, 0x0

    .line 2113
    .local v7, left:F
    iget-object v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v0

    int-to-float v11, v0

    .line 2114
    .local v11, top:F
    iget v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mContentsWidth:I

    int-to-float v8, v0

    .line 2115
    .local v8, right:F
    iget v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mContentsHeight:I

    int-to-float v6, v0

    .line 2116
    .local v6, bottom:F
    iget v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mZoomRegionLeft:I

    int-to-float v12, v0

    .line 2117
    .local v12, zoomLeft:F
    iget v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mZoomRegionTop:I

    int-to-float v13, v0

    .line 2118
    .local v13, zoomTop:F
    const/high16 v0, 0x4280

    div-float v0, v8, v0

    iget v1, p0, Lcom/android/browser/WebGLZoomRenderer;->mZoomScale:F

    mul-float v10, v0, v1

    .line 2119
    .local v10, textCoordRight:F
    const/high16 v0, 0x4280

    div-float v0, v6, v0

    iget v1, p0, Lcom/android/browser/WebGLZoomRenderer;->mZoomScale:F

    mul-float v9, v0, v1

    .line 2121
    .local v9, textCoordBottom:F
    iget-object v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVerticesData:[F

    const/4 v1, 0x0

    sub-float v2, v7, v12

    iget v3, p0, Lcom/android/browser/WebGLZoomRenderer;->mTextureWidth:I

    int-to-float v3, v3

    invoke-virtual {p0, v2, v3}, Lcom/android/browser/WebGLZoomRenderer;->toGLX(FF)F

    move-result v2

    aput v2, v0, v1

    .line 2122
    iget-object v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVerticesData:[F

    const/4 v1, 0x1

    sub-float v2, v11, v13

    iget v3, p0, Lcom/android/browser/WebGLZoomRenderer;->mTextureHeight:I

    int-to-float v3, v3

    invoke-virtual {p0, v2, v3}, Lcom/android/browser/WebGLZoomRenderer;->toGLY(FF)F

    move-result v2

    aput v2, v0, v1

    .line 2123
    iget-object v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVerticesData:[F

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 2124
    iget-object v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVerticesData:[F

    const/4 v1, 0x4

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 2126
    iget-object v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVerticesData:[F

    const/4 v1, 0x5

    sub-float v2, v8, v12

    iget v3, p0, Lcom/android/browser/WebGLZoomRenderer;->mTextureWidth:I

    int-to-float v3, v3

    invoke-virtual {p0, v2, v3}, Lcom/android/browser/WebGLZoomRenderer;->toGLX(FF)F

    move-result v2

    aput v2, v0, v1

    .line 2127
    iget-object v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVerticesData:[F

    const/4 v1, 0x6

    sub-float v2, v11, v13

    iget v3, p0, Lcom/android/browser/WebGLZoomRenderer;->mTextureHeight:I

    int-to-float v3, v3

    invoke-virtual {p0, v2, v3}, Lcom/android/browser/WebGLZoomRenderer;->toGLY(FF)F

    move-result v2

    aput v2, v0, v1

    .line 2128
    iget-object v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVerticesData:[F

    const/16 v1, 0x8

    aput v10, v0, v1

    .line 2129
    iget-object v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVerticesData:[F

    const/16 v1, 0x9

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 2131
    iget-object v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVerticesData:[F

    const/16 v1, 0xa

    sub-float v2, v7, v12

    iget v3, p0, Lcom/android/browser/WebGLZoomRenderer;->mTextureWidth:I

    int-to-float v3, v3

    invoke-virtual {p0, v2, v3}, Lcom/android/browser/WebGLZoomRenderer;->toGLX(FF)F

    move-result v2

    aput v2, v0, v1

    .line 2132
    iget-object v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVerticesData:[F

    const/16 v1, 0xb

    sub-float v2, v6, v13

    iget v3, p0, Lcom/android/browser/WebGLZoomRenderer;->mTextureHeight:I

    int-to-float v3, v3

    invoke-virtual {p0, v2, v3}, Lcom/android/browser/WebGLZoomRenderer;->toGLY(FF)F

    move-result v2

    aput v2, v0, v1

    .line 2133
    iget-object v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVerticesData:[F

    const/16 v1, 0xd

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 2134
    iget-object v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVerticesData:[F

    const/16 v1, 0xe

    aput v9, v0, v1

    .line 2136
    iget-object v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVerticesData:[F

    const/16 v1, 0xf

    sub-float v2, v8, v12

    iget v3, p0, Lcom/android/browser/WebGLZoomRenderer;->mTextureWidth:I

    int-to-float v3, v3

    invoke-virtual {p0, v2, v3}, Lcom/android/browser/WebGLZoomRenderer;->toGLX(FF)F

    move-result v2

    aput v2, v0, v1

    .line 2137
    iget-object v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVerticesData:[F

    const/16 v1, 0x10

    sub-float v2, v6, v13

    iget v3, p0, Lcom/android/browser/WebGLZoomRenderer;->mTextureHeight:I

    int-to-float v3, v3

    invoke-virtual {p0, v2, v3}, Lcom/android/browser/WebGLZoomRenderer;->toGLY(FF)F

    move-result v2

    aput v2, v0, v1

    .line 2138
    iget-object v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVerticesData:[F

    const/16 v1, 0x12

    aput v10, v0, v1

    .line 2139
    iget-object v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVerticesData:[F

    const/16 v1, 0x13

    aput v9, v0, v1

    .line 2141
    iget-object v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVertices:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 2142
    iget-object v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVertices:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVerticesData:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 2144
    const/16 v0, 0xde1

    iget v1, p0, Lcom/android/browser/WebGLZoomRenderer;->mCheckerBoardTextureID:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 2146
    iget-object v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVertices:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 2147
    iget v0, p0, Lcom/android/browser/WebGLZoomRenderer;->maPositionHandle:I

    const/4 v1, 0x3

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0x14

    iget-object v5, p0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 2149
    const-string v0, "glVertexAttribPointer maPosition"

    invoke-direct {p0, v0}, Lcom/android/browser/WebGLZoomRenderer;->checkGlError(Ljava/lang/String;)V

    .line 2151
    iget-object v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVertices:Ljava/nio/FloatBuffer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 2152
    iget v0, p0, Lcom/android/browser/WebGLZoomRenderer;->maPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 2153
    const-string v0, "glEnableVertexAttribArray maPositionHandle"

    invoke-direct {p0, v0}, Lcom/android/browser/WebGLZoomRenderer;->checkGlError(Ljava/lang/String;)V

    .line 2154
    iget v0, p0, Lcom/android/browser/WebGLZoomRenderer;->maTextureHandle:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0x14

    iget-object v5, p0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 2156
    const-string v0, "glVertexAttribPointer maTextureHandle"

    invoke-direct {p0, v0}, Lcom/android/browser/WebGLZoomRenderer;->checkGlError(Ljava/lang/String;)V

    .line 2157
    iget v0, p0, Lcom/android/browser/WebGLZoomRenderer;->maTextureHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 2158
    const-string v0, "glEnableVertexAttribArray maTextureHandle"

    invoke-direct {p0, v0}, Lcom/android/browser/WebGLZoomRenderer;->checkGlError(Ljava/lang/String;)V

    .line 2160
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 2161
    const-string v0, "glDrawArrays"

    invoke-direct {p0, v0}, Lcom/android/browser/WebGLZoomRenderer;->checkGlError(Ljava/lang/String;)V

    .line 2163
    return-void
.end method

.method declared-synchronized drawRect(Landroid/graphics/Rect;)V
    .locals 41
    .parameter "rect"

    .prologue
    .line 2172
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTextureRegion:Landroid/graphics/Rect;

    move-object v4, v0

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    move v0, v3

    div-int/lit16 v0, v0, 0x100

    move/from16 v21, v0

    .line 2174
    .local v21, lx:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTextureRegion:Landroid/graphics/Rect;

    move-object v4, v0

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    move v0, v3

    div-int/lit16 v0, v0, 0x100

    move/from16 v27, v0

    .line 2175
    .local v27, rx:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTextureRegion:Landroid/graphics/Rect;

    move-object v4, v0

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    move v0, v3

    div-int/lit16 v0, v0, 0x100

    move/from16 v38, v0

    .line 2176
    .local v38, ty:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTextureRegion:Landroid/graphics/Rect;

    move-object v4, v0

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    div-int/lit16 v11, v3, 0x100

    .line 2180
    .local v11, by:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTextureRegion:Landroid/graphics/Rect;

    move-object v3, v0

    iget v3, v3, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTextureWidth:I

    move v4, v0

    rem-int/2addr v3, v4

    move v0, v3

    div-int/lit16 v0, v0, 0x100

    move/from16 v28, v0

    .line 2181
    .local v28, shiftx:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTextureRegion:Landroid/graphics/Rect;

    move-object v3, v0

    iget v3, v3, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTextureHeight:I

    move v4, v0

    rem-int/2addr v3, v4

    move v0, v3

    div-int/lit16 v0, v0, 0x100

    move/from16 v29, v0

    .line 2192
    .local v29, shifty:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTextureRegion:Landroid/graphics/Rect;

    move-object v3, v0

    iget v3, v3, Landroid/graphics/Rect;->left:I

    move/from16 v0, v21

    mul-int/lit16 v0, v0, 0x100

    move v4, v0

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mZoomRegionLeft:I

    move v4, v0

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTextureWidth:I

    move v4, v0

    int-to-float v4, v4

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/WebGLZoomRenderer;->toGLX(FF)F

    move-result v16

    .line 2193
    .local v16, glLeft:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTextureRegion:Landroid/graphics/Rect;

    move-object v3, v0

    iget v3, v3, Landroid/graphics/Rect;->top:I

    move/from16 v0, v38

    mul-int/lit16 v0, v0, 0x100

    move v4, v0

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mZoomRegionTop:I

    move v4, v0

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTextureHeight:I

    move v4, v0

    int-to-float v4, v4

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/WebGLZoomRenderer;->toGLY(FF)F

    move-result v19

    .line 2195
    .local v19, glTop:F
    const/high16 v3, 0x4000

    const/high16 v4, 0x4380

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTextureWidth:I

    move v5, v0

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float v18, v3, v4

    .line 2196
    .local v18, glTileW:F
    const/high16 v3, 0x4000

    const/high16 v4, 0x4380

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTextureHeight:I

    move v5, v0

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float v17, v3, v4

    .line 2202
    .local v17, glTileH:F
    const/16 v24, 0x0

    .line 2203
    .local v24, removeTopEdge:Z
    const/high16 v13, -0x4080

    .line 2204
    .local v13, glEdgeTop:F
    const/high16 v34, -0x4080

    .line 2205
    .local v34, texTop:F
    const/high16 v14, -0x4080

    .line 2206
    .local v14, glEdgeTopH:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTextureRegion:Landroid/graphics/Rect;

    move-object v3, v0

    iget v3, v3, Landroid/graphics/Rect;->top:I

    move/from16 v0, v38

    mul-int/lit16 v0, v0, 0x100

    move v4, v0

    add-int v37, v3, v4

    .line 2207
    .local v37, topEdge:I
    if-nez v37, :cond_0

    .line 2209
    const/16 v24, 0x1

    .line 2210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mWebView:Landroid/webkit/WebView;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v35

    .line 2211
    .local v35, titleH:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mZoomRegionTop:I

    move v3, v0

    sub-int v3, v35, v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTextureHeight:I

    move v4, v0

    int-to-float v4, v4

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/WebGLZoomRenderer;->toGLY(FF)F

    move-result v13

    .line 2212
    move/from16 v0, v35

    int-to-float v0, v0

    move v3, v0

    const/high16 v4, 0x4380

    div-float v34, v3, v4

    .line 2213
    const/high16 v3, 0x4000

    const/16 v4, 0x100

    sub-int v4, v4, v35

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTextureHeight:I

    move v5, v0

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float v14, v3, v4

    .line 2217
    .end local v35           #titleH:I
    :cond_0
    const/16 v23, 0x0

    .line 2218
    .local v23, removeRightEdge:Z
    const/high16 v15, -0x4080

    .line 2219
    .local v15, glEdgeW:F
    const/high16 v33, -0x4080

    .line 2220
    .local v33, texRight:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTextureRegion:Landroid/graphics/Rect;

    move-object v3, v0

    iget v3, v3, Landroid/graphics/Rect;->left:I

    move/from16 v0, v27

    mul-int/lit16 v0, v0, 0x100

    move v4, v0

    add-int/2addr v3, v4

    move v0, v3

    add-int/lit16 v0, v0, 0x100

    move/from16 v26, v0

    .line 2221
    .local v26, rightEdge:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mContentsWidth:I

    move v3, v0

    move/from16 v0, v26

    move v1, v3

    if-le v0, v1, :cond_1

    .line 2223
    const/16 v23, 0x1

    .line 2224
    const/high16 v3, 0x4000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mContentsWidth:I

    move v4, v0

    const/16 v5, 0x100

    sub-int v5, v26, v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTextureWidth:I

    move v5, v0

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float v15, v3, v4

    .line 2225
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mContentsWidth:I

    move v3, v0

    const/16 v4, 0x100

    sub-int v4, v26, v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x4380

    div-float v33, v3, v4

    .line 2229
    :cond_1
    const/16 v22, 0x0

    .line 2230
    .local v22, removeBottomEdge:Z
    const/high16 v12, -0x4080

    .line 2231
    .local v12, glEdgeH:F
    const/high16 v32, -0x4080

    .line 2232
    .local v32, texBottom:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTextureRegion:Landroid/graphics/Rect;

    move-object v3, v0

    iget v3, v3, Landroid/graphics/Rect;->top:I

    mul-int/lit16 v4, v11, 0x100

    add-int/2addr v3, v4

    add-int/lit16 v10, v3, 0x100

    .line 2233
    .local v10, bottomEdge:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mContentsHeight:I

    move v3, v0

    if-le v10, v3, :cond_2

    .line 2235
    const/16 v22, 0x1

    .line 2236
    const/high16 v3, 0x4000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mContentsHeight:I

    move v4, v0

    const/16 v5, 0x100

    sub-int v5, v10, v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTextureHeight:I

    move v5, v0

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float v12, v3, v4

    .line 2237
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mContentsHeight:I

    move v3, v0

    const/16 v4, 0x100

    sub-int v4, v10, v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x4380

    div-float v32, v3, v4

    .line 2241
    :cond_2
    move/from16 v39, v21

    .local v39, x:I
    :goto_0
    move/from16 v0, v39

    move/from16 v1, v27

    if-gt v0, v1, :cond_10

    .line 2242
    move/from16 v40, v38

    .local v40, y:I
    :goto_1
    move/from16 v0, v40

    move v1, v11

    if-gt v0, v1, :cond_f

    .line 2244
    add-int v3, v39, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTileNumX:I

    move v4, v0

    rem-int v30, v3, v4

    .line 2245
    .local v30, targetx:I
    add-int v3, v40, v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTileNumY:I

    move v4, v0

    rem-int v31, v3, v4

    .line 2247
    .local v31, targety:I
    if-ltz v30, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTileNumX:I

    move v3, v0

    move/from16 v0, v30

    move v1, v3

    if-ge v0, v1, :cond_3

    if-ltz v31, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTileNumY:I

    move v3, v0

    move/from16 v0, v31

    move v1, v3

    if-lt v0, v1, :cond_4

    .line 2242
    :cond_3
    :goto_2
    add-int/lit8 v40, v40, 0x1

    goto :goto_1

    .line 2254
    :cond_4
    sub-int v3, v39, v21

    int-to-float v3, v3

    mul-float v3, v3, v18

    add-float v20, v16, v3

    .line 2255
    .local v20, left:F
    move/from16 v0, v39

    move/from16 v1, v27

    if-ne v0, v1, :cond_5

    const/4 v3, 0x1

    move/from16 v0, v23

    move v1, v3

    if-ne v0, v1, :cond_5

    .line 2256
    add-float v25, v20, v15

    .line 2260
    .local v25, right:F
    :goto_3
    if-nez v40, :cond_6

    const/4 v3, 0x1

    move/from16 v0, v24

    move v1, v3

    if-ne v0, v1, :cond_6

    .line 2261
    move/from16 v36, v13

    .line 2265
    .local v36, top:F
    :goto_4
    if-nez v40, :cond_7

    const/4 v3, 0x1

    move/from16 v0, v24

    move v1, v3

    if-ne v0, v1, :cond_7

    .line 2267
    sub-float v9, v36, v14

    .line 2276
    .local v9, bottom:F
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVerticesData:[F

    move-object v3, v0

    const/4 v4, 0x0

    aput v20, v3, v4

    .line 2277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVerticesData:[F

    move-object v3, v0

    const/4 v4, 0x1

    aput v36, v3, v4

    .line 2278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVerticesData:[F

    move-object v3, v0

    const/4 v4, 0x3

    const/4 v5, 0x0

    aput v5, v3, v4

    .line 2279
    if-nez v40, :cond_9

    const/4 v3, 0x1

    move/from16 v0, v24

    move v1, v3

    if-ne v0, v1, :cond_9

    .line 2280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVerticesData:[F

    move-object v3, v0

    const/4 v4, 0x4

    aput v34, v3, v4

    .line 2284
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVerticesData:[F

    move-object v3, v0

    const/4 v4, 0x5

    aput v25, v3, v4

    .line 2285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVerticesData:[F

    move-object v3, v0

    const/4 v4, 0x6

    aput v36, v3, v4

    .line 2286
    move/from16 v0, v39

    move/from16 v1, v27

    if-ne v0, v1, :cond_a

    const/4 v3, 0x1

    move/from16 v0, v23

    move v1, v3

    if-ne v0, v1, :cond_a

    .line 2287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVerticesData:[F

    move-object v3, v0

    const/16 v4, 0x8

    aput v33, v3, v4

    .line 2290
    :goto_7
    if-nez v40, :cond_b

    const/4 v3, 0x1

    move/from16 v0, v24

    move v1, v3

    if-ne v0, v1, :cond_b

    .line 2291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVerticesData:[F

    move-object v3, v0

    const/16 v4, 0x9

    aput v34, v3, v4

    .line 2295
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVerticesData:[F

    move-object v3, v0

    const/16 v4, 0xa

    aput v20, v3, v4

    .line 2296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVerticesData:[F

    move-object v3, v0

    const/16 v4, 0xb

    aput v9, v3, v4

    .line 2297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVerticesData:[F

    move-object v3, v0

    const/16 v4, 0xd

    const/4 v5, 0x0

    aput v5, v3, v4

    .line 2298
    move/from16 v0, v40

    move v1, v11

    if-ne v0, v1, :cond_c

    const/4 v3, 0x1

    move/from16 v0, v22

    move v1, v3

    if-ne v0, v1, :cond_c

    .line 2299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVerticesData:[F

    move-object v3, v0

    const/16 v4, 0xe

    aput v32, v3, v4

    .line 2303
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVerticesData:[F

    move-object v3, v0

    const/16 v4, 0xf

    aput v25, v3, v4

    .line 2304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVerticesData:[F

    move-object v3, v0

    const/16 v4, 0x10

    aput v9, v3, v4

    .line 2305
    move/from16 v0, v39

    move/from16 v1, v27

    if-ne v0, v1, :cond_d

    const/4 v3, 0x1

    move/from16 v0, v23

    move v1, v3

    if-ne v0, v1, :cond_d

    .line 2306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVerticesData:[F

    move-object v3, v0

    const/16 v4, 0x12

    aput v33, v3, v4

    .line 2309
    :goto_a
    move/from16 v0, v40

    move v1, v11

    if-ne v0, v1, :cond_e

    const/4 v3, 0x1

    move/from16 v0, v22

    move v1, v3

    if-ne v0, v1, :cond_e

    .line 2310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVerticesData:[F

    move-object v3, v0

    const/16 v4, 0x13

    aput v32, v3, v4

    .line 2314
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVertices:Ljava/nio/FloatBuffer;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 2315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVertices:Ljava/nio/FloatBuffer;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVerticesData:[F

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 2318
    const/16 v3, 0xde1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTexTiles:[[I

    move-object v4, v0

    aget-object v4, v4, v31

    aget v4, v4, v30

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 2322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVertices:Ljava/nio/FloatBuffer;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 2323
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->maPositionHandle:I

    move v3, v0

    const/4 v4, 0x3

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/16 v7, 0x14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVertices:Ljava/nio/FloatBuffer;

    move-object v8, v0

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 2327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVertices:Ljava/nio/FloatBuffer;

    move-object v3, v0

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 2328
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->maPositionHandle:I

    move v3, v0

    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 2330
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->maTextureHandle:I

    move v3, v0

    const/4 v4, 0x2

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/16 v7, 0x14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVertices:Ljava/nio/FloatBuffer;

    move-object v8, v0

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 2333
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->maTextureHandle:I

    move v3, v0

    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 2336
    const/4 v3, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-static {v3, v4, v5}, Landroid/opengl/GLES20;->glDrawArrays(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    .line 2172
    .end local v9           #bottom:F
    .end local v10           #bottomEdge:I
    .end local v11           #by:I
    .end local v12           #glEdgeH:F
    .end local v13           #glEdgeTop:F
    .end local v14           #glEdgeTopH:F
    .end local v15           #glEdgeW:F
    .end local v16           #glLeft:F
    .end local v17           #glTileH:F
    .end local v18           #glTileW:F
    .end local v19           #glTop:F
    .end local v20           #left:F
    .end local v21           #lx:I
    .end local v22           #removeBottomEdge:Z
    .end local v23           #removeRightEdge:Z
    .end local v24           #removeTopEdge:Z
    .end local v25           #right:F
    .end local v26           #rightEdge:I
    .end local v27           #rx:I
    .end local v28           #shiftx:I
    .end local v29           #shifty:I
    .end local v30           #targetx:I
    .end local v31           #targety:I
    .end local v32           #texBottom:F
    .end local v33           #texRight:F
    .end local v34           #texTop:F
    .end local v36           #top:F
    .end local v37           #topEdge:I
    .end local v38           #ty:I
    .end local v39           #x:I
    .end local v40           #y:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 2258
    .restart local v10       #bottomEdge:I
    .restart local v11       #by:I
    .restart local v12       #glEdgeH:F
    .restart local v13       #glEdgeTop:F
    .restart local v14       #glEdgeTopH:F
    .restart local v15       #glEdgeW:F
    .restart local v16       #glLeft:F
    .restart local v17       #glTileH:F
    .restart local v18       #glTileW:F
    .restart local v19       #glTop:F
    .restart local v20       #left:F
    .restart local v21       #lx:I
    .restart local v22       #removeBottomEdge:Z
    .restart local v23       #removeRightEdge:Z
    .restart local v24       #removeTopEdge:Z
    .restart local v26       #rightEdge:I
    .restart local v27       #rx:I
    .restart local v28       #shiftx:I
    .restart local v29       #shifty:I
    .restart local v30       #targetx:I
    .restart local v31       #targety:I
    .restart local v32       #texBottom:F
    .restart local v33       #texRight:F
    .restart local v34       #texTop:F
    .restart local v37       #topEdge:I
    .restart local v38       #ty:I
    .restart local v39       #x:I
    .restart local v40       #y:I
    :cond_5
    add-float v25, v20, v18

    .restart local v25       #right:F
    goto/16 :goto_3

    .line 2263
    :cond_6
    sub-int v3, v40, v38

    int-to-float v3, v3

    mul-float v3, v3, v17

    sub-float v36, v19, v3

    .restart local v36       #top:F
    goto/16 :goto_4

    .line 2269
    :cond_7
    move/from16 v0, v40

    move v1, v11

    if-ne v0, v1, :cond_8

    const/4 v3, 0x1

    move/from16 v0, v22

    move v1, v3

    if-ne v0, v1, :cond_8

    .line 2270
    sub-float v9, v36, v12

    .restart local v9       #bottom:F
    goto/16 :goto_5

    .line 2272
    .end local v9           #bottom:F
    :cond_8
    sub-float v9, v36, v17

    .restart local v9       #bottom:F
    goto/16 :goto_5

    .line 2282
    :cond_9
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVerticesData:[F

    move-object v3, v0

    const/4 v4, 0x4

    const/4 v5, 0x0

    aput v5, v3, v4

    goto/16 :goto_6

    .line 2289
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVerticesData:[F

    move-object v3, v0

    const/16 v4, 0x8

    const/high16 v5, 0x3f80

    aput v5, v3, v4

    goto/16 :goto_7

    .line 2293
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVerticesData:[F

    move-object v3, v0

    const/16 v4, 0x9

    const/4 v5, 0x0

    aput v5, v3, v4

    goto/16 :goto_8

    .line 2301
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVerticesData:[F

    move-object v3, v0

    const/16 v4, 0xe

    const/high16 v5, 0x3f80

    aput v5, v3, v4

    goto/16 :goto_9

    .line 2308
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVerticesData:[F

    move-object v3, v0

    const/16 v4, 0x12

    const/high16 v5, 0x3f80

    aput v5, v3, v4

    goto/16 :goto_a

    .line 2312
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVerticesData:[F

    move-object v3, v0

    const/16 v4, 0x13

    const/high16 v5, 0x3f80

    aput v5, v3, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_b

    .line 2241
    .end local v9           #bottom:F
    .end local v20           #left:F
    .end local v25           #right:F
    .end local v30           #targetx:I
    .end local v31           #targety:I
    .end local v36           #top:F
    :cond_f
    add-int/lit8 v39, v39, 0x1

    goto/16 :goto_0

    .line 2403
    .end local v40           #y:I
    :cond_10
    monitor-exit p0

    return-void
.end method

.method drawTile(IIIILandroid/graphics/Picture;)Lcom/android/browser/WebGLZoomRenderer$Tile;
    .locals 10
    .parameter "x"
    .parameter "y"
    .parameter "shiftx"
    .parameter "shifty"
    .parameter "pic"

    .prologue
    const-wide/16 v8, 0x0

    .line 1478
    iget-object v6, p0, Lcom/android/browser/WebGLZoomRenderer;->mTextureRegion:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    mul-int/lit16 v7, p1, 0x100

    add-int v0, v6, v7

    .line 1479
    .local v0, left:I
    iget-object v6, p0, Lcom/android/browser/WebGLZoomRenderer;->mTextureRegion:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    mul-int/lit16 v7, p2, 0x100

    add-int v4, v6, v7

    .line 1481
    .local v4, top:I
    add-int v6, p1, p3

    iget v7, p0, Lcom/android/browser/WebGLZoomRenderer;->mTileNumX:I

    rem-int v1, v6, v7

    .line 1482
    .local v1, targetx:I
    add-int v6, p2, p4

    iget v7, p0, Lcom/android/browser/WebGLZoomRenderer;->mTileNumY:I

    rem-int v2, v6, v7

    .line 1484
    .local v2, targety:I
    new-instance v5, Landroid/graphics/Rect;

    add-int/lit16 v6, v0, 0x100

    add-int/lit16 v7, v4, 0x100

    invoke-direct {v5, v0, v4, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1486
    .local v5, updateRegion:Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/android/browser/WebGLZoomRenderer;->mTileQueue:Lcom/android/browser/WebGLZoomRenderer$TileQueue;

    invoke-virtual {v6}, Lcom/android/browser/WebGLZoomRenderer$TileQueue;->getNextTile()Lcom/android/browser/WebGLZoomRenderer$Tile;

    move-result-object v3

    .line 1487
    .local v3, tile:Lcom/android/browser/WebGLZoomRenderer$Tile;
    if-nez v3, :cond_1

    .line 1489
    iget-wide v6, p0, Lcom/android/browser/WebGLZoomRenderer;->mQueueFullTick:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 1490
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/browser/WebGLZoomRenderer;->mQueueFullTick:J

    .line 1494
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/WebGLZoomRenderer;->updateWebViewTexture()V

    .line 1496
    const/4 v6, 0x0

    .line 1536
    :goto_0
    return-object v6

    .line 1500
    :cond_1
    iput-wide v8, p0, Lcom/android/browser/WebGLZoomRenderer;->mQueueFullTick:J

    .line 1501
    invoke-virtual {v3, v1, v2, v5}, Lcom/android/browser/WebGLZoomRenderer$Tile;->set(IILandroid/graphics/Rect;)V

    .line 1505
    iget-object v6, p0, Lcom/android/browser/WebGLZoomRenderer;->mCanvas:Landroid/graphics/Canvas;

    iget-object v7, v3, Lcom/android/browser/WebGLZoomRenderer$Tile;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1507
    iget-object v6, p0, Lcom/android/browser/WebGLZoomRenderer;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v6}, Landroid/graphics/Canvas;->save()I

    .line 1509
    iget-object v6, p0, Lcom/android/browser/WebGLZoomRenderer;->mCanvas:Landroid/graphics/Canvas;

    neg-int v7, v0

    int-to-float v7, v7

    neg-int v8, v4

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1522
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/browser/WebGLZoomRenderer;->mIsDrawingWebView:Z

    .line 1523
    iget-object v6, p0, Lcom/android/browser/WebGLZoomRenderer;->mWebView:Landroid/webkit/WebView;

    iget-object v7, p0, Lcom/android/browser/WebGLZoomRenderer;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->draw(Landroid/graphics/Canvas;)V

    .line 1524
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/browser/WebGLZoomRenderer;->mIsDrawingWebView:Z

    .line 1534
    iget-object v6, p0, Lcom/android/browser/WebGLZoomRenderer;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v6}, Landroid/graphics/Canvas;->restore()V

    move-object v6, v3

    .line 1536
    goto :goto_0
.end method

.method drawTitleBar()V
    .locals 9

    .prologue
    const/high16 v8, -0x4080

    const/4 v1, 0x3

    const/4 v5, 0x0

    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    .line 2408
    iget v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mWidth:F

    iget v2, p0, Lcom/android/browser/WebGLZoomRenderer;->mWidth:F

    invoke-virtual {p0, v0, v2}, Lcom/android/browser/WebGLZoomRenderer;->toGLX(FF)F

    move-result v7

    .line 2409
    .local v7, right:F
    iget-object v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/android/browser/WebGLZoomRenderer;->mHeight:F

    invoke-virtual {p0, v0, v2}, Lcom/android/browser/WebGLZoomRenderer;->toGLY(FF)F

    move-result v6

    .line 2417
    .local v6, bottom:F
    iget-object v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVerticesData:[F

    aput v8, v0, v3

    .line 2418
    iget-object v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVerticesData:[F

    const/4 v2, 0x1

    aput v4, v0, v2

    .line 2419
    iget-object v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVerticesData:[F

    aput v5, v0, v1

    .line 2420
    iget-object v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVerticesData:[F

    const/4 v2, 0x4

    aput v5, v0, v2

    .line 2422
    iget-object v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVerticesData:[F

    const/4 v2, 0x5

    aput v7, v0, v2

    .line 2423
    iget-object v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVerticesData:[F

    const/4 v2, 0x6

    aput v4, v0, v2

    .line 2424
    iget-object v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVerticesData:[F

    const/16 v2, 0x8

    aput v4, v0, v2

    .line 2425
    iget-object v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVerticesData:[F

    const/16 v2, 0x9

    aput v5, v0, v2

    .line 2427
    iget-object v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVerticesData:[F

    const/16 v2, 0xa

    aput v8, v0, v2

    .line 2428
    iget-object v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVerticesData:[F

    const/16 v2, 0xb

    aput v6, v0, v2

    .line 2429
    iget-object v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVerticesData:[F

    const/16 v2, 0xd

    aput v5, v0, v2

    .line 2430
    iget-object v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVerticesData:[F

    const/16 v2, 0xe

    aput v4, v0, v2

    .line 2432
    iget-object v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVerticesData:[F

    const/16 v2, 0xf

    aput v7, v0, v2

    .line 2433
    iget-object v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVerticesData:[F

    const/16 v2, 0x10

    aput v6, v0, v2

    .line 2434
    iget-object v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVerticesData:[F

    const/16 v2, 0x12

    aput v4, v0, v2

    .line 2435
    iget-object v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVerticesData:[F

    const/16 v2, 0x13

    aput v4, v0, v2

    .line 2437
    iget-object v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 2438
    iget-object v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVertices:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVerticesData:[F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 2440
    const/16 v0, 0xde1

    iget v2, p0, Lcom/android/browser/WebGLZoomRenderer;->mTitleBarTextureID:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 2442
    iget-object v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 2443
    iget v0, p0, Lcom/android/browser/WebGLZoomRenderer;->maPositionHandle:I

    const/16 v2, 0x1406

    const/16 v4, 0x14

    iget-object v5, p0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 2445
    const-string v0, "glVertexAttribPointer maPosition"

    invoke-direct {p0, v0}, Lcom/android/browser/WebGLZoomRenderer;->checkGlError(Ljava/lang/String;)V

    .line 2447
    iget-object v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 2448
    iget v0, p0, Lcom/android/browser/WebGLZoomRenderer;->maPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 2449
    const-string v0, "glEnableVertexAttribArray maPositionHandle"

    invoke-direct {p0, v0}, Lcom/android/browser/WebGLZoomRenderer;->checkGlError(Ljava/lang/String;)V

    .line 2450
    iget v0, p0, Lcom/android/browser/WebGLZoomRenderer;->maTextureHandle:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/16 v4, 0x14

    iget-object v5, p0, Lcom/android/browser/WebGLZoomRenderer;->mTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 2452
    const-string v0, "glVertexAttribPointer maTextureHandle"

    invoke-direct {p0, v0}, Lcom/android/browser/WebGLZoomRenderer;->checkGlError(Ljava/lang/String;)V

    .line 2453
    iget v0, p0, Lcom/android/browser/WebGLZoomRenderer;->maTextureHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 2454
    const-string v0, "glEnableVertexAttribArray maTextureHandle"

    invoke-direct {p0, v0}, Lcom/android/browser/WebGLZoomRenderer;->checkGlError(Ljava/lang/String;)V

    .line 2456
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 2457
    const-string v0, "glDrawArrays"

    invoke-direct {p0, v0}, Lcom/android/browser/WebGLZoomRenderer;->checkGlError(Ljava/lang/String;)V

    .line 2459
    return-void
.end method

.method public getAvailable()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1119
    invoke-virtual {p0}, Lcom/android/browser/WebGLZoomRenderer;->status()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method initWebViewVariables(ZZ)Z
    .locals 18
    .parameter "force"
    .parameter "forceRearrange"

    .prologue
    .line 1165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mWebView:Landroid/webkit/WebView;

    move-object v12, v0

    if-nez v12, :cond_0

    const/4 v12, 0x0

    .line 1241
    :goto_0
    return v12

    .line 1167
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mWebView:Landroid/webkit/WebView;

    move-object v12, v0

    invoke-virtual {v12}, Landroid/webkit/WebView;->getContentWidth()I

    move-result v4

    .line 1168
    .local v4, contWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mWebView:Landroid/webkit/WebView;

    move-object v12, v0

    invoke-virtual {v12}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v3

    .line 1170
    .local v3, contHeight:I
    if-eqz v4, :cond_1

    if-nez v3, :cond_2

    .line 1171
    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    .line 1173
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mWebView:Landroid/webkit/WebView;

    move-object v12, v0

    invoke-virtual {v12}, Landroid/webkit/WebView;->getWidth()I

    move-result v10

    .line 1174
    .local v10, viewWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mWebView:Landroid/webkit/WebView;

    move-object v12, v0

    invoke-virtual {v12}, Landroid/webkit/WebView;->getHeight()I

    move-result v9

    .line 1176
    .local v9, viewHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mWebView:Landroid/webkit/WebView;

    move-object v12, v0

    invoke-virtual {v12}, Landroid/webkit/WebView;->getScale()F

    move-result v12

    int-to-float v13, v4

    mul-float/2addr v12, v13

    float-to-int v11, v12

    .line 1177
    .local v11, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mWebView:Landroid/webkit/WebView;

    move-object v12, v0

    invoke-virtual {v12}, Landroid/webkit/WebView;->getScale()F

    move-result v12

    int-to-float v13, v3

    mul-float/2addr v12, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mWebView:Landroid/webkit/WebView;

    move-object v13, v0

    invoke-virtual {v13}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v12, v13

    float-to-int v5, v12

    .line 1179
    .local v5, height:I
    if-ge v11, v10, :cond_3

    .line 1180
    move v11, v10

    .line 1181
    :cond_3
    if-ge v5, v9, :cond_4

    .line 1182
    move v5, v9

    .line 1185
    :cond_4
    if-nez p1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mContentsWidth:I

    move v12, v0

    if-ne v11, v12, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mContentsHeight:I

    move v12, v0

    if-ne v5, v12, :cond_5

    .line 1188
    const/4 v12, 0x0

    goto :goto_0

    .line 1193
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mContentsWidth:I

    move v7, v0

    .line 1194
    .local v7, oldContentsWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mContentsHeight:I

    move v6, v0

    .line 1198
    .local v6, oldContentsHeight:I
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/WebGLZoomRenderer;->mContentsWidth:I

    .line 1199
    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/WebGLZoomRenderer;->mContentsHeight:I

    .line 1200
    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/WebGLZoomRenderer;->mViewWidth:I

    .line 1201
    move v0, v9

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/WebGLZoomRenderer;->mViewHeight:I

    .line 1202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mWebView:Landroid/webkit/WebView;

    move-object v12, v0

    invoke-virtual {v12}, Landroid/webkit/WebView;->getScrollX()I

    move-result v12

    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/WebGLZoomRenderer;->mViewLeft:I

    .line 1203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mWebView:Landroid/webkit/WebView;

    move-object v12, v0

    invoke-virtual {v12}, Landroid/webkit/WebView;->getScrollY()I

    move-result v12

    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/WebGLZoomRenderer;->mViewTop:I

    .line 1207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mWebView:Landroid/webkit/WebView;

    move-object v12, v0

    invoke-virtual {v12}, Landroid/webkit/WebView;->getProgress()I

    move-result v12

    const/16 v13, 0x64

    if-ge v12, v13, :cond_9

    .line 1208
    const/4 v12, 0x0

    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/WebGLZoomRenderer;->mAfterLoadFinishedCount:I

    .line 1212
    :goto_1
    const/4 v8, 0x0

    .line 1213
    .local v8, rearranged:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mAfterLoadFinishedCount:I

    move v12, v0

    const/4 v13, 0x1

    if-le v12, v13, :cond_6

    const/4 v12, 0x1

    move/from16 v0, p2

    move v1, v12

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mContentsWidth:I

    move v12, v0

    sub-int v12, v7, v12

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    const/16 v13, 0xa

    if-gt v12, v13, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mContentsHeight:I

    move v12, v0

    sub-int v12, v6, v12

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    const/16 v13, 0xa

    if-le v12, v13, :cond_7

    .line 1218
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/WebGLZoomRenderer;->reArrangeTextures()Z

    move-result v8

    .line 1222
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTextureRegion:Landroid/graphics/Rect;

    move-object v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mViewLeft:I

    move v13, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mViewTop:I

    move v14, v0

    move-object/from16 v0, p0

    move v1, v13

    move v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/WebGLZoomRenderer;->calcTextureRegion(II)Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1225
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mViewLeft:I

    move v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTextureRegion:Landroid/graphics/Rect;

    move-object v13, v0

    iget v13, v13, Landroid/graphics/Rect;->left:I

    sub-int/2addr v12, v13

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTextureWidth:I

    move v13, v0

    int-to-float v13, v13

    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/WebGLZoomRenderer;->toGLX(FF)F

    move-result v12

    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/WebGLZoomRenderer;->mViewGLLeft:F

    .line 1226
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mViewTop:I

    move v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTextureRegion:Landroid/graphics/Rect;

    move-object v13, v0

    iget v13, v13, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v13

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTextureHeight:I

    move v13, v0

    int-to-float v13, v13

    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/WebGLZoomRenderer;->toGLY(FF)F

    move-result v12

    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/WebGLZoomRenderer;->mViewGLTop:F

    .line 1229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mWebView:Landroid/webkit/WebView;

    move-object v12, v0

    invoke-virtual {v12}, Landroid/webkit/WebView;->getWidth()I

    move-result v12

    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/WebGLZoomRenderer;->mTitleBarWidth:I

    .line 1230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mWebView:Landroid/webkit/WebView;

    move-object v12, v0

    invoke-virtual {v12}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v12

    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/WebGLZoomRenderer;->mTitleBarHeight:I

    .line 1236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mViewRect:Landroid/graphics/Rect;

    move-object v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mViewLeft:I

    move v13, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mViewTop:I

    move v14, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mViewLeft:I

    move v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mViewWidth:I

    move/from16 v16, v0

    add-int v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mViewTop:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mViewHeight:I

    move/from16 v17, v0

    add-int v16, v16, v17

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/Rect;->set(IIII)V

    .line 1238
    const/4 v12, 0x1

    if-ne v8, v12, :cond_8

    .line 1239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mSurfaceView:Lcom/android/browser/WebGLZoomView;

    move-object v12, v0

    new-instance v13, Landroid/graphics/Region;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTextureRegion:Landroid/graphics/Rect;

    move-object v14, v0

    invoke-direct {v13, v14}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v12, v13}, Lcom/android/browser/WebGLZoomView;->requestUpdateContents(Landroid/graphics/Region;)V

    .line 1241
    :cond_8
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 1210
    .end local v8           #rearranged:Z
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mAfterLoadFinishedCount:I

    move v12, v0

    add-int/lit8 v12, v12, 0x1

    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/WebGLZoomRenderer;->mAfterLoadFinishedCount:I

    goto/16 :goto_1
.end method

.method makeCheckerBoardBitmap()V
    .locals 15

    .prologue
    const/16 v10, 0x40

    const/16 v14, 0x8

    const/4 v13, 0x1

    .line 3023
    iget-object v9, p0, Lcom/android/browser/WebGLZoomRenderer;->mCheckerBoardBitmap:Landroid/graphics/Bitmap;

    if-nez v9, :cond_0

    .line 3024
    iget-object v9, p0, Lcom/android/browser/WebGLZoomRenderer;->CHECKERBOARD_BITMAP_FORMAT:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v10, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, p0, Lcom/android/browser/WebGLZoomRenderer;->mCheckerBoardBitmap:Landroid/graphics/Bitmap;

    .line 3026
    :cond_0
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v9, p0, Lcom/android/browser/WebGLZoomRenderer;->mCheckerBoardBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3027
    .local v0, canvas:Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 3028
    .local v4, paintOne:Landroid/graphics/Paint;
    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3029
    const/4 v9, -0x1

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 3031
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 3032
    .local v5, paintTwo:Landroid/graphics/Paint;
    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3033
    const v9, -0x333334

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 3037
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 3039
    .local v6, rect:Landroid/graphics/Rect;
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v2, 0x0

    .line 3040
    .local v2, j:I
    const/4 v7, 0x0

    .local v7, x:I
    :goto_0
    if-ge v7, v14, :cond_5

    .line 3041
    const/4 v8, 0x0

    .local v8, y:I
    :goto_1
    if-ge v8, v14, :cond_4

    .line 3044
    mul-int/lit8 v9, v7, 0x8

    mul-int/lit8 v10, v8, 0x8

    mul-int/lit8 v11, v7, 0x8

    add-int/lit8 v11, v11, 0x8

    mul-int/lit8 v12, v8, 0x8

    add-int/lit8 v12, v12, 0x8

    invoke-virtual {v6, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 3047
    rem-int/lit8 v9, v1, 0x2

    if-ne v9, v13, :cond_2

    .line 3049
    rem-int/lit8 v9, v2, 0x2

    if-ne v9, v13, :cond_1

    .line 3050
    move-object v3, v4

    .line 3064
    .local v3, paint:Landroid/graphics/Paint;
    :goto_2
    invoke-virtual {v0, v6, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 3041
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3052
    .end local v3           #paint:Landroid/graphics/Paint;
    :cond_1
    move-object v3, v5

    .restart local v3       #paint:Landroid/graphics/Paint;
    goto :goto_2

    .line 3057
    .end local v3           #paint:Landroid/graphics/Paint;
    :cond_2
    rem-int/lit8 v9, v2, 0x2

    if-ne v9, v13, :cond_3

    .line 3058
    move-object v3, v5

    .restart local v3       #paint:Landroid/graphics/Paint;
    goto :goto_2

    .line 3060
    .end local v3           #paint:Landroid/graphics/Paint;
    :cond_3
    move-object v3, v4

    .restart local v3       #paint:Landroid/graphics/Paint;
    goto :goto_2

    .line 3040
    .end local v3           #paint:Landroid/graphics/Paint;
    :cond_4
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3068
    .end local v8           #y:I
    :cond_5
    return-void
.end method

.method onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1001
    iget-object v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mTileQueue:Lcom/android/browser/WebGLZoomRenderer$TileQueue;

    invoke-virtual {v0}, Lcom/android/browser/WebGLZoomRenderer$TileQueue;->destroy()V

    .line 1004
    :try_start_0
    iget-object v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mTitleBarBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 1005
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mCheckerBoardBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 1006
    :goto_1
    iput-object v1, p0, Lcom/android/browser/WebGLZoomRenderer;->mTitleBarBitmap:Landroid/graphics/Bitmap;

    .line 1007
    iput-object v1, p0, Lcom/android/browser/WebGLZoomRenderer;->mCheckerBoardBitmap:Landroid/graphics/Bitmap;

    .line 1008
    return-void

    .line 1005
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1004
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 28
    .parameter "glUnused"

    .prologue
    .line 2467
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/WebGLZoomRenderer;->status()I

    move-result v14

    .line 2468
    .local v14, state:I
    const/16 v23, 0x1

    move v0, v14

    move/from16 v1, v23

    if-eq v0, v1, :cond_1

    .line 2470
    sget-object v23, Lcom/android/browser/WebGLZoomRenderer;->LOGTAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "onDrawFrame : STATUS is not OK, status = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2639
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 2474
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mViewWidth:I

    move/from16 v23, v0

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mViewHeight:I

    move/from16 v23, v0

    if-eqz v23, :cond_0

    .line 2478
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mZoomScale:F

    move/from16 v23, v0

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v23, v0

    const-wide/high16 v25, 0x3ff0

    cmpl-double v23, v23, v25

    if-eqz v23, :cond_2

    .line 2480
    const/16 v17, 0x0

    .line 2483
    .local v17, tile:Lcom/android/browser/WebGLZoomRenderer$Tile;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTileQueue:Lcom/android/browser/WebGLZoomRenderer$TileQueue;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/browser/WebGLZoomRenderer$TileQueue;->pop()Lcom/android/browser/WebGLZoomRenderer$Tile;

    move-result-object v17

    .line 2484
    if-nez v17, :cond_4

    .line 2492
    .end local v17           #tile:Lcom/android/browser/WebGLZoomRenderer$Tile;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mValidTextureRegion:Landroid/graphics/Region;

    move-object/from16 v23, v0

    monitor-enter v23
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2494
    :try_start_2
    new-instance v20, Landroid/graphics/Region;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mValidTextureRegion:Landroid/graphics/Region;

    move-object/from16 v24, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/graphics/Region;-><init>(Landroid/graphics/Region;)V

    .line 2498
    .local v20, validRegion:Landroid/graphics/Region;
    monitor-exit v23
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2501
    :try_start_3
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 2502
    .local v10, rect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mZoomScale:F

    move/from16 v23, v0

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v23, v0

    const-wide/high16 v25, 0x3ff0

    cmpl-double v23, v23, v25

    if-eqz v23, :cond_6

    .line 2504
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mScrollDX:F

    move/from16 v23, v0

    const/16 v24, 0x0

    cmpl-float v23, v23, v24

    if-nez v23, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mScrollDY:F

    move/from16 v23, v0

    const/16 v24, 0x0

    cmpl-float v23, v23, v24

    if-eqz v23, :cond_5

    .line 2505
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTextureRegion:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object v0, v10

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2520
    :goto_2
    sget-object v23, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object/from16 v0, v20

    move-object v1, v10

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 2528
    new-instance v6, Landroid/graphics/RegionIterator;

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/graphics/RegionIterator;-><init>(Landroid/graphics/Region;)V

    .line 2533
    .local v6, iter:Landroid/graphics/RegionIterator;
    const/high16 v23, 0x3f38

    const/high16 v24, 0x3f41

    const/high16 v25, 0x3f4c

    const/16 v26, 0x0

    invoke-static/range {v23 .. v26}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 2534
    const/16 v23, 0x4100

    invoke-static/range {v23 .. v23}, Landroid/opengl/GLES20;->glClear(I)V

    .line 2535
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mProgram:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 2536
    const-string v23, "glUseProgram"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/browser/WebGLZoomRenderer;->checkGlError(Ljava/lang/String;)V

    .line 2538
    const v23, 0x84c0

    invoke-static/range {v23 .. v23}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 2541
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTextureScaleX:F

    move v15, v0

    .line 2542
    .local v15, sx:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTextureScaleY:F

    move/from16 v16, v0

    .line 2545
    .local v16, sy:F
    const/high16 v23, 0x4000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mScrollDX:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mZoomScale:F

    move/from16 v25, v0

    mul-float v25, v25, v15

    div-float v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mViewWidth:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v24, v24, v25

    mul-float v12, v23, v24

    .line 2546
    .local v12, scrolldx:F
    const/high16 v23, 0x4000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mScrollDY:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mZoomScale:F

    move/from16 v25, v0

    mul-float v25, v25, v16

    div-float v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mViewHeight:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v24, v24, v25

    mul-float v13, v23, v24

    .line 2550
    .local v13, scrolldy:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mMVPMatrix:[F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mMVPMatrix:[F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mZoomCenterGLX:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mZoomCenterGLY:F

    move/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {v23 .. v27}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mMVPMatrix:[F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/high16 v25, 0x3f80

    move-object/from16 v0, v23

    move/from16 v1, v24

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, v25

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 2554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mMVPMatrix:[F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mZoomScale:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mZoomScale:F

    move/from16 v26, v0

    const/high16 v27, 0x3f80

    invoke-static/range {v23 .. v27}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 2555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mMVPMatrix:[F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move v0, v13

    neg-float v0, v0

    move/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move v2, v12

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTextureMatrix:[F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2565
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->muMVPMatrixHandle:I

    move/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mMVPMatrix:[F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {v23 .. v27}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 2566
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->muTextureMatrixHandle:I

    move/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTextureMatrix:[F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {v23 .. v27}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 2571
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/WebGLZoomRenderer;->drawCheckerBoard()V

    .line 2579
    :goto_3
    invoke-virtual {v6, v10}, Landroid/graphics/RegionIterator;->next(Landroid/graphics/Rect;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 2581
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/android/browser/WebGLZoomRenderer;->drawRect(Landroid/graphics/Rect;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 2467
    .end local v6           #iter:Landroid/graphics/RegionIterator;
    .end local v10           #rect:Landroid/graphics/Rect;
    .end local v12           #scrolldx:F
    .end local v13           #scrolldy:F
    .end local v14           #state:I
    .end local v15           #sx:F
    .end local v16           #sy:F
    .end local v20           #validRegion:Landroid/graphics/Region;
    :catchall_0
    move-exception v23

    monitor-exit p0

    throw v23

    .line 2486
    .restart local v14       #state:I
    .restart local v17       #tile:Lcom/android/browser/WebGLZoomRenderer$Tile;
    :cond_4
    :try_start_4
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/browser/WebGLZoomRenderer;->updateWebViewTextureGL(Lcom/android/browser/WebGLZoomRenderer$Tile;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 2498
    .end local v17           #tile:Lcom/android/browser/WebGLZoomRenderer$Tile;
    :catchall_1
    move-exception v24

    :try_start_5
    monitor-exit v23
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v24

    .line 2508
    .restart local v10       #rect:Landroid/graphics/Rect;
    .restart local v20       #validRegion:Landroid/graphics/Region;
    :cond_5
    const/high16 v23, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mZoomScale:F

    move/from16 v24, v0

    div-float v5, v23, v24

    .line 2509
    .local v5, inverseScale:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mZoomCenterX:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mViewLeft:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    add-float v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mZoomCenterY:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mViewTop:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    add-float v25, v25, v26

    move-object/from16 v0, v23

    move v1, v5

    move v2, v5

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 2510
    new-instance v11, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mViewRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object v0, v11

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 2511
    .local v11, rectf:Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 2512
    move-object v0, v11

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v23, v0

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move-object v0, v11

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v24, v0

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move-object v0, v11

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move-object v0, v11

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v26, v0

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    move-object v0, v10

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_2

    .line 2519
    .end local v5           #inverseScale:F
    .end local v11           #rectf:Landroid/graphics/RectF;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mViewRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object v0, v10

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_2

    .line 2585
    .restart local v6       #iter:Landroid/graphics/RegionIterator;
    .restart local v12       #scrolldx:F
    .restart local v13       #scrolldy:F
    .restart local v15       #sx:F
    .restart local v16       #sy:F
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTitleBarVisibility:Z

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_9

    .line 2588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v19, v0

    .line 2589
    .local v19, top:F
    const/4 v7, 0x0

    .line 2590
    .local v7, left:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mZoomRegionLeft:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v21, v0

    .line 2591
    .local v21, zoomLeft:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mZoomRegionTop:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v22, v0

    .line 2592
    .local v22, zoomTop:F
    const/high16 v23, 0x4000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mViewHeight:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v24, v24, v25

    mul-float v18, v23, v24

    .line 2595
    .local v18, titleheight:F
    sub-float v23, v7, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTextureWidth:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/WebGLZoomRenderer;->toGLX(FF)F

    move-result v7

    .line 2596
    sub-float v23, v19, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTextureHeight:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/WebGLZoomRenderer;->toGLY(FF)F

    move-result v19

    .line 2601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mMVPMatrix:[F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget v23, v23, v24

    mul-float v23, v23, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mMVPMatrix:[F

    move-object/from16 v24, v0

    const/16 v25, 0x4

    aget v24, v24, v25

    mul-float v24, v24, v19

    add-float v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mMVPMatrix:[F

    move-object/from16 v24, v0

    const/16 v25, 0xc

    aget v24, v24, v25

    const/high16 v25, 0x3f80

    mul-float v24, v24, v25

    add-float v8, v23, v24

    .line 2602
    .local v8, newleft:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mMVPMatrix:[F

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget v23, v23, v24

    mul-float v23, v23, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mMVPMatrix:[F

    move-object/from16 v24, v0

    const/16 v25, 0x5

    aget v24, v24, v25

    mul-float v24, v24, v19

    add-float v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mMVPMatrix:[F

    move-object/from16 v24, v0

    const/16 v25, 0xd

    aget v24, v24, v25

    const/high16 v25, 0x3f80

    mul-float v24, v24, v25

    add-float v9, v23, v24

    .line 2604
    .local v9, newtop:F
    const/high16 v23, 0x3f80

    cmpg-float v23, v9, v23

    if-gtz v23, :cond_9

    .line 2606
    const/high16 v23, 0x3f80

    sub-float v23, v23, v18

    cmpg-float v23, v9, v23

    if-gez v23, :cond_8

    .line 2607
    const/high16 v23, 0x3f80

    sub-float v9, v23, v18

    .line 2616
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mMVPMatrix:[F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mMVPMatrix:[F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/high16 v26, 0x3f80

    sub-float v26, v9, v26

    add-float v26, v26, v18

    const/16 v27, 0x0

    invoke-static/range {v23 .. v27}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2622
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->muMVPMatrixHandle:I

    move/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mMVPMatrix:[F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {v23 .. v27}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 2625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTextureMatrix:[F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2626
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->muTextureMatrixHandle:I

    move/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTextureMatrix:[F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {v23 .. v27}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 2629
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/WebGLZoomRenderer;->updateTitleBarTexture()V

    .line 2630
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/WebGLZoomRenderer;->drawTitleBar()V

    .line 2637
    .end local v7           #left:F
    .end local v8           #newleft:F
    .end local v9           #newtop:F
    .end local v18           #titleheight:F
    .end local v19           #top:F
    .end local v21           #zoomLeft:F
    .end local v22           #zoomTop:F
    :cond_9
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/browser/WebGLZoomRenderer;->setDrawFrameFlag(Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0
.end method

.method onPageFinished(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 1440
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/WebGLZoomRenderer;->initWebViewVariables(ZZ)Z

    .line 1441
    return-void
.end method

.method public onScale(FFF)V
    .locals 1
    .parameter "scale"
    .parameter "cx"
    .parameter "cy"

    .prologue
    .line 2998
    iget v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mBeginScale:F

    div-float v0, p1, v0

    iput v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mZoomScale:F

    .line 3001
    iput p2, p0, Lcom/android/browser/WebGLZoomRenderer;->mZoomCenterX:F

    .line 3002
    iput p3, p0, Lcom/android/browser/WebGLZoomRenderer;->mZoomCenterY:F

    .line 3006
    return-void
.end method

.method onScaleBegin(FF)V
    .locals 2
    .parameter "cx"
    .parameter "cy"

    .prologue
    .line 2937
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mZoomScale:F

    .line 2938
    iget-object v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getScale()F

    move-result v0

    iput v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mBeginScale:F

    .line 2946
    iput p1, p0, Lcom/android/browser/WebGLZoomRenderer;->mZoomCenterX:F

    .line 2947
    iput p2, p0, Lcom/android/browser/WebGLZoomRenderer;->mZoomCenterY:F

    .line 2948
    iget v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mViewWidth:I

    int-to-float v0, v0

    invoke-virtual {p0, p1, v0}, Lcom/android/browser/WebGLZoomRenderer;->toGLX(FF)F

    move-result v0

    iput v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mZoomCenterGLX:F

    .line 2949
    iget v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mViewHeight:I

    int-to-float v0, v0

    invoke-virtual {p0, p2, v0}, Lcom/android/browser/WebGLZoomRenderer;->toGLY(FF)F

    move-result v0

    iput v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mZoomCenterGLY:F

    .line 2950
    iget v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mViewLeft:I

    float-to-int v1, p1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/browser/WebGLZoomRenderer;->mTextureWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mZoomRegionLeft:I

    .line 2951
    iget v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mViewTop:I

    float-to-int v1, p2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/browser/WebGLZoomRenderer;->mTextureHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mZoomRegionTop:I

    .line 2952
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mTitleBarGLTop:F

    .line 2961
    return-void
.end method

.method onScaleEnd()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2970
    invoke-virtual {p0, v1, v1}, Lcom/android/browser/WebGLZoomRenderer;->initWebViewVariables(ZZ)Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 2980
    new-instance v0, Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/browser/WebGLZoomRenderer;->mViewRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/WebGLZoomRenderer;->updateWebViewTextureBitmap(Landroid/graphics/Region;Z)Z

    .line 2992
    :cond_0
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 8
    .parameter "glUnused"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v1, 0x0

    .line 2645
    const-string v0, "GL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "surface changed "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2648
    invoke-static {v1, v1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 2649
    int-to-float v0, p2

    int-to-float v2, p3

    div-float v3, v0, v2

    .line 2651
    .local v3, ratio:F
    iget-object v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mProjMatrix:[F

    neg-float v2, v3

    const/high16 v4, -0x4080

    const/high16 v5, 0x3f80

    const/high16 v6, 0x4040

    const/high16 v7, 0x40e0

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    .line 2657
    int-to-float v0, p2

    iput v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mWidth:F

    .line 2658
    int-to-float v0, p3

    iput v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mHeight:F

    .line 2662
    iget-object v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mSurfaceView:Lcom/android/browser/WebGLZoomView;

    invoke-virtual {v0}, Lcom/android/browser/WebGLZoomView;->requestSurfaceChanged()V

    .line 2668
    invoke-direct {p0, p2}, Lcom/android/browser/WebGLZoomRenderer;->loadTitleBarTexture(I)V

    .line 2670
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 11
    .parameter "glUnused"
    .parameter "config"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 2674
    const-string v0, "GL"

    const-string v1, "onSurfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2677
    const-string v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uTextureMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec4 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = uTextureMatrix * aTextureCoord;\n}\n"

    const-string v1, "precision mediump float;\nvarying vec4 vTextureCoord;\nuniform sampler2D sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord.st);\n}\n"

    invoke-direct {p0, v0, v1}, Lcom/android/browser/WebGLZoomRenderer;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mProgram:I

    .line 2678
    iget v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mProgram:I

    if-nez v0, :cond_0

    .line 2720
    :goto_0
    return-void

    .line 2681
    :cond_0
    iget v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mProgram:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/WebGLZoomRenderer;->maPositionHandle:I

    .line 2682
    const-string v0, "glGetAttribLocation aPosition"

    invoke-direct {p0, v0}, Lcom/android/browser/WebGLZoomRenderer;->checkGlError(Ljava/lang/String;)V

    .line 2683
    iget v0, p0, Lcom/android/browser/WebGLZoomRenderer;->maPositionHandle:I

    if-ne v0, v3, :cond_1

    .line 2684
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for aPosition"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2686
    :cond_1
    iget v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mProgram:I

    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/WebGLZoomRenderer;->maTextureHandle:I

    .line 2687
    const-string v0, "glGetAttribLocation aTextureCoord"

    invoke-direct {p0, v0}, Lcom/android/browser/WebGLZoomRenderer;->checkGlError(Ljava/lang/String;)V

    .line 2688
    iget v0, p0, Lcom/android/browser/WebGLZoomRenderer;->maTextureHandle:I

    if-ne v0, v3, :cond_2

    .line 2689
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for aTextureCoord"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2692
    :cond_2
    iget v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mProgram:I

    const-string v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/WebGLZoomRenderer;->muMVPMatrixHandle:I

    .line 2693
    const-string v0, "glGetUniformLocation uMVPMatrix"

    invoke-direct {p0, v0}, Lcom/android/browser/WebGLZoomRenderer;->checkGlError(Ljava/lang/String;)V

    .line 2694
    iget v0, p0, Lcom/android/browser/WebGLZoomRenderer;->muMVPMatrixHandle:I

    if-ne v0, v3, :cond_3

    .line 2695
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for uMVPMatrix"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2698
    :cond_3
    iget v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mProgram:I

    const-string v1, "uTextureMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/WebGLZoomRenderer;->muTextureMatrixHandle:I

    .line 2699
    const-string v0, "glGetUniformLocation uTextureMatrix"

    invoke-direct {p0, v0}, Lcom/android/browser/WebGLZoomRenderer;->checkGlError(Ljava/lang/String;)V

    .line 2700
    iget v0, p0, Lcom/android/browser/WebGLZoomRenderer;->muTextureMatrixHandle:I

    if-ne v0, v3, :cond_4

    .line 2701
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for uTextureMatrix"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2713
    :cond_4
    iget-object v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mVMatrix:[F

    const/4 v1, 0x0

    const/high16 v4, -0x3f60

    const/high16 v9, 0x3f80

    move v3, v2

    move v5, v2

    move v6, v2

    move v7, v2

    move v8, v2

    move v10, v2

    invoke-static/range {v0 .. v10}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 2717
    invoke-direct {p0}, Lcom/android/browser/WebGLZoomRenderer;->loadWebViewTexture()V

    .line 2718
    invoke-direct {p0}, Lcom/android/browser/WebGLZoomRenderer;->loadCheckerBoardTexture()V

    goto/16 :goto_0
.end method

.method pinLoc(III)I
    .locals 1
    .parameter "x"
    .parameter "textureMax"
    .parameter "contentsMax"

    .prologue
    .line 1247
    if-ge p3, p2, :cond_1

    .line 1248
    const/4 p1, 0x0

    .line 1254
    :cond_0
    :goto_0
    return p1

    .line 1249
    :cond_1
    if-gez p1, :cond_2

    .line 1250
    const/4 p1, 0x0

    goto :goto_0

    .line 1251
    :cond_2
    add-int v0, p1, p2

    if-le v0, p3, :cond_0

    .line 1252
    sub-int p1, p3, p2

    goto :goto_0
.end method

.method printValues()V
    .locals 9

    .prologue
    const-string v8, "GL"

    const-string v7, ")"

    const-string v6, ", "

    .line 1873
    iget-object v4, p0, Lcom/android/browser/WebGLZoomRenderer;->mTextureRegion:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/browser/WebGLZoomRenderer;->mTextureWidth:I

    int-to-float v5, v5

    rem-float/2addr v4, v5

    iget v5, p0, Lcom/android/browser/WebGLZoomRenderer;->mTextureWidth:I

    int-to-float v5, v5

    div-float v2, v4, v5

    .line 1874
    .local v2, textureDx:F
    iget-object v4, p0, Lcom/android/browser/WebGLZoomRenderer;->mTextureRegion:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/browser/WebGLZoomRenderer;->mTextureHeight:I

    int-to-float v5, v5

    rem-float/2addr v4, v5

    iget v5, p0, Lcom/android/browser/WebGLZoomRenderer;->mTextureHeight:I

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 1875
    .local v3, textureDy:F
    iget-object v4, p0, Lcom/android/browser/WebGLZoomRenderer;->mTextureRegion:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/android/browser/WebGLZoomRenderer;->mTextureWidth:I

    rem-int/2addr v4, v5

    div-int/lit16 v0, v4, 0x100

    .line 1876
    .local v0, shiftx:I
    iget-object v4, p0, Lcom/android/browser/WebGLZoomRenderer;->mTextureRegion:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/android/browser/WebGLZoomRenderer;->mTextureHeight:I

    rem-int/2addr v4, v5

    div-int/lit16 v1, v4, 0x100

    .line 1878
    .local v1, shifty:I
    const-string v4, "GL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shift("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") texture("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/browser/WebGLZoomRenderer;->mTextureRegion:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/browser/WebGLZoomRenderer;->mTextureRegion:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " textureST("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    const-string v4, "GL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mViewGLXY("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/browser/WebGLZoomRenderer;->mViewGLLeft:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/browser/WebGLZoomRenderer;->mViewGLTop:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1880
    const-string v4, "GL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mViewLeftTop("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/browser/WebGLZoomRenderer;->mViewLeft:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/browser/WebGLZoomRenderer;->mViewTop:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "WebViewLeftTop("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/browser/WebGLZoomRenderer;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getScrollX()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/browser/WebGLZoomRenderer;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getScrollY()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1882
    return-void
.end method

.method declared-synchronized reArrangeTextures()Z
    .locals 15

    .prologue
    const/16 v14, 0x60

    .line 1288
    monitor-enter p0

    :try_start_0
    iget v4, p0, Lcom/android/browser/WebGLZoomRenderer;->mTileNumX:I

    .line 1289
    .local v4, oldTileNumX:I
    iget v5, p0, Lcom/android/browser/WebGLZoomRenderer;->mTileNumY:I

    .line 1293
    .local v5, oldTileNumY:I
    const/high16 v8, 0x4020

    .line 1294
    .local v8, scaleforwidth:F
    iget v12, p0, Lcom/android/browser/WebGLZoomRenderer;->mViewWidth:I

    iget v13, p0, Lcom/android/browser/WebGLZoomRenderer;->mViewHeight:I

    if-le v12, v13, :cond_0

    .line 1295
    const/high16 v8, 0x3fc0

    .line 1297
    :cond_0
    iget v12, p0, Lcom/android/browser/WebGLZoomRenderer;->mViewWidth:I

    int-to-float v12, v12

    mul-float/2addr v12, v8

    float-to-int v7, v12

    .line 1298
    .local v7, scaledViewWidth:I
    iget v12, p0, Lcom/android/browser/WebGLZoomRenderer;->mContentsWidth:I

    if-le v7, v12, :cond_1

    .line 1299
    iget v7, p0, Lcom/android/browser/WebGLZoomRenderer;->mContentsWidth:I

    .line 1300
    :cond_1
    div-int/lit16 v9, v7, 0x100

    .line 1301
    .local v9, tileNumX:I
    rem-int/lit16 v12, v7, 0x100

    if-eqz v12, :cond_2

    .line 1302
    add-int/lit8 v9, v9, 0x1

    .line 1304
    :cond_2
    iget v12, p0, Lcom/android/browser/WebGLZoomRenderer;->mContentsHeight:I

    div-int/lit16 v3, v12, 0x100

    .line 1305
    .local v3, maxTileNumY:I
    iget v12, p0, Lcom/android/browser/WebGLZoomRenderer;->mContentsHeight:I

    rem-int/lit16 v12, v12, 0x100

    if-eqz v12, :cond_3

    .line 1306
    add-int/lit8 v3, v3, 0x1

    .line 1308
    :cond_3
    iget v12, p0, Lcom/android/browser/WebGLZoomRenderer;->mContentsWidth:I

    div-int/lit16 v2, v12, 0x100

    .line 1309
    .local v2, maxTileNumX:I
    iget v12, p0, Lcom/android/browser/WebGLZoomRenderer;->mContentsWidth:I

    rem-int/lit16 v12, v12, 0x100

    if-eqz v12, :cond_4

    .line 1310
    add-int/lit8 v2, v2, 0x1

    .line 1313
    :cond_4
    iput v9, p0, Lcom/android/browser/WebGLZoomRenderer;->mTileNumX:I

    .line 1314
    iget v12, p0, Lcom/android/browser/WebGLZoomRenderer;->mTileNumX:I

    sub-int v12, v14, v12

    iget v13, p0, Lcom/android/browser/WebGLZoomRenderer;->mTileNumX:I

    div-int/2addr v12, v13

    add-int/lit8 v12, v12, 0x1

    iput v12, p0, Lcom/android/browser/WebGLZoomRenderer;->mTileNumY:I

    .line 1315
    iget v12, p0, Lcom/android/browser/WebGLZoomRenderer;->mTileNumY:I

    if-le v12, v3, :cond_5

    .line 1316
    iput v3, p0, Lcom/android/browser/WebGLZoomRenderer;->mTileNumY:I

    .line 1318
    :cond_5
    iget v12, p0, Lcom/android/browser/WebGLZoomRenderer;->mTileNumY:I

    iget v13, p0, Lcom/android/browser/WebGLZoomRenderer;->mTileNumX:I

    mul-int/2addr v12, v13

    sub-int v6, v14, v12

    .line 1319
    .local v6, remain:I
    iget v12, p0, Lcom/android/browser/WebGLZoomRenderer;->mTileNumX:I

    iget v13, p0, Lcom/android/browser/WebGLZoomRenderer;->mTileNumY:I

    div-int v13, v6, v13

    add-int/2addr v12, v13

    iput v12, p0, Lcom/android/browser/WebGLZoomRenderer;->mTileNumX:I

    .line 1321
    iget v12, p0, Lcom/android/browser/WebGLZoomRenderer;->mTileNumX:I

    if-ge v2, v12, :cond_6

    .line 1322
    iput v2, p0, Lcom/android/browser/WebGLZoomRenderer;->mTileNumX:I

    .line 1329
    :cond_6
    iget v12, p0, Lcom/android/browser/WebGLZoomRenderer;->mTileNumY:I

    iget v13, p0, Lcom/android/browser/WebGLZoomRenderer;->mTileNumX:I

    filled-new-array {v12, v13}, [I

    move-result-object v12

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v13, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[I

    iput-object v12, p0, Lcom/android/browser/WebGLZoomRenderer;->mTexTiles:[[I

    .line 1333
    iget v12, p0, Lcom/android/browser/WebGLZoomRenderer;->mTileNumX:I

    mul-int/lit16 v12, v12, 0x100

    iput v12, p0, Lcom/android/browser/WebGLZoomRenderer;->mTextureWidth:I

    .line 1334
    iget v12, p0, Lcom/android/browser/WebGLZoomRenderer;->mTileNumY:I

    mul-int/lit16 v12, v12, 0x100

    iput v12, p0, Lcom/android/browser/WebGLZoomRenderer;->mTextureHeight:I

    .line 1336
    iget v12, p0, Lcom/android/browser/WebGLZoomRenderer;->mTextureWidth:I

    int-to-float v12, v12

    iget v13, p0, Lcom/android/browser/WebGLZoomRenderer;->mWidth:F

    div-float/2addr v12, v13

    iput v12, p0, Lcom/android/browser/WebGLZoomRenderer;->mTextureScaleX:F

    .line 1337
    iget v12, p0, Lcom/android/browser/WebGLZoomRenderer;->mTextureHeight:I

    int-to-float v12, v12

    iget v13, p0, Lcom/android/browser/WebGLZoomRenderer;->mHeight:F

    div-float/2addr v12, v13

    iput v12, p0, Lcom/android/browser/WebGLZoomRenderer;->mTextureScaleY:F

    .line 1345
    const/4 v0, 0x0

    .line 1346
    .local v0, count:I
    const/4 v10, 0x0

    .local v10, x:I
    :goto_0
    iget v12, p0, Lcom/android/browser/WebGLZoomRenderer;->mTileNumX:I

    if-ge v10, v12, :cond_8

    .line 1347
    const/4 v11, 0x0

    .local v11, y:I
    move v1, v0

    .end local v0           #count:I
    .local v1, count:I
    :goto_1
    iget v12, p0, Lcom/android/browser/WebGLZoomRenderer;->mTileNumY:I

    if-ge v11, v12, :cond_7

    .line 1350
    iget-object v12, p0, Lcom/android/browser/WebGLZoomRenderer;->mTexTiles:[[I

    aget-object v12, v12, v11

    iget-object v13, p0, Lcom/android/browser/WebGLZoomRenderer;->mTextureIDs:[I

    add-int/lit8 v0, v1, 0x1

    .end local v1           #count:I
    .restart local v0       #count:I
    aget v13, v13, v1

    aput v13, v12, v10

    .line 1347
    add-int/lit8 v11, v11, 0x1

    move v1, v0

    .end local v0           #count:I
    .restart local v1       #count:I
    goto :goto_1

    .line 1346
    :cond_7
    add-int/lit8 v10, v10, 0x1

    move v0, v1

    .end local v1           #count:I
    .restart local v0       #count:I
    goto :goto_0

    .line 1354
    .end local v11           #y:I
    :cond_8
    iget-object v12, p0, Lcom/android/browser/WebGLZoomRenderer;->mValidTextureRegion:Landroid/graphics/Region;

    monitor-enter v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1357
    :try_start_1
    iget-object v13, p0, Lcom/android/browser/WebGLZoomRenderer;->mValidTextureRegion:Landroid/graphics/Region;

    invoke-virtual {v13}, Landroid/graphics/Region;->setEmpty()V

    .line 1358
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1361
    :try_start_2
    iget-object v12, p0, Lcom/android/browser/WebGLZoomRenderer;->mSurfaceView:Lcom/android/browser/WebGLZoomView;

    invoke-virtual {v12}, Lcom/android/browser/WebGLZoomView;->removeRequestUpdateWebViewTexture()V

    .line 1362
    iget-object v12, p0, Lcom/android/browser/WebGLZoomRenderer;->mTileQueue:Lcom/android/browser/WebGLZoomRenderer$TileQueue;

    invoke-virtual {v12}, Lcom/android/browser/WebGLZoomRenderer$TileQueue;->reset()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1364
    const/4 v12, 0x1

    monitor-exit p0

    return v12

    .line 1358
    :catchall_0
    move-exception v13

    :try_start_3
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1288
    .end local v0           #count:I
    .end local v2           #maxTileNumX:I
    .end local v3           #maxTileNumY:I
    .end local v4           #oldTileNumX:I
    .end local v5           #oldTileNumY:I
    .end local v6           #remain:I
    .end local v7           #scaledViewWidth:I
    .end local v8           #scaleforwidth:F
    .end local v9           #tileNumX:I
    .end local v10           #x:I
    :catchall_1
    move-exception v12

    monitor-exit p0

    throw v12
.end method

.method saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 7
    .parameter "bitmap"
    .parameter "name"

    .prologue
    .line 1886
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1887
    .local v1, mFile:Ljava/io/File;
    const/4 v2, 0x0

    .line 1891
    .local v2, out:Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1892
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1900
    :goto_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1901
    .end local v2           #out:Ljava/io/FileOutputStream;
    .local v3, out:Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p1, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 1913
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v2, v3

    .line 1921
    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :goto_1
    return-void

    .line 1896
    :cond_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1903
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 1906
    .local v0, e:Ljava/lang/Exception;
    :goto_2
    :try_start_4
    const-string v4, "GL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1913
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 1915
    :catch_1
    move-exception v4

    goto :goto_1

    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v4

    move-object v2, v3

    .line 1919
    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    goto :goto_1

    .line 1911
    :catchall_0
    move-exception v4

    .line 1913
    :goto_3
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 1917
    :goto_4
    throw v4

    .line 1915
    :catch_3
    move-exception v5

    goto :goto_4

    .line 1911
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 1903
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v4

    move-object v0, v4

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method saveTextureBitmap()V
    .locals 0

    .prologue
    .line 1926
    return-void
.end method

.method scroll(II)V
    .locals 18
    .parameter "newx"
    .parameter "newy"

    .prologue
    .line 1373
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mViewLeft:I

    move v12, v0

    move/from16 v0, p1

    move v1, v12

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mViewTop:I

    move v12, v0

    move/from16 v0, p2

    move v1, v12

    if-ne v0, v1, :cond_0

    .line 1435
    :goto_0
    return-void

    .line 1376
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mViewLeft:I

    move v12, v0

    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/WebGLZoomRenderer;->mOldViewLeft:I

    .line 1377
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mViewTop:I

    move v12, v0

    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/WebGLZoomRenderer;->mOldViewTop:I

    .line 1379
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/WebGLZoomRenderer;->mViewLeft:I

    .line 1380
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/WebGLZoomRenderer;->mViewTop:I

    .line 1382
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mViewLeft:I

    move v3, v0

    .line 1383
    .local v3, left:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mViewTop:I

    move v9, v0

    .line 1384
    .local v9, top:I
    new-instance v11, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mViewWidth:I

    move v12, v0

    add-int/2addr v12, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mViewHeight:I

    move v13, v0

    add-int/2addr v13, v9

    invoke-direct {v11, v3, v9, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1386
    .local v11, viewrect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTextureRegion:Landroid/graphics/Rect;

    move-object v12, v0

    invoke-virtual {v12, v11}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 1390
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mViewLeft:I

    move v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mViewTop:I

    move v13, v0

    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/WebGLZoomRenderer;->calcTextureRegion(II)Landroid/graphics/Rect;

    move-result-object v4

    .line 1397
    .local v4, newTextureRegion:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTextureRegion:Landroid/graphics/Rect;

    move-object v12, v0

    iget v12, v12, Landroid/graphics/Rect;->left:I

    div-int/lit16 v7, v12, 0x100

    .line 1398
    .local v7, oldtilex:I
    iget v12, v4, Landroid/graphics/Rect;->left:I

    div-int/lit16 v5, v12, 0x100

    .line 1399
    .local v5, newtilex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTextureRegion:Landroid/graphics/Rect;

    move-object v12, v0

    iget v12, v12, Landroid/graphics/Rect;->top:I

    div-int/lit16 v8, v12, 0x100

    .line 1400
    .local v8, oldtiley:I
    iget v12, v4, Landroid/graphics/Rect;->top:I

    div-int/lit16 v6, v12, 0x100

    .line 1403
    .local v6, newtiley:I
    if-ne v7, v5, :cond_1

    if-eq v8, v6, :cond_2

    .line 1407
    :cond_1
    new-instance v10, Landroid/graphics/Region;

    invoke-direct {v10, v4}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    .line 1408
    .local v10, updateRegion:Landroid/graphics/Region;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTextureRegion:Landroid/graphics/Rect;

    move-object v12, v0

    sget-object v13, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v10, v12, v13}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1410
    invoke-virtual {v10}, Landroid/graphics/Region;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_2

    .line 1412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTextureRegion:Landroid/graphics/Rect;

    move-object v12, v0

    invoke-virtual {v12, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mSurfaceView:Lcom/android/browser/WebGLZoomView;

    move-object v12, v0

    invoke-virtual {v12, v10}, Lcom/android/browser/WebGLZoomView;->requestUpdateContents(Landroid/graphics/Region;)V

    .line 1417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mValidTextureRegion:Landroid/graphics/Region;

    move-object v12, v0

    monitor-enter v12

    .line 1420
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mValidTextureRegion:Landroid/graphics/Region;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTextureRegion:Landroid/graphics/Rect;

    move-object v14, v0

    sget-object v15, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mValidTextureRegion:Landroid/graphics/Region;

    move-object v13, v0

    sget-object v14, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v13, v10, v14}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 1425
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1431
    .end local v4           #newTextureRegion:Landroid/graphics/Rect;
    .end local v5           #newtilex:I
    .end local v6           #newtiley:I
    .end local v7           #oldtilex:I
    .end local v8           #oldtiley:I
    .end local v10           #updateRegion:Landroid/graphics/Region;
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mViewLeft:I

    move v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTextureRegion:Landroid/graphics/Rect;

    move-object v13, v0

    iget v13, v13, Landroid/graphics/Rect;->left:I

    sub-int/2addr v12, v13

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTextureWidth:I

    move v13, v0

    int-to-float v13, v13

    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/WebGLZoomRenderer;->toGLX(FF)F

    move-result v12

    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/WebGLZoomRenderer;->mViewGLLeft:F

    .line 1432
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mViewTop:I

    move v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTextureRegion:Landroid/graphics/Rect;

    move-object v13, v0

    iget v13, v13, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v13

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTextureHeight:I

    move v13, v0

    int-to-float v13, v13

    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/WebGLZoomRenderer;->toGLY(FF)F

    move-result v12

    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/WebGLZoomRenderer;->mViewGLTop:F

    .line 1433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mViewRect:Landroid/graphics/Rect;

    move-object v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mViewLeft:I

    move v13, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mViewTop:I

    move v14, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mViewLeft:I

    move v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mViewWidth:I

    move/from16 v16, v0

    add-int v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mViewTop:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mViewHeight:I

    move/from16 v17, v0

    add-int v16, v16, v17

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0

    .line 1425
    .restart local v4       #newTextureRegion:Landroid/graphics/Rect;
    .restart local v5       #newtilex:I
    .restart local v6       #newtiley:I
    .restart local v7       #oldtilex:I
    .restart local v8       #oldtiley:I
    .restart local v10       #updateRegion:Landroid/graphics/Region;
    :catchall_0
    move-exception v13

    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v13
.end method

.method declared-synchronized setDrawFrameFlag(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1113
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/browser/WebGLZoomRenderer;->mDrawFrameFlag:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1114
    monitor-exit p0

    return-void

    .line 1113
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setTitleBarVisibility(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 3010
    iput-boolean p1, p0, Lcom/android/browser/WebGLZoomRenderer;->mTitleBarVisibility:Z

    .line 3011
    return-void
.end method

.method public setWebView(Landroid/webkit/WebView;)V
    .locals 2
    .parameter "webview"

    .prologue
    const/4 v1, 0x1

    .line 1140
    iput-object p1, p0, Lcom/android/browser/WebGLZoomRenderer;->mWebView:Landroid/webkit/WebView;

    .line 1141
    invoke-virtual {p0, v1, v1}, Lcom/android/browser/WebGLZoomRenderer;->initWebViewVariables(ZZ)Z

    .line 1143
    new-instance v0, Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/browser/WebGLZoomRenderer;->mTextureRegion:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    .line 1145
    .local v0, region:Landroid/graphics/Region;
    iget-object v1, p0, Lcom/android/browser/WebGLZoomRenderer;->mSurfaceView:Lcom/android/browser/WebGLZoomView;

    invoke-virtual {v1, v0}, Lcom/android/browser/WebGLZoomView;->requestUpdateContents(Landroid/graphics/Region;)V

    .line 1146
    return-void
.end method

.method show(FFF)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "scale"

    .prologue
    .line 2921
    iput p3, p0, Lcom/android/browser/WebGLZoomRenderer;->mZoomScale:F

    .line 2924
    iget v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mViewWidth:I

    int-to-float v0, v0

    invoke-virtual {p0, p1, v0}, Lcom/android/browser/WebGLZoomRenderer;->toGLX(FF)F

    move-result v0

    iput v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mZoomCenterGLX:F

    .line 2925
    iget v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mViewHeight:I

    int-to-float v0, v0

    invoke-virtual {p0, p2, v0}, Lcom/android/browser/WebGLZoomRenderer;->toGLY(FF)F

    move-result v0

    iput v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mZoomCenterGLY:F

    .line 2926
    iget v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mViewLeft:I

    float-to-int v1, p1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/browser/WebGLZoomRenderer;->mTextureWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mZoomRegionLeft:I

    .line 2927
    iget v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mViewTop:I

    float-to-int v1, p2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/browser/WebGLZoomRenderer;->mTextureHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mZoomRegionTop:I

    .line 2928
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mTitleBarGLTop:F

    .line 2930
    return-void
.end method

.method status()I
    .locals 7

    .prologue
    .line 1125
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1127
    .local v1, tick:J
    iget-wide v3, p0, Lcom/android/browser/WebGLZoomRenderer;->mQueueFullTick:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    iget-wide v3, p0, Lcom/android/browser/WebGLZoomRenderer;->mQueueFullTick:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x1388

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 1128
    const/4 v0, 0x2

    .line 1133
    .local v0, status:I
    :goto_0
    return v0

    .line 1130
    .end local v0           #status:I
    :cond_0
    iget v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mStatus:I

    .restart local v0       #status:I
    goto :goto_0
.end method

.method surfaceChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1151
    invoke-virtual {p0, v1, v1}, Lcom/android/browser/WebGLZoomRenderer;->initWebViewVariables(ZZ)Z

    .line 1153
    new-instance v0, Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/browser/WebGLZoomRenderer;->mTextureRegion:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    .line 1155
    .local v0, region:Landroid/graphics/Region;
    iget-object v1, p0, Lcom/android/browser/WebGLZoomRenderer;->mSurfaceView:Lcom/android/browser/WebGLZoomView;

    invoke-virtual {v1, v0}, Lcom/android/browser/WebGLZoomView;->requestUpdateContents(Landroid/graphics/Region;)V

    .line 1156
    return-void
.end method

.method toGLViewX(F)F
    .locals 3
    .parameter "viewx"

    .prologue
    .line 2880
    const/high16 v1, 0x4000

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/android/browser/WebGLZoomRenderer;->mWidth:F

    div-float v0, v1, v2

    .line 2881
    .local v0, glx:F
    const/high16 v1, 0x3f80

    sub-float/2addr v0, v1

    .line 2883
    return v0
.end method

.method toGLViewY(F)F
    .locals 3
    .parameter "viewy"

    .prologue
    .line 2889
    const/high16 v1, 0x4000

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/android/browser/WebGLZoomRenderer;->mHeight:F

    div-float v0, v1, v2

    .line 2890
    .local v0, gly:F
    const/high16 v1, 0x3f80

    sub-float v0, v1, v0

    .line 2892
    return v0
.end method

.method toGLX(FF)F
    .locals 2
    .parameter "x"
    .parameter "width"

    .prologue
    .line 2899
    const/high16 v1, 0x4000

    mul-float/2addr v1, p1

    div-float v0, v1, p2

    .line 2900
    .local v0, glx:F
    const/high16 v1, 0x3f80

    sub-float/2addr v0, v1

    .line 2902
    return v0
.end method

.method toGLY(FF)F
    .locals 2
    .parameter "y"
    .parameter "height"

    .prologue
    .line 2908
    const/high16 v1, 0x4000

    mul-float/2addr v1, p1

    div-float v0, v1, p2

    .line 2909
    .local v0, gly:F
    const/high16 v1, 0x3f80

    sub-float v0, v1, v0

    .line 2911
    return v0
.end method

.method updateTitleBarTexture()V
    .locals 4

    .prologue
    const/16 v2, 0xde1

    const/4 v1, 0x0

    const-string v3, "updateTitleBarTexture"

    .line 1461
    iget-boolean v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mTitleBarVisibility:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mTiltebarBitmapUpdated:Z

    if-nez v0, :cond_1

    .line 1474
    :cond_0
    :goto_0
    return-void

    .line 1466
    :cond_1
    iget v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mTitleBarTextureID:I

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1467
    const-string v0, "updateTitleBarTexture"

    invoke-direct {p0, v3}, Lcom/android/browser/WebGLZoomRenderer;->checkGlError(Ljava/lang/String;)V

    .line 1469
    iget-object v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mTitleBarBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2, v1, v1, v1, v0}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;)V

    .line 1471
    const-string v0, "updateTitleBarTexture"

    invoke-direct {p0, v3}, Lcom/android/browser/WebGLZoomRenderer;->checkGlError(Ljava/lang/String;)V

    .line 1473
    iput-boolean v1, p0, Lcom/android/browser/WebGLZoomRenderer;->mTiltebarBitmapUpdated:Z

    goto :goto_0
.end method

.method updateTitleBarTextureBitmap()V
    .locals 3

    .prologue
    .line 1445
    iget-boolean v1, p0, Lcom/android/browser/WebGLZoomRenderer;->mTitleBarVisibility:Z

    if-nez v1, :cond_0

    .line 1456
    :goto_0
    return-void

    .line 1448
    :cond_0
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/browser/WebGLZoomRenderer;->mTitleBarBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1452
    .local v0, canvas:Landroid/graphics/Canvas;
    iget-object v1, p0, Lcom/android/browser/WebGLZoomRenderer;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getScrollX()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1453
    iget-object v1, p0, Lcom/android/browser/WebGLZoomRenderer;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->draw(Landroid/graphics/Canvas;)V

    .line 1455
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/browser/WebGLZoomRenderer;->mTiltebarBitmapUpdated:Z

    goto :goto_0
.end method

.method updateWebViewTexture()V
    .locals 2

    .prologue
    .line 2067
    iget-boolean v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mDrawFrameFlag:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mSurfaceView:Lcom/android/browser/WebGLZoomView;

    iget-boolean v0, v0, Lcom/android/browser/WebGLZoomView;->mScaling:Z

    if-nez v0, :cond_0

    .line 2069
    sget-object v0, Lcom/android/browser/WebGLZoomRenderer;->LOGTAG:Ljava/lang/String;

    const-string v1, "ignore updateWebViewTexture in main thread"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    iget-object v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mSurfaceView:Lcom/android/browser/WebGLZoomView;

    invoke-virtual {v0}, Lcom/android/browser/WebGLZoomView;->requestUpdateWebViewTexture()V

    .line 2106
    :goto_0
    return-void

    .line 2075
    :cond_0
    iget-object v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mSurfaceView:Lcom/android/browser/WebGLZoomView;

    new-instance v1, Lcom/android/browser/WebGLZoomRenderer$1;

    invoke-direct {v1, p0}, Lcom/android/browser/WebGLZoomRenderer$1;-><init>(Lcom/android/browser/WebGLZoomRenderer;)V

    invoke-virtual {v0, v1}, Lcom/android/browser/WebGLZoomView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method updateWebViewTextureBitmap(Landroid/graphics/Region;Z)Z
    .locals 40
    .parameter "regionToUpdate"
    .parameter "timelimit"

    .prologue
    .line 1545
    new-instance v30, Landroid/graphics/Rect;

    invoke-direct/range {v30 .. v30}, Landroid/graphics/Rect;-><init>()V

    .line 1546
    .local v30, updateRegion:Landroid/graphics/Rect;
    new-instance v20, Landroid/graphics/Region;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/graphics/Region;-><init>(Landroid/graphics/Region;)V

    .line 1555
    .local v20, region:Landroid/graphics/Region;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/WebGLZoomRenderer;->initWebViewVariables(ZZ)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 1558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mViewRect:Landroid/graphics/Rect;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object/from16 v0, v20

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mSurfaceView:Lcom/android/browser/WebGLZoomView;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/browser/WebGLZoomView;->mTextureBitmapDirtyRegion:Landroid/graphics/Region;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mViewRect:Landroid/graphics/Rect;

    move-object v6, v0

    sget-object v7, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1563
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTileNumY:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTileNumX:I

    move v6, v0

    filled-new-array {v5, v6}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, [[Z

    .line 1569
    .local v27, tiles:[[Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTextureRegion:Landroid/graphics/Rect;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object/from16 v0, v20

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1570
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Region;->isEmpty()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 1573
    const/4 v5, 0x1

    .line 1857
    :goto_0
    return v5

    .line 1577
    :cond_1
    new-instance v18, Landroid/graphics/RegionIterator;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/graphics/RegionIterator;-><init>(Landroid/graphics/Region;)V

    .line 1581
    .local v18, iter:Landroid/graphics/RegionIterator;
    const/16 v28, 0x0

    .line 1582
    .local v28, tooklongtime:Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    .line 1584
    .local v22, startTick:J
    const/4 v10, 0x0

    .line 1595
    .local v10, pic:Landroid/graphics/Picture;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTextureRegion:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTextureWidth:I

    move v6, v0

    rem-int/2addr v5, v6

    div-int/lit16 v8, v5, 0x100

    .line 1596
    .local v8, shiftx:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTextureRegion:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTextureHeight:I

    move v6, v0

    rem-int/2addr v5, v6

    div-int/lit16 v9, v5, 0x100

    .line 1603
    .local v9, shifty:I
    :cond_2
    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/graphics/RegionIterator;->next(Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTextureRegion:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->left:I

    neg-int v5, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTextureRegion:Landroid/graphics/Rect;

    move-object v6, v0

    iget v6, v6, Landroid/graphics/Rect;->top:I

    neg-int v6, v6

    move-object/from16 v0, v30

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 1609
    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    move v0, v5

    div-int/lit16 v0, v0, 0x100

    move/from16 v19, v0

    .line 1611
    .local v19, lx:I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v5, v0

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move v0, v5

    div-int/lit16 v0, v0, 0x100

    move/from16 v21, v0

    .line 1612
    .local v21, rx:I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v5, v0

    move v0, v5

    div-int/lit16 v0, v0, 0x100

    move/from16 v29, v0

    .line 1613
    .local v29, ty:I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v5, v0

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    div-int/lit16 v12, v5, 0x100

    .line 1621
    .local v12, by:I
    move/from16 v6, v19

    .local v6, x:I
    :goto_1
    move v0, v6

    move/from16 v1, v21

    if-gt v0, v1, :cond_2

    .line 1622
    move/from16 v7, v29

    .local v7, y:I
    :goto_2
    if-gt v7, v12, :cond_3

    .line 1624
    aget-object v5, v27, v7

    const/4 v11, 0x1

    aput-boolean v11, v5, v6

    .line 1622
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1621
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1638
    .end local v6           #x:I
    .end local v7           #y:I
    .end local v12           #by:I
    .end local v19           #lx:I
    .end local v21           #rx:I
    .end local v29           #ty:I
    :cond_4
    new-instance v33, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mViewRect:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTextureRegion:Landroid/graphics/Rect;

    move-object v6, v0

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mViewRect:Landroid/graphics/Rect;

    move-object v6, v0

    iget v6, v6, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTextureRegion:Landroid/graphics/Rect;

    move-object v7, v0

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mViewRect:Landroid/graphics/Rect;

    move-object v7, v0

    iget v7, v7, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTextureRegion:Landroid/graphics/Rect;

    move-object v11, v0

    iget v11, v11, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mViewWidth:I

    move v11, v0

    add-int/2addr v7, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mViewRect:Landroid/graphics/Rect;

    move-object v11, v0

    iget v11, v11, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTextureRegion:Landroid/graphics/Rect;

    move-object v12, v0

    iget v12, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mViewHeight:I

    move v12, v0

    add-int/2addr v11, v12

    move-object/from16 v0, v33

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v11

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1646
    .local v33, viewRect:Landroid/graphics/Rect;
    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    move v0, v5

    div-int/lit16 v0, v0, 0x100

    move/from16 v32, v0

    .line 1648
    .local v32, viewLeft:I
    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v5, v0

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move v0, v5

    div-int/lit16 v0, v0, 0x100

    move/from16 v34, v0

    .line 1649
    .local v34, viewRight:I
    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v5, v0

    move v0, v5

    div-int/lit16 v0, v0, 0x100

    move/from16 v35, v0

    .line 1650
    .local v35, viewTop:I
    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v5, v0

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move v0, v5

    div-int/lit16 v0, v0, 0x100

    move/from16 v31, v0

    .line 1652
    .local v31, viewBottom:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTileNumY:I

    move v5, v0

    move/from16 v0, v31

    move v1, v5

    if-lt v0, v1, :cond_5

    .line 1655
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTileNumY:I

    move v5, v0

    const/4 v6, 0x1

    sub-int v31, v5, v6

    .line 1658
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTileNumX:I

    move v5, v0

    move/from16 v0, v34

    move v1, v5

    if-lt v0, v1, :cond_6

    .line 1661
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTileNumX:I

    move v5, v0

    const/4 v6, 0x1

    sub-int v34, v5, v6

    .line 1668
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mOldViewLeft:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mViewLeft:I

    move v6, v0

    if-le v5, v6, :cond_9

    .line 1671
    move/from16 v24, v34

    .line 1672
    .local v24, sx:I
    move/from16 v16, v32

    .line 1681
    .local v16, ex:I
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mOldViewTop:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mViewTop:I

    move v6, v0

    if-ge v5, v6, :cond_a

    .line 1683
    move/from16 v25, v35

    .line 1684
    .local v25, sy:I
    move/from16 v17, v31

    .line 1693
    .local v17, ey:I
    :goto_4
    move/from16 v7, v25

    .line 1696
    .restart local v7       #y:I
    :goto_5
    const/4 v5, 0x1

    move/from16 v0, v28

    move v1, v5

    if-ne v0, v1, :cond_b

    .line 1769
    :cond_7
    if-nez v28, :cond_8

    .line 1772
    const/4 v15, 0x0

    .local v15, count:I
    const/4 v11, 0x0

    .line 1776
    .local v11, bitmapcount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mViewRect:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTextureRegion:Landroid/graphics/Rect;

    move-object v6, v0

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mViewWidth:I

    move v6, v0

    div-int/lit8 v6, v6, 0x2

    add-int v13, v5, v6

    .line 1777
    .local v13, centerx:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mViewRect:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTextureRegion:Landroid/graphics/Rect;

    move-object v6, v0

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mViewHeight:I

    move v6, v0

    div-int/lit8 v6, v6, 0x2

    add-int v14, v5, v6

    .line 1784
    .local v14, centery:I
    div-int/lit16 v13, v13, 0x100

    .line 1785
    div-int/lit16 v14, v14, 0x100

    .line 1788
    .end local v11           #bitmapcount:I
    :goto_6
    const/4 v5, 0x1

    move/from16 v0, v28

    move v1, v5

    if-ne v0, v1, :cond_12

    .line 1854
    .end local v13           #centerx:I
    .end local v14           #centery:I
    .end local v15           #count:I
    :cond_8
    const/4 v5, 0x1

    move/from16 v0, v28

    move v1, v5

    if-ne v0, v1, :cond_1d

    .line 1855
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 1676
    .end local v7           #y:I
    .end local v16           #ex:I
    .end local v17           #ey:I
    .end local v24           #sx:I
    .end local v25           #sy:I
    :cond_9
    move/from16 v24, v32

    .line 1677
    .restart local v24       #sx:I
    move/from16 v16, v34

    .restart local v16       #ex:I
    goto :goto_3

    .line 1688
    :cond_a
    move/from16 v25, v31

    .line 1689
    .restart local v25       #sy:I
    move/from16 v17, v35

    .restart local v17       #ey:I
    goto :goto_4

    .line 1702
    .restart local v7       #y:I
    :cond_b
    move/from16 v6, v24

    .line 1705
    .restart local v6       #x:I
    :goto_7
    const/4 v5, 0x1

    move/from16 v0, v28

    move v1, v5

    if-ne v0, v1, :cond_d

    .line 1753
    :cond_c
    :goto_8
    move/from16 v0, v25

    move/from16 v1, v17

    if-le v0, v1, :cond_11

    .line 1755
    move v0, v7

    move/from16 v1, v17

    if-le v0, v1, :cond_7

    if-lez v7, :cond_7

    .line 1756
    add-int/lit8 v7, v7, -0x1

    goto :goto_5

    .line 1711
    :cond_d
    if-ltz v6, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTileNumX:I

    move v5, v0

    if-ge v6, v5, :cond_c

    if-ltz v7, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTileNumY:I

    move v5, v0

    if-ge v7, v5, :cond_c

    .line 1714
    aget-object v5, v27, v7

    aget-boolean v5, v5, v6

    const/4 v11, 0x1

    if-ne v5, v11, :cond_f

    move-object/from16 v5, p0

    .line 1717
    invoke-virtual/range {v5 .. v10}, Lcom/android/browser/WebGLZoomRenderer;->drawTile(IIIILandroid/graphics/Picture;)Lcom/android/browser/WebGLZoomRenderer$Tile;

    move-result-object v26

    .line 1718
    .local v26, tile:Lcom/android/browser/WebGLZoomRenderer$Tile;
    if-nez v26, :cond_e

    .line 1720
    const/16 v28, 0x1

    .line 1721
    goto :goto_8

    .line 1726
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTileQueue:Lcom/android/browser/WebGLZoomRenderer$TileQueue;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/browser/WebGLZoomRenderer$TileQueue;->push(Lcom/android/browser/WebGLZoomRenderer$Tile;)V

    .line 1727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mSurfaceView:Lcom/android/browser/WebGLZoomView;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/browser/WebGLZoomView;->mTextureBitmapDirtyRegion:Landroid/graphics/Region;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer$Tile;->mRect:Landroid/graphics/Rect;

    move-object v11, v0

    sget-object v12, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v5, v11, v12}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1728
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/WebGLZoomRenderer;->updateWebViewTexture()V

    .line 1729
    aget-object v5, v27, v7

    const/4 v11, 0x0

    aput-boolean v11, v5, v6

    .line 1731
    const/4 v5, 0x1

    move/from16 v0, p2

    move v1, v5

    if-ne v0, v1, :cond_f

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v36

    sub-long v36, v36, v22

    const-wide/16 v38, 0x1

    cmp-long v5, v36, v38

    if-lez v5, :cond_f

    .line 1733
    const/16 v28, 0x1

    .line 1734
    goto :goto_8

    .line 1740
    .end local v26           #tile:Lcom/android/browser/WebGLZoomRenderer$Tile;
    :cond_f
    move/from16 v0, v24

    move/from16 v1, v16

    if-le v0, v1, :cond_10

    .line 1742
    move v0, v6

    move/from16 v1, v16

    if-le v0, v1, :cond_c

    if-lez v6, :cond_c

    .line 1743
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_7

    .line 1747
    :cond_10
    move v0, v6

    move/from16 v1, v16

    if-ge v0, v1, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTileNumX:I

    move v5, v0

    const/4 v11, 0x1

    sub-int/2addr v5, v11

    if-ge v6, v5, :cond_c

    .line 1748
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_7

    .line 1760
    :cond_11
    move v0, v7

    move/from16 v1, v17

    if-ge v0, v1, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTileNumY:I

    move v5, v0

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-ge v7, v5, :cond_7

    .line 1761
    .end local v6           #x:I
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_5

    .line 1791
    .restart local v13       #centerx:I
    .restart local v14       #centery:I
    .restart local v15       #count:I
    :cond_12
    sub-int v24, v13, v15

    .line 1792
    add-int v16, v13, v15

    .line 1793
    sub-int v25, v14, v15

    .line 1794
    add-int v17, v14, v15

    .line 1797
    if-gez v24, :cond_13

    if-gez v25, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTileNumX:I

    move v5, v0

    move/from16 v0, v16

    move v1, v5

    if-lt v0, v1, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTileNumY:I

    move v5, v0

    move/from16 v0, v17

    move v1, v5

    if-ge v0, v1, :cond_8

    .line 1801
    :cond_13
    if-gez v24, :cond_14

    .line 1802
    const/16 v24, 0x0

    .line 1803
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTileNumX:I

    move v5, v0

    move/from16 v0, v16

    move v1, v5

    if-lt v0, v1, :cond_15

    .line 1804
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTileNumX:I

    move v5, v0

    const/4 v6, 0x1

    sub-int v16, v5, v6

    .line 1805
    :cond_15
    if-gez v25, :cond_16

    .line 1806
    const/16 v25, 0x0

    .line 1807
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTileNumY:I

    move v5, v0

    move/from16 v0, v17

    move v1, v5

    if-lt v0, v1, :cond_17

    .line 1808
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTileNumY:I

    move v5, v0

    const/4 v6, 0x1

    sub-int v17, v5, v6

    .line 1811
    :cond_17
    move/from16 v6, v24

    .restart local v6       #x:I
    :goto_9
    move v0, v6

    move/from16 v1, v16

    if-gt v0, v1, :cond_1c

    .line 1812
    move/from16 v7, v25

    :goto_a
    move v0, v7

    move/from16 v1, v17

    if-gt v0, v1, :cond_1a

    .line 1814
    aget-object v5, v27, v7

    aget-boolean v5, v5, v6

    if-nez v5, :cond_19

    .line 1812
    :cond_18
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_19
    move-object/from16 v5, p0

    .line 1817
    invoke-virtual/range {v5 .. v10}, Lcom/android/browser/WebGLZoomRenderer;->drawTile(IIIILandroid/graphics/Picture;)Lcom/android/browser/WebGLZoomRenderer$Tile;

    move-result-object v26

    .line 1819
    .restart local v26       #tile:Lcom/android/browser/WebGLZoomRenderer$Tile;
    if-nez v26, :cond_1b

    .line 1821
    const/16 v28, 0x1

    .line 1822
    add-int/lit8 v6, v16, 0x1

    .line 1823
    add-int/lit8 v7, v17, 0x1

    .line 1811
    .end local v26           #tile:Lcom/android/browser/WebGLZoomRenderer$Tile;
    :cond_1a
    :goto_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 1827
    .restart local v26       #tile:Lcom/android/browser/WebGLZoomRenderer$Tile;
    :cond_1b
    aget-object v5, v27, v7

    const/4 v11, 0x0

    aput-boolean v11, v5, v6

    .line 1830
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mTileQueue:Lcom/android/browser/WebGLZoomRenderer$TileQueue;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/browser/WebGLZoomRenderer$TileQueue;->push(Lcom/android/browser/WebGLZoomRenderer$Tile;)V

    .line 1831
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer;->mSurfaceView:Lcom/android/browser/WebGLZoomView;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/browser/WebGLZoomView;->mTextureBitmapDirtyRegion:Landroid/graphics/Region;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/browser/WebGLZoomRenderer$Tile;->mRect:Landroid/graphics/Rect;

    move-object v11, v0

    sget-object v12, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v5, v11, v12}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1832
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/WebGLZoomRenderer;->updateWebViewTexture()V

    .line 1834
    const/4 v5, 0x1

    move/from16 v0, p2

    move v1, v5

    if-ne v0, v1, :cond_18

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v36

    sub-long v36, v36, v22

    const-wide/16 v38, 0x1

    cmp-long v5, v36, v38

    if-lez v5, :cond_18

    .line 1836
    const/16 v28, 0x1

    .line 1837
    add-int/lit8 v6, v16, 0x1

    .line 1838
    add-int/lit8 v7, v17, 0x1

    .line 1839
    goto :goto_b

    .line 1844
    .end local v26           #tile:Lcom/android/browser/WebGLZoomRenderer$Tile;
    :cond_1c
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_6

    .line 1857
    .end local v6           #x:I
    .end local v13           #centerx:I
    .end local v14           #centery:I
    .end local v15           #count:I
    :cond_1d
    const/4 v5, 0x1

    goto/16 :goto_0
.end method

.method updateWebViewTextureGL(Lcom/android/browser/WebGLZoomRenderer$Tile;)V
    .locals 4
    .parameter "tile"

    .prologue
    const/16 v2, 0xde1

    const/4 v1, 0x0

    .line 2042
    iget v0, p1, Lcom/android/browser/WebGLZoomRenderer$Tile;->mTexID:I

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 2043
    iget-object v0, p1, Lcom/android/browser/WebGLZoomRenderer$Tile;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2, v1, v1, v1, v0}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;)V

    .line 2045
    iget-object v0, p0, Lcom/android/browser/WebGLZoomRenderer;->mValidTextureRegion:Landroid/graphics/Region;

    monitor-enter v0

    .line 2047
    :try_start_0
    iget-object v1, p0, Lcom/android/browser/WebGLZoomRenderer;->mValidTextureRegion:Landroid/graphics/Region;

    iget-object v2, p1, Lcom/android/browser/WebGLZoomRenderer$Tile;->mRect:Landroid/graphics/Rect;

    sget-object v3, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 2048
    monitor-exit v0

    .line 2057
    return-void

    .line 2048
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
