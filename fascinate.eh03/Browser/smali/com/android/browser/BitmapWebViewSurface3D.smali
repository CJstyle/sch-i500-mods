.class public Lcom/android/browser/BitmapWebViewSurface3D;
.super Landroid/opengl/GLSurfaceView;
.source "BitmapWebViewSurface3D.java"

# interfaces
.implements Lcom/android/browser/BitmapWebView$Surface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/BitmapWebViewSurface3D$Renderer;,
        Lcom/android/browser/BitmapWebViewSurface3D$TileQueue;
    }
.end annotation


# static fields
.field private static LOGTAG:Ljava/lang/String;


# instance fields
.field mBgBitmapH:I

.field mBgBitmapW:I

.field private mBgTextureID:I

.field private mBitmapBuffer:Ljava/nio/ByteBuffer;

.field mBitmapWebView:Lcom/android/browser/BitmapWebView;

.field private mCheckerBoardTextureID:I

.field private mColorVertices:Ljava/nio/FloatBuffer;

.field private final mColorVerticesData:[F

.field mCompressedTexEnable:Z

.field mContext:Landroid/content/Context;

.field private final mFragmentShader:Ljava/lang/String;

.field mGLThread:Ljava/lang/Thread;

.field mHeight:F

.field private mMMatrix:[F

.field private mMVPMatrix:[F

.field mOnUnloadExtraTextures:Z

.field private mProgram:I

.field private mProjMatrix:[F

.field mRenderer:Lcom/android/browser/BitmapWebViewSurface3D$Renderer;

.field private mTMatrix:[F

.field mTexTiles:[[I

.field mTextureIDs:[I

.field private mTextureMatrix:[F

.field mTextureScaleX:F

.field mTextureScaleY:F

.field private mTileQueue:Lcom/android/browser/BitmapWebViewSurface3D$TileQueue;

.field private mTitleBarTextureID:I

.field private mTriangleVertices:Ljava/nio/FloatBuffer;

.field private final mTriangleVerticesData:[F

.field private mVMatrix:[F

.field private final mVertexShader:Ljava/lang/String;

.field mWebView:Landroid/webkit/WebView;

.field mWidth:F

.field mZoomCenterGLX:F

.field mZoomCenterGLY:F

.field mZoomRegionLeft:I

.field mZoomRegionTop:I

.field private maColorHandle:I

.field private maPositionHandle:I

.field private maTextureHandle:I

.field private muMVPMatrixHandle:I

.field private muTextureMatrixHandle:I

.field private muUseColorHandle:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 115
    const-string v0, "BitmapWebView"

    sput-object v0, Lcom/android/browser/BitmapWebViewSurface3D;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/browser/BitmapWebView;)V
    .locals 6
    .parameter "context"
    .parameter "bitmapWebView"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/16 v2, 0x10

    .line 239
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 60
    const/16 v1, 0x14

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    .line 72
    const/16 v1, 0x1c

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mColorVerticesData:[F

    .line 85
    const-string v1, "uniform mat4 uMVPMatrix;\nuniform mat4 uTextureMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nattribute vec4 aColor;\nvarying vec4 vTextureCoord;\nvarying vec4 vColor;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = uTextureMatrix * aTextureCoord;\n  vColor=aColor;\n}\n"

    iput-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mVertexShader:Ljava/lang/String;

    .line 99
    const-string v1, "precision lowp float;\nvarying vec4 vTextureCoord;\nvarying vec4 vColor;\nuniform lowp sampler2D sTexture;\nuniform int uUseColor;\nvoid main() {\nif(uUseColor == 1)\n{\n gl_FragColor = vColor;\n}\nelse\n{\n gl_FragColor = texture2D(sTexture, vTextureCoord.st);\n}\n}\n"

    iput-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mFragmentShader:Ljava/lang/String;

    .line 122
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mMVPMatrix:[F

    .line 123
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTextureMatrix:[F

    .line 124
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mProjMatrix:[F

    .line 125
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mMMatrix:[F

    .line 126
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mVMatrix:[F

    .line 127
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTMatrix:[F

    .line 130
    iput v3, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mCheckerBoardTextureID:I

    .line 131
    iput v3, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTitleBarTextureID:I

    .line 132
    iput v3, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBgTextureID:I

    .line 140
    iput v5, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mZoomCenterGLX:F

    iput v5, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mZoomCenterGLY:F

    .line 157
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mGLThread:Ljava/lang/Thread;

    .line 158
    iput-boolean v4, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mCompressedTexEnable:Z

    .line 241
    iput-object p2, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    .line 242
    iput-object p1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mContext:Landroid/content/Context;

    .line 246
    iget-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVertices:Ljava/nio/FloatBuffer;

    .line 248
    iget-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVertices:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 249
    iget-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mColorVerticesData:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mColorVertices:Ljava/nio/FloatBuffer;

    .line 256
    iget-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget v1, v1, Lcom/android/browser/BitmapWebView;->mMaxExtraTexNum:I

    add-int/lit8 v1, v1, 0x60

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTextureIDs:[I

    .line 257
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget v1, v1, Lcom/android/browser/BitmapWebView;->mMaxExtraTexNum:I

    add-int/lit8 v1, v1, 0x60

    if-ge v0, v1, :cond_0

    .line 258
    iget-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTextureIDs:[I

    aput v3, v1, v0

    .line 257
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 260
    :cond_0
    new-instance v1, Lcom/android/browser/BitmapWebViewSurface3D$TileQueue;

    const/16 v2, 0xa

    invoke-direct {v1, p0, v2}, Lcom/android/browser/BitmapWebViewSurface3D$TileQueue;-><init>(Lcom/android/browser/BitmapWebViewSurface3D;I)V

    iput-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTileQueue:Lcom/android/browser/BitmapWebViewSurface3D$TileQueue;

    .line 262
    new-instance v1, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;

    invoke-direct {v1, p0}, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;-><init>(Lcom/android/browser/BitmapWebViewSurface3D;)V

    iput-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mRenderer:Lcom/android/browser/BitmapWebViewSurface3D$Renderer;

    .line 264
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/browser/BitmapWebViewSurface3D;->setEGLContextClientVersion(I)V

    .line 265
    iget-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mRenderer:Lcom/android/browser/BitmapWebViewSurface3D$Renderer;

    invoke-virtual {p0, v1}, Lcom/android/browser/BitmapWebViewSurface3D;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 266
    invoke-virtual {p0, v4}, Lcom/android/browser/BitmapWebViewSurface3D;->setRenderMode(I)V

    .line 269
    return-void

    .line 60
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

    .line 72
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/android/browser/BitmapWebViewSurface3D;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/browser/BitmapWebViewSurface3D;)Lcom/android/browser/BitmapWebViewSurface3D$TileQueue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTileQueue:Lcom/android/browser/BitmapWebViewSurface3D$TileQueue;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/browser/BitmapWebViewSurface3D;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->maTextureHandle:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/browser/BitmapWebViewSurface3D;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->maTextureHandle:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/browser/BitmapWebViewSurface3D;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->maColorHandle:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/browser/BitmapWebViewSurface3D;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->maColorHandle:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/browser/BitmapWebViewSurface3D;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->muUseColorHandle:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/browser/BitmapWebViewSurface3D;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->muUseColorHandle:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/browser/BitmapWebViewSurface3D;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mVMatrix:[F

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/browser/BitmapWebViewSurface3D;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTitleBarTextureID:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/browser/BitmapWebViewSurface3D;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTitleBarTextureID:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/browser/BitmapWebViewSurface3D;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBgTextureID:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/browser/BitmapWebViewSurface3D;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBgTextureID:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/browser/BitmapWebViewSurface3D;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mCheckerBoardTextureID:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/browser/BitmapWebViewSurface3D;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mCheckerBoardTextureID:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/browser/BitmapWebViewSurface3D;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/browser/BitmapWebViewSurface3D;->reloadExtraWebViewTextureGL(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/browser/BitmapWebViewSurface3D;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mMVPMatrix:[F

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/browser/BitmapWebViewSurface3D;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTextureMatrix:[F

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/browser/BitmapWebViewSurface3D;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->muMVPMatrixHandle:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/browser/BitmapWebViewSurface3D;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->muMVPMatrixHandle:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/browser/BitmapWebViewSurface3D;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->muTextureMatrixHandle:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/browser/BitmapWebViewSurface3D;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->muTextureMatrixHandle:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/browser/BitmapWebViewSurface3D;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mProjMatrix:[F

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/browser/BitmapWebViewSurface3D;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mProgram:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/browser/BitmapWebViewSurface3D;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mProgram:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/browser/BitmapWebViewSurface3D;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->maPositionHandle:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/browser/BitmapWebViewSurface3D;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->maPositionHandle:I

    return p1
.end method

.method private reloadExtraWebViewTextureGL(II)V
    .locals 13
    .parameter "tilenum"
    .parameter "from"

    .prologue
    const/16 v2, 0x1907

    const/16 v3, 0x100

    const/4 v1, 0x0

    const/high16 v12, 0x4618

    const/16 v0, 0xde1

    .line 397
    if-nez p1, :cond_1

    .line 442
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v9

    .line 401
    .local v9, count:I
    new-array v11, v9, [I

    .line 403
    .local v11, ids:[I
    if-gez p1, :cond_2

    .line 405
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTextureIDs:[I

    iget-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    add-int/lit8 v1, p2, 0x60

    sub-int/2addr v1, v9

    invoke-static {v9, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    goto :goto_0

    .line 410
    :cond_2
    iget-object v4, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTextureIDs:[I

    iget-object v5, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    add-int/lit8 v5, p2, 0x60

    invoke-static {v9, v4, v5}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 413
    iget-object v4, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    add-int/lit8 v10, p2, 0x60

    .local v10, i:I
    :goto_1
    iget-object v4, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    add-int/lit8 v4, p2, 0x60

    add-int/2addr v4, v9

    if-ge v10, v4, :cond_0

    .line 415
    iget-object v4, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTextureIDs:[I

    aget v4, v4, v10

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 418
    const/16 v4, 0x2801

    invoke-static {v0, v4, v12}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 421
    const/16 v4, 0x2800

    invoke-static {v0, v4, v12}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 426
    const/16 v4, 0x2802

    const/16 v5, 0x2901

    invoke-static {v0, v4, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 429
    const/16 v4, 0x2803

    const/16 v5, 0x2901

    invoke-static {v0, v4, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 433
    iget-object v4, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget-object v4, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    const v7, 0x8363

    const/4 v8, 0x0

    move v4, v3

    move v5, v1

    move v6, v2

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 413
    add-int/lit8 v10, v10, 0x1

    goto :goto_1
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTileQueue:Lcom/android/browser/BitmapWebViewSurface3D$TileQueue;

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTileQueue:Lcom/android/browser/BitmapWebViewSurface3D$TileQueue;

    invoke-virtual {v0}, Lcom/android/browser/BitmapWebViewSurface3D$TileQueue;->destroy()V

    .line 677
    :cond_0
    return-void
.end method

.method public draw(FFF)V
    .locals 2
    .parameter "zoomcx"
    .parameter "zoomcy"
    .parameter "scale"

    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    int-to-float v0, v0

    invoke-virtual {p0, p1, v0}, Lcom/android/browser/BitmapWebViewSurface3D;->toGLX(FF)F

    move-result v0

    iput v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mZoomCenterGLX:F

    .line 626
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    int-to-float v0, v0

    invoke-virtual {p0, p2, v0}, Lcom/android/browser/BitmapWebViewSurface3D;->toGLY(FF)F

    move-result v0

    iput v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mZoomCenterGLY:F

    .line 627
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    float-to-int v1, p1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget v1, v1, Lcom/android/browser/BitmapWebView;->mTextureWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mZoomRegionLeft:I

    .line 628
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    float-to-int v1, p2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget v1, v1, Lcom/android/browser/BitmapWebView;->mTextureHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mZoomRegionTop:I

    .line 631
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebViewSurface3D;->requestRender()V

    .line 633
    return-void
.end method

.method drawBg()V
    .locals 14

    .prologue
    const/4 v13, 0x5

    const/4 v12, 0x4

    const/4 v1, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 833
    const/high16 v7, -0x4080

    .line 834
    .local v7, glLeft:F
    const/high16 v9, 0x3f80

    .line 835
    .local v9, glTop:F
    const/high16 v8, 0x3f80

    .line 836
    .local v8, glRight:F
    const/high16 v6, -0x4080

    .line 837
    .local v6, glBottom:F
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    int-to-float v0, v0

    iget v2, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBgBitmapW:I

    int-to-float v2, v2

    div-float v11, v0, v2

    .line 838
    .local v11, texRight:F
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    int-to-float v0, v0

    iget v2, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBgBitmapH:I

    int-to-float v2, v2

    div-float v10, v0, v2

    .line 841
    .local v10, texBottom:F
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    aput v7, v0, v3

    .line 842
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    const/4 v2, 0x1

    aput v9, v0, v2

    .line 843
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    aput v4, v0, v1

    .line 844
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    aput v4, v0, v12

    .line 846
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    aput v8, v0, v13

    .line 847
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    const/4 v2, 0x6

    aput v9, v0, v2

    .line 848
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    const/16 v2, 0x8

    aput v11, v0, v2

    .line 849
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    const/16 v2, 0x9

    aput v4, v0, v2

    .line 851
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    const/16 v2, 0xa

    aput v7, v0, v2

    .line 852
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    const/16 v2, 0xb

    aput v6, v0, v2

    .line 853
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    const/16 v2, 0xd

    aput v4, v0, v2

    .line 854
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    const/16 v2, 0xe

    aput v10, v0, v2

    .line 856
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    const/16 v2, 0xf

    aput v8, v0, v2

    .line 857
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    const/16 v2, 0x10

    aput v6, v0, v2

    .line 858
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    const/16 v2, 0x12

    aput v11, v0, v2

    .line 859
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    const/16 v2, 0x13

    aput v10, v0, v2

    .line 861
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 862
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVertices:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 864
    const/16 v0, 0xde1

    iget v2, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBgTextureID:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 866
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 867
    iget v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->maPositionHandle:I

    const/16 v2, 0x1406

    const/16 v4, 0x14

    iget-object v5, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 871
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 872
    iget v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->maPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 874
    iget v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->maTextureHandle:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/16 v4, 0x14

    iget-object v5, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 877
    iget v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->maTextureHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 880
    invoke-static {v13, v3, v12}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 884
    return-void
.end method

.method drawCheckerBoard()V
    .locals 21

    .prologue
    .line 889
    const/4 v14, 0x0

    .line 890
    .local v14, left:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/browser/BitmapWebView;->getTitleBarHeight()I

    move-result v3

    move v0, v3

    int-to-float v0, v0

    move/from16 v18, v0

    .line 891
    .local v18, top:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    iget v3, v3, Lcom/android/browser/BitmapWebView;->mContentsWidth:I

    int-to-float v15, v3

    .line 892
    .local v15, right:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    iget v3, v3, Lcom/android/browser/BitmapWebView;->mContentsHeight:I

    int-to-float v9, v3

    .line 893
    .local v9, bottom:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mZoomRegionLeft:I

    move v3, v0

    move v0, v3

    int-to-float v0, v0

    move/from16 v19, v0

    .line 894
    .local v19, zoomLeft:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mZoomRegionTop:I

    move v3, v0

    move v0, v3

    int-to-float v0, v0

    move/from16 v20, v0

    .line 895
    .local v20, zoomTop:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    const/high16 v3, 0x4280

    div-float v3, v15, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    iget v4, v4, Lcom/android/browser/BitmapWebView;->mZoomScale:F

    mul-float v17, v3, v4

    .line 896
    .local v17, textCoordRight:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    const/high16 v3, 0x4280

    div-float v3, v9, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    iget v4, v4, Lcom/android/browser/BitmapWebView;->mZoomScale:F

    mul-float v16, v3, v4

    .line 899
    .local v16, textCoordBottom:F
    sub-float v3, v14, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    iget v4, v4, Lcom/android/browser/BitmapWebView;->mTextureWidth:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/BitmapWebViewSurface3D;->toGLX(FF)F

    move-result v11

    .line 900
    .local v11, glLeft:F
    sub-float v3, v18, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    iget v4, v4, Lcom/android/browser/BitmapWebView;->mTextureHeight:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/BitmapWebViewSurface3D;->toGLY(FF)F

    move-result v13

    .line 901
    .local v13, glTop:F
    sub-float v3, v15, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    iget v4, v4, Lcom/android/browser/BitmapWebView;->mTextureWidth:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/BitmapWebViewSurface3D;->toGLX(FF)F

    move-result v12

    .line 902
    .local v12, glRight:F
    sub-float v3, v9, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    iget v4, v4, Lcom/android/browser/BitmapWebView;->mTextureHeight:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/BitmapWebViewSurface3D;->toGLY(FF)F

    move-result v10

    .line 909
    .local v10, glBottom:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v3, v0

    const/4 v4, 0x0

    aput v11, v3, v4

    .line 910
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v3, v0

    const/4 v4, 0x1

    aput v13, v3, v4

    .line 911
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v3, v0

    const/4 v4, 0x3

    const/4 v5, 0x0

    aput v5, v3, v4

    .line 912
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v3, v0

    const/4 v4, 0x4

    const/4 v5, 0x0

    aput v5, v3, v4

    .line 914
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v3, v0

    const/4 v4, 0x5

    aput v12, v3, v4

    .line 915
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v3, v0

    const/4 v4, 0x6

    aput v13, v3, v4

    .line 916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v3, v0

    const/16 v4, 0x8

    aput v17, v3, v4

    .line 917
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v3, v0

    const/16 v4, 0x9

    const/4 v5, 0x0

    aput v5, v3, v4

    .line 919
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v3, v0

    const/16 v4, 0xa

    aput v11, v3, v4

    .line 920
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v3, v0

    const/16 v4, 0xb

    aput v10, v3, v4

    .line 921
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v3, v0

    const/16 v4, 0xd

    const/4 v5, 0x0

    aput v5, v3, v4

    .line 922
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v3, v0

    const/16 v4, 0xe

    aput v16, v3, v4

    .line 924
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v3, v0

    const/16 v4, 0xf

    aput v12, v3, v4

    .line 925
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v3, v0

    const/16 v4, 0x10

    aput v10, v3, v4

    .line 926
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v3, v0

    const/16 v4, 0x12

    aput v17, v3, v4

    .line 927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v3, v0

    const/16 v4, 0x13

    aput v16, v3, v4

    .line 929
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVertices:Ljava/nio/FloatBuffer;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 930
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVertices:Ljava/nio/FloatBuffer;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 932
    const/16 v3, 0xde1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mCheckerBoardTextureID:I

    move v4, v0

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 934
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVertices:Ljava/nio/FloatBuffer;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 935
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->maPositionHandle:I

    move v3, v0

    const/4 v4, 0x3

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/16 v7, 0x14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVertices:Ljava/nio/FloatBuffer;

    move-object v8, v0

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 939
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVertices:Ljava/nio/FloatBuffer;

    move-object v3, v0

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 940
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->maPositionHandle:I

    move v3, v0

    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 942
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->maTextureHandle:I

    move v3, v0

    const/4 v4, 0x2

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/16 v7, 0x14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVertices:Ljava/nio/FloatBuffer;

    move-object v8, v0

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 945
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->maTextureHandle:I

    move v3, v0

    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 948
    const/4 v3, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-static {v3, v4, v5}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 951
    return-void
.end method

.method drawRect(Landroid/graphics/Rect;)V
    .locals 41
    .parameter "rect"

    .prologue
    .line 960
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    move v0, v3

    div-int/lit16 v0, v0, 0x100

    move/from16 v21, v0

    .line 962
    .local v21, lx:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    move v0, v3

    div-int/lit16 v0, v0, 0x100

    move/from16 v27, v0

    .line 963
    .local v27, rx:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    move v0, v3

    div-int/lit16 v0, v0, 0x100

    move/from16 v38, v0

    .line 964
    .local v38, ty:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    div-int/lit16 v11, v3, 0x100

    .line 968
    .local v11, by:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    iget v4, v4, Lcom/android/browser/BitmapWebView;->mTextureWidth:I

    rem-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    move v0, v3

    div-int/lit16 v0, v0, 0x100

    move/from16 v28, v0

    .line 969
    .local v28, shiftx:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    iget v4, v4, Lcom/android/browser/BitmapWebView;->mTextureHeight:I

    rem-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    move v0, v3

    div-int/lit16 v0, v0, 0x100

    move/from16 v29, v0

    .line 980
    .local v29, shifty:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    move/from16 v0, v21

    mul-int/lit16 v0, v0, 0x100

    move v4, v0

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mZoomRegionLeft:I

    move v4, v0

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    iget v4, v4, Lcom/android/browser/BitmapWebView;->mTextureWidth:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/BitmapWebViewSurface3D;->toGLX(FF)F

    move-result v16

    .line 981
    .local v16, glLeft:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    move/from16 v0, v38

    mul-int/lit16 v0, v0, 0x100

    move v4, v0

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mZoomRegionTop:I

    move v4, v0

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    iget v4, v4, Lcom/android/browser/BitmapWebView;->mTextureHeight:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/BitmapWebViewSurface3D;->toGLY(FF)F

    move-result v19

    .line 983
    .local v19, glTop:F
    const/high16 v3, 0x4000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    const/high16 v4, 0x4380

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v5, v0

    iget v5, v5, Lcom/android/browser/BitmapWebView;->mTextureWidth:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float v18, v3, v4

    .line 984
    .local v18, glTileW:F
    const/high16 v3, 0x4000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    const/high16 v4, 0x4380

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v5, v0

    iget v5, v5, Lcom/android/browser/BitmapWebView;->mTextureHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float v17, v3, v4

    .line 990
    .local v17, glTileH:F
    const/16 v24, 0x0

    .line 991
    .local v24, removeTopEdge:Z
    const/high16 v13, -0x4080

    .line 992
    .local v13, glEdgeTop:F
    const/high16 v34, -0x4080

    .line 993
    .local v34, texTop:F
    const/high16 v14, -0x4080

    .line 994
    .local v14, glEdgeTopH:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    move/from16 v0, v38

    mul-int/lit16 v0, v0, 0x100

    move v4, v0

    add-int v37, v3, v4

    .line 995
    .local v37, topEdge:I
    if-nez v37, :cond_0

    .line 997
    const/16 v24, 0x1

    .line 998
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/browser/BitmapWebView;->getTitleBarHeight()I

    move-result v35

    .line 999
    .local v35, titleH:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mZoomRegionTop:I

    move v3, v0

    sub-int v3, v35, v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    iget v4, v4, Lcom/android/browser/BitmapWebView;->mTextureHeight:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/BitmapWebViewSurface3D;->toGLY(FF)F

    move-result v13

    .line 1000
    move/from16 v0, v35

    int-to-float v0, v0

    move v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    const/high16 v4, 0x4380

    div-float v34, v3, v4

    .line 1001
    const/high16 v3, 0x4000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    const/16 v4, 0x100

    sub-int v4, v4, v35

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v5, v0

    iget v5, v5, Lcom/android/browser/BitmapWebView;->mTextureHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float v14, v3, v4

    .line 1005
    .end local v35           #titleH:I
    :cond_0
    const/16 v23, 0x0

    .line 1006
    .local v23, removeRightEdge:Z
    const/high16 v15, -0x4080

    .line 1007
    .local v15, glEdgeW:F
    const/high16 v33, -0x4080

    .line 1008
    .local v33, texRight:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    move/from16 v0, v27

    mul-int/lit16 v0, v0, 0x100

    move v4, v0

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    move v0, v3

    add-int/lit16 v0, v0, 0x100

    move/from16 v26, v0

    .line 1009
    .local v26, rightEdge:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    iget v3, v3, Lcom/android/browser/BitmapWebView;->mContentsWidth:I

    move/from16 v0, v26

    move v1, v3

    if-le v0, v1, :cond_1

    .line 1011
    const/16 v23, 0x1

    .line 1012
    const/high16 v3, 0x4000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    iget v4, v4, Lcom/android/browser/BitmapWebView;->mContentsWidth:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v5, v0

    const/16 v5, 0x100

    sub-int v5, v26, v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v5, v0

    iget v5, v5, Lcom/android/browser/BitmapWebView;->mTextureWidth:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float v15, v3, v4

    .line 1013
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    iget v3, v3, Lcom/android/browser/BitmapWebView;->mContentsWidth:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    const/16 v4, 0x100

    sub-int v4, v26, v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    const/high16 v4, 0x4380

    div-float v33, v3, v4

    .line 1017
    :cond_1
    const/16 v22, 0x0

    .line 1018
    .local v22, removeBottomEdge:Z
    const/high16 v12, -0x4080

    .line 1019
    .local v12, glEdgeH:F
    const/high16 v32, -0x4080

    .line 1020
    .local v32, texBottom:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    mul-int/lit16 v4, v11, 0x100

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    add-int/lit16 v10, v3, 0x100

    .line 1021
    .local v10, bottomEdge:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    iget v3, v3, Lcom/android/browser/BitmapWebView;->mContentsHeight:I

    if-le v10, v3, :cond_2

    .line 1023
    const/16 v22, 0x1

    .line 1024
    const/high16 v3, 0x4000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    iget v4, v4, Lcom/android/browser/BitmapWebView;->mContentsHeight:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v5, v0

    const/16 v5, 0x100

    sub-int v5, v10, v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v5, v0

    iget v5, v5, Lcom/android/browser/BitmapWebView;->mTextureHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float v12, v3, v4

    .line 1025
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    iget v3, v3, Lcom/android/browser/BitmapWebView;->mContentsHeight:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    const/16 v4, 0x100

    sub-int v4, v10, v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    const/high16 v4, 0x4380

    div-float v32, v3, v4

    .line 1029
    :cond_2
    move/from16 v39, v21

    .local v39, x:I
    :goto_0
    move/from16 v0, v39

    move/from16 v1, v27

    if-gt v0, v1, :cond_10

    .line 1030
    move/from16 v40, v38

    .local v40, y:I
    :goto_1
    move/from16 v0, v40

    move v1, v11

    if-gt v0, v1, :cond_f

    .line 1032
    add-int v3, v39, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    iget v4, v4, Lcom/android/browser/BitmapWebView;->mTileNumX:I

    rem-int v30, v3, v4

    .line 1033
    .local v30, targetx:I
    add-int v3, v40, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    iget v4, v4, Lcom/android/browser/BitmapWebView;->mTileNumY:I

    rem-int v31, v3, v4

    .line 1035
    .local v31, targety:I
    if-ltz v30, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    iget v3, v3, Lcom/android/browser/BitmapWebView;->mTileNumX:I

    move/from16 v0, v30

    move v1, v3

    if-ge v0, v1, :cond_3

    if-ltz v31, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    iget v3, v3, Lcom/android/browser/BitmapWebView;->mTileNumY:I

    move/from16 v0, v31

    move v1, v3

    if-lt v0, v1, :cond_4

    .line 1030
    :cond_3
    :goto_2
    add-int/lit8 v40, v40, 0x1

    goto :goto_1

    .line 1042
    :cond_4
    sub-int v3, v39, v21

    int-to-float v3, v3

    mul-float v3, v3, v18

    add-float v20, v16, v3

    .line 1043
    .local v20, left:F
    move/from16 v0, v39

    move/from16 v1, v27

    if-ne v0, v1, :cond_5

    const/4 v3, 0x1

    move/from16 v0, v23

    move v1, v3

    if-ne v0, v1, :cond_5

    .line 1044
    add-float v25, v20, v15

    .line 1048
    .local v25, right:F
    :goto_3
    if-nez v40, :cond_6

    const/4 v3, 0x1

    move/from16 v0, v24

    move v1, v3

    if-ne v0, v1, :cond_6

    .line 1049
    move/from16 v36, v13

    .line 1053
    .local v36, top:F
    :goto_4
    if-nez v40, :cond_7

    const/4 v3, 0x1

    move/from16 v0, v24

    move v1, v3

    if-ne v0, v1, :cond_7

    .line 1055
    sub-float v9, v36, v14

    .line 1064
    .local v9, bottom:F
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v3, v0

    const/4 v4, 0x0

    aput v20, v3, v4

    .line 1065
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v3, v0

    const/4 v4, 0x1

    aput v36, v3, v4

    .line 1066
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v3, v0

    const/4 v4, 0x3

    const/4 v5, 0x0

    aput v5, v3, v4

    .line 1067
    if-nez v40, :cond_9

    const/4 v3, 0x1

    move/from16 v0, v24

    move v1, v3

    if-ne v0, v1, :cond_9

    .line 1068
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v3, v0

    const/4 v4, 0x4

    aput v34, v3, v4

    .line 1072
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v3, v0

    const/4 v4, 0x5

    aput v25, v3, v4

    .line 1073
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v3, v0

    const/4 v4, 0x6

    aput v36, v3, v4

    .line 1074
    move/from16 v0, v39

    move/from16 v1, v27

    if-ne v0, v1, :cond_a

    const/4 v3, 0x1

    move/from16 v0, v23

    move v1, v3

    if-ne v0, v1, :cond_a

    .line 1075
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v3, v0

    const/16 v4, 0x8

    aput v33, v3, v4

    .line 1078
    :goto_7
    if-nez v40, :cond_b

    const/4 v3, 0x1

    move/from16 v0, v24

    move v1, v3

    if-ne v0, v1, :cond_b

    .line 1079
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v3, v0

    const/16 v4, 0x9

    aput v34, v3, v4

    .line 1083
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v3, v0

    const/16 v4, 0xa

    aput v20, v3, v4

    .line 1084
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v3, v0

    const/16 v4, 0xb

    aput v9, v3, v4

    .line 1085
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v3, v0

    const/16 v4, 0xd

    const/4 v5, 0x0

    aput v5, v3, v4

    .line 1086
    move/from16 v0, v40

    move v1, v11

    if-ne v0, v1, :cond_c

    const/4 v3, 0x1

    move/from16 v0, v22

    move v1, v3

    if-ne v0, v1, :cond_c

    .line 1087
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v3, v0

    const/16 v4, 0xe

    aput v32, v3, v4

    .line 1091
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v3, v0

    const/16 v4, 0xf

    aput v25, v3, v4

    .line 1092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v3, v0

    const/16 v4, 0x10

    aput v9, v3, v4

    .line 1093
    move/from16 v0, v39

    move/from16 v1, v27

    if-ne v0, v1, :cond_d

    const/4 v3, 0x1

    move/from16 v0, v23

    move v1, v3

    if-ne v0, v1, :cond_d

    .line 1094
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v3, v0

    const/16 v4, 0x12

    aput v33, v3, v4

    .line 1097
    :goto_a
    move/from16 v0, v40

    move v1, v11

    if-ne v0, v1, :cond_e

    const/4 v3, 0x1

    move/from16 v0, v22

    move v1, v3

    if-ne v0, v1, :cond_e

    .line 1098
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v3, v0

    const/16 v4, 0x13

    aput v32, v3, v4

    .line 1102
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVertices:Ljava/nio/FloatBuffer;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVertices:Ljava/nio/FloatBuffer;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1106
    const/16 v3, 0xde1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTexTiles:[[I

    move-object v4, v0

    aget-object v4, v4, v31

    aget v4, v4, v30

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVertices:Ljava/nio/FloatBuffer;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1111
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->maPositionHandle:I

    move v3, v0

    const/4 v4, 0x3

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/16 v7, 0x14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVertices:Ljava/nio/FloatBuffer;

    move-object v8, v0

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVertices:Ljava/nio/FloatBuffer;

    move-object v3, v0

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1116
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->maPositionHandle:I

    move v3, v0

    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1118
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->maTextureHandle:I

    move v3, v0

    const/4 v4, 0x2

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/16 v7, 0x14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVertices:Ljava/nio/FloatBuffer;

    move-object v8, v0

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1121
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->maTextureHandle:I

    move v3, v0

    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1124
    const/4 v3, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-static {v3, v4, v5}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    goto/16 :goto_2

    .line 1046
    .end local v9           #bottom:F
    .end local v25           #right:F
    .end local v36           #top:F
    :cond_5
    add-float v25, v20, v18

    .restart local v25       #right:F
    goto/16 :goto_3

    .line 1051
    :cond_6
    sub-int v3, v40, v38

    int-to-float v3, v3

    mul-float v3, v3, v17

    sub-float v36, v19, v3

    .restart local v36       #top:F
    goto/16 :goto_4

    .line 1057
    :cond_7
    move/from16 v0, v40

    move v1, v11

    if-ne v0, v1, :cond_8

    const/4 v3, 0x1

    move/from16 v0, v22

    move v1, v3

    if-ne v0, v1, :cond_8

    .line 1058
    sub-float v9, v36, v12

    .restart local v9       #bottom:F
    goto/16 :goto_5

    .line 1060
    .end local v9           #bottom:F
    :cond_8
    sub-float v9, v36, v17

    .restart local v9       #bottom:F
    goto/16 :goto_5

    .line 1070
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v3, v0

    const/4 v4, 0x4

    const/4 v5, 0x0

    aput v5, v3, v4

    goto/16 :goto_6

    .line 1077
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v3, v0

    const/16 v4, 0x8

    const/high16 v5, 0x3f80

    aput v5, v3, v4

    goto/16 :goto_7

    .line 1081
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v3, v0

    const/16 v4, 0x9

    const/4 v5, 0x0

    aput v5, v3, v4

    goto/16 :goto_8

    .line 1089
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v3, v0

    const/16 v4, 0xe

    const/high16 v5, 0x3f80

    aput v5, v3, v4

    goto/16 :goto_9

    .line 1096
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v3, v0

    const/16 v4, 0x12

    const/high16 v5, 0x3f80

    aput v5, v3, v4

    goto/16 :goto_a

    .line 1100
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v3, v0

    const/16 v4, 0x13

    const/high16 v5, 0x3f80

    aput v5, v3, v4

    goto/16 :goto_b

    .line 1029
    .end local v9           #bottom:F
    .end local v20           #left:F
    .end local v25           #right:F
    .end local v30           #targetx:I
    .end local v31           #targety:I
    .end local v36           #top:F
    :cond_f
    add-int/lit8 v39, v39, 0x1

    goto/16 :goto_0

    .line 1132
    .end local v40           #y:I
    :cond_10
    return-void
.end method

.method drawScrollbar()V
    .locals 23

    .prologue
    .line 1197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mMVPMatrix:[F

    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 1198
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->muMVPMatrixHandle:I

    move v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mMVPMatrix:[F

    move-object v4, v0

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 1200
    const/16 v1, 0xbe2

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 1201
    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 1203
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->muUseColorHandle:I

    move v1, v0

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 1204
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->maColorHandle:I

    move v1, v0

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 1206
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->maColorHandle:I

    move v1, v0

    const v2, 0x3c23d70a

    const v3, 0x3c23d70a

    const v4, 0x3c23d70a

    const/high16 v5, 0x3f00

    invoke-static {v1, v2, v3, v4, v5}, Landroid/opengl/GLES20;->glVertexAttrib4f(IFFFF)V

    .line 1208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v1, v0

    iget v1, v1, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v2, v0

    iget v2, v2, Lcom/android/browser/BitmapWebView;->mContentsHeight:I

    if-ge v1, v2, :cond_2

    .line 1210
    const/high16 v1, 0x4000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v2, v0

    iget v2, v2, Lcom/android/browser/BitmapWebView;->mScrollBarPadding:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    iget v3, v3, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v12, v1, v2

    .line 1212
    .local v12, paddingV:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/android/browser/BitmapWebView;->getTitleBarHeight()I

    move-result v1

    move v0, v1

    int-to-float v0, v0

    move/from16 v17, v0

    .line 1213
    .local v17, titleBarH:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v1, v0

    iget v1, v1, Lcom/android/browser/BitmapWebView;->mContentsHeight:I

    int-to-float v1, v1

    sub-float v7, v1, v17

    .line 1215
    .local v7, contentsHeight:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v1, v0

    iget v1, v1, Lcom/android/browser/BitmapWebView;->mViewTop:I

    move v0, v1

    int-to-float v0, v0

    move/from16 v20, v0

    .line 1216
    .local v20, viewtop:F
    const/4 v14, 0x0

    .line 1217
    .local v14, tensiony:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v1, v0

    iget v1, v1, Lcom/android/browser/BitmapWebView;->mViewTop:I

    if-gez v1, :cond_5

    .line 1219
    const/high16 v1, 0x4000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v2, v0

    iget v2, v2, Lcom/android/browser/BitmapWebView;->mViewTop:I

    neg-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    iget v3, v3, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v14, v1, v2

    .line 1220
    const/16 v20, 0x0

    .line 1229
    :cond_0
    :goto_0
    const/16 v21, 0x0

    .line 1231
    .local v21, visibleTitleBarH:F
    sub-float v1, v20, v17

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 1232
    sub-float v1, v20, v17

    move v0, v1

    neg-float v0, v0

    move/from16 v21, v0

    .line 1233
    :cond_1
    const/high16 v1, 0x4000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v2, v0

    iget v2, v2, Lcom/android/browser/BitmapWebView;->mScrollBarThickness:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    iget v3, v3, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v16, v1, v2

    .line 1236
    .local v16, thicknessV:F
    const/high16 v1, 0x4000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v2, v0

    iget v2, v2, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    int-to-float v2, v2

    div-float v2, v21, v2

    mul-float v8, v1, v2

    .line 1237
    .local v8, glVisibletitleh:F
    const/high16 v1, 0x4000

    sub-float/2addr v1, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v2, v0

    iget v2, v2, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    int-to-float v2, v2

    sub-float v2, v2, v21

    div-float/2addr v2, v7

    mul-float v9, v1, v2

    .line 1238
    .local v9, height:F
    const/high16 v1, 0x3f80

    sub-float/2addr v1, v8

    const/high16 v2, 0x4000

    sub-float v3, v17, v21

    sub-float v3, v20, v3

    div-float/2addr v3, v7

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    sub-float v18, v1, v14

    .line 1241
    .local v18, top:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v1, v0

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    sub-float v3, v3, v16

    sub-float/2addr v3, v12

    aput v3, v1, v2

    .line 1242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v1, v0

    const/4 v2, 0x1

    aput v18, v1, v2

    .line 1245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v1, v0

    const/4 v2, 0x5

    const/high16 v3, 0x3f80

    sub-float/2addr v3, v12

    aput v3, v1, v2

    .line 1246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v1, v0

    const/4 v2, 0x6

    aput v18, v1, v2

    .line 1249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v1, v0

    const/16 v2, 0xa

    const/high16 v3, 0x3f80

    sub-float v3, v3, v16

    sub-float/2addr v3, v12

    aput v3, v1, v2

    .line 1250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v1, v0

    const/16 v2, 0xb

    sub-float v3, v18, v9

    aput v3, v1, v2

    .line 1253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v1, v0

    const/16 v2, 0xf

    const/high16 v3, 0x3f80

    sub-float/2addr v3, v12

    aput v3, v1, v2

    .line 1254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v1, v0

    const/16 v2, 0x10

    sub-float v3, v18, v9

    aput v3, v1, v2

    .line 1257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVertices:Ljava/nio/FloatBuffer;

    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVertices:Ljava/nio/FloatBuffer;

    move-object v1, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVertices:Ljava/nio/FloatBuffer;

    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1261
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->maPositionHandle:I

    move v1, v0

    const/4 v2, 0x3

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0x14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVertices:Ljava/nio/FloatBuffer;

    move-object v6, v0

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1266
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 1271
    .end local v7           #contentsHeight:F
    .end local v8           #glVisibletitleh:F
    .end local v9           #height:F
    .end local v12           #paddingV:F
    .end local v14           #tensiony:F
    .end local v16           #thicknessV:F
    .end local v17           #titleBarH:F
    .end local v18           #top:F
    .end local v20           #viewtop:F
    .end local v21           #visibleTitleBarH:F
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v1, v0

    iget v1, v1, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v2, v0

    iget v2, v2, Lcom/android/browser/BitmapWebView;->mContentsWidth:I

    if-ge v1, v2, :cond_4

    .line 1273
    const/high16 v1, 0x4000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v2, v0

    iget v2, v2, Lcom/android/browser/BitmapWebView;->mScrollBarPadding:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    iget v3, v3, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v11, v1, v2

    .line 1274
    .local v11, paddingH:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v1, v0

    iget v1, v1, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    move v0, v1

    int-to-float v0, v0

    move/from16 v19, v0

    .line 1275
    .local v19, viewleft:F
    const/4 v13, 0x0

    .line 1276
    .local v13, tensionx:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v1, v0

    iget v1, v1, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    if-gez v1, :cond_6

    .line 1279
    const/high16 v1, 0x4000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v2, v0

    iget v2, v2, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    neg-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    iget v3, v3, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v13, v1, v2

    .line 1280
    const/16 v19, 0x0

    .line 1288
    :cond_3
    :goto_1
    const/high16 v1, 0x4000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v2, v0

    iget v2, v2, Lcom/android/browser/BitmapWebView;->mScrollBarThickness:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    iget v3, v3, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v15, v1, v2

    .line 1289
    .local v15, thicknessH:F
    const/high16 v1, 0x4000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v2, v0

    iget v2, v2, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    iget v3, v3, Lcom/android/browser/BitmapWebView;->mContentsWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v22, v1, v2

    .line 1290
    .local v22, width:F
    const/high16 v1, -0x4080

    const/high16 v2, 0x4000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    iget v3, v3, Lcom/android/browser/BitmapWebView;->mContentsWidth:I

    int-to-float v3, v3

    div-float v3, v19, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float v10, v1, v13

    .line 1295
    .local v10, left:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v1, v0

    const/4 v2, 0x0

    aput v10, v1, v2

    .line 1296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v1, v0

    const/4 v2, 0x1

    const/high16 v3, -0x4080

    add-float/2addr v3, v15

    add-float/2addr v3, v11

    aput v3, v1, v2

    .line 1299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v1, v0

    const/4 v2, 0x5

    add-float v3, v10, v22

    aput v3, v1, v2

    .line 1300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v1, v0

    const/4 v2, 0x6

    const/high16 v3, -0x4080

    add-float/2addr v3, v15

    add-float/2addr v3, v11

    aput v3, v1, v2

    .line 1303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v1, v0

    const/16 v2, 0xa

    aput v10, v1, v2

    .line 1304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v1, v0

    const/16 v2, 0xb

    const/high16 v3, -0x4080

    add-float/2addr v3, v11

    aput v3, v1, v2

    .line 1307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v1, v0

    const/16 v2, 0xf

    add-float v3, v10, v22

    aput v3, v1, v2

    .line 1308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v1, v0

    const/16 v2, 0x10

    const/high16 v3, -0x4080

    add-float/2addr v3, v11

    aput v3, v1, v2

    .line 1311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVertices:Ljava/nio/FloatBuffer;

    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVertices:Ljava/nio/FloatBuffer;

    move-object v1, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVertices:Ljava/nio/FloatBuffer;

    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1315
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->maPositionHandle:I

    move v1, v0

    const/4 v2, 0x3

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0x14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVertices:Ljava/nio/FloatBuffer;

    move-object v6, v0

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1320
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 1324
    .end local v10           #left:F
    .end local v11           #paddingH:F
    .end local v13           #tensionx:F
    .end local v15           #thicknessH:F
    .end local v19           #viewleft:F
    .end local v22           #width:F
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->muUseColorHandle:I

    move v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 1325
    const/16 v1, 0xbe2

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 1326
    return-void

    .line 1222
    .restart local v7       #contentsHeight:F
    .restart local v12       #paddingV:F
    .restart local v14       #tensiony:F
    .restart local v17       #titleBarH:F
    .restart local v20       #viewtop:F
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v1, v0

    iget v1, v1, Lcom/android/browser/BitmapWebView;->mViewTop:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v2, v0

    iget v2, v2, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v2, v0

    iget v2, v2, Lcom/android/browser/BitmapWebView;->mContentsHeight:I

    if-le v1, v2, :cond_0

    .line 1224
    const/high16 v1, 0x4000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v2, v0

    iget v2, v2, Lcom/android/browser/BitmapWebView;->mViewTop:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    iget v3, v3, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    iget v3, v3, Lcom/android/browser/BitmapWebView;->mContentsHeight:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    iget v3, v3, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v14, v1, v2

    .line 1225
    neg-float v14, v14

    .line 1226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v1, v0

    iget v1, v1, Lcom/android/browser/BitmapWebView;->mContentsHeight:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v2, v0

    iget v2, v2, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    sub-int/2addr v1, v2

    move v0, v1

    int-to-float v0, v0

    move/from16 v20, v0

    goto/16 :goto_0

    .line 1282
    .end local v7           #contentsHeight:F
    .end local v12           #paddingV:F
    .end local v14           #tensiony:F
    .end local v17           #titleBarH:F
    .end local v20           #viewtop:F
    .restart local v11       #paddingH:F
    .restart local v13       #tensionx:F
    .restart local v19       #viewleft:F
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v1, v0

    iget v1, v1, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v2, v0

    iget v2, v2, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v2, v0

    iget v2, v2, Lcom/android/browser/BitmapWebView;->mContentsWidth:I

    if-le v1, v2, :cond_3

    .line 1284
    const/high16 v1, 0x4000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v2, v0

    iget v2, v2, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    iget v3, v3, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    iget v3, v3, Lcom/android/browser/BitmapWebView;->mContentsWidth:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    iget v3, v3, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v13, v1, v2

    .line 1285
    neg-float v13, v13

    .line 1286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v1, v0

    iget v1, v1, Lcom/android/browser/BitmapWebView;->mContentsWidth:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v2, v0

    iget v2, v2, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    sub-int/2addr v1, v2

    move v0, v1

    int-to-float v0, v0

    move/from16 v19, v0

    goto/16 :goto_1
.end method

.method drawShadow()V
    .locals 37

    .prologue
    .line 703
    const/16 v20, 0x0

    .line 704
    .local v20, left:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/browser/BitmapWebView;->getTitleBarHeight()I

    move-result v3

    move v0, v3

    int-to-float v0, v0

    move/from16 v33, v0

    .line 705
    .local v33, top:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    iget v3, v3, Lcom/android/browser/BitmapWebView;->mContentsWidth:I

    move v0, v3

    int-to-float v0, v0

    move/from16 v27, v0

    .line 706
    .local v27, right:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    iget v3, v3, Lcom/android/browser/BitmapWebView;->mContentsHeight:I

    int-to-float v9, v3

    .line 707
    .local v9, bottom:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mZoomRegionLeft:I

    move v3, v0

    move v0, v3

    int-to-float v0, v0

    move/from16 v35, v0

    .line 708
    .local v35, zoomLeft:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mZoomRegionTop:I

    move v3, v0

    move v0, v3

    int-to-float v0, v0

    move/from16 v36, v0

    .line 709
    .local v36, zoomTop:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    const/high16 v3, 0x4280

    div-float v3, v27, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    iget v4, v4, Lcom/android/browser/BitmapWebView;->mZoomScale:F

    mul-float v32, v3, v4

    .line 710
    .local v32, textCoordRight:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v3, v0

    const/high16 v3, 0x4280

    div-float v3, v9, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    iget v4, v4, Lcom/android/browser/BitmapWebView;->mZoomScale:F

    mul-float v31, v3, v4

    .line 713
    .local v31, textCoordBottom:F
    sub-float v3, v20, v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    iget v4, v4, Lcom/android/browser/BitmapWebView;->mTextureWidth:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/BitmapWebViewSurface3D;->toGLX(FF)F

    move-result v11

    .line 714
    .local v11, glLeft:F
    sub-float v3, v33, v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    iget v4, v4, Lcom/android/browser/BitmapWebView;->mTextureHeight:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/BitmapWebViewSurface3D;->toGLY(FF)F

    move-result v15

    .line 715
    .local v15, glTop:F
    sub-float v3, v27, v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    iget v4, v4, Lcom/android/browser/BitmapWebView;->mTextureWidth:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/BitmapWebViewSurface3D;->toGLX(FF)F

    move-result v12

    .line 716
    .local v12, glRight:F
    sub-float v3, v9, v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v4, v0

    iget v4, v4, Lcom/android/browser/BitmapWebView;->mTextureHeight:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/BitmapWebViewSurface3D;->toGLY(FF)F

    move-result v10

    .line 718
    .local v10, glBottom:F
    const/16 v34, 0xc

    .line 721
    .local v34, width:I
    const/high16 v3, 0x4000

    move/from16 v0, v34

    int-to-float v0, v0

    move v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v5, v0

    iget v5, v5, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float v14, v3, v4

    .line 722
    .local v14, glThickV:F
    const/high16 v3, 0x4000

    move/from16 v0, v34

    int-to-float v0, v0

    move v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    move-object v5, v0

    iget v5, v5, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float v13, v3, v4

    .line 725
    .local v13, glThickH:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->muUseColorHandle:I

    move v3, v0

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 726
    const/16 v3, 0xbe2

    invoke-static {v3}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 731
    const/16 v16, 0x0

    .local v16, i:I
    :goto_0
    const/4 v3, 0x4

    move/from16 v0, v16

    move v1, v3

    if-ge v0, v1, :cond_3

    .line 733
    if-nez v16, :cond_0

    .line 735
    sub-float v22, v11, v13

    .line 736
    .local v22, ltX:F
    move/from16 v18, v11

    .line 737
    .local v18, lbX:F
    add-float v29, v12, v13

    .line 738
    .local v29, rtX:F
    move/from16 v25, v12

    .line 739
    .local v25, rbX:F
    add-float v23, v15, v14

    .local v23, ltY:F
    move/from16 v30, v23

    .line 740
    .local v30, rtY:F
    move/from16 v26, v15

    .local v26, rbY:F
    move/from16 v19, v15

    .line 741
    .local v19, lbY:F
    const/16 v28, 0x0

    .local v28, rt:F
    move/from16 v21, v28

    .line 742
    .local v21, lt:F
    const v24, 0x3e99999a

    .local v24, rb:F
    move/from16 v17, v24

    .line 781
    .local v17, lb:F
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mColorVerticesData:[F

    move-object v3, v0

    const/4 v4, 0x0

    aput v22, v3, v4

    .line 782
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mColorVerticesData:[F

    move-object v3, v0

    const/4 v4, 0x1

    aput v23, v3, v4

    .line 783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mColorVerticesData:[F

    move-object v3, v0

    const/4 v4, 0x3

    const/4 v5, 0x0

    aput v5, v3, v4

    .line 784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mColorVerticesData:[F

    move-object v3, v0

    const/4 v4, 0x4

    const/4 v5, 0x0

    aput v5, v3, v4

    .line 785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mColorVerticesData:[F

    move-object v3, v0

    const/4 v4, 0x5

    const/4 v5, 0x0

    aput v5, v3, v4

    .line 786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mColorVerticesData:[F

    move-object v3, v0

    const/4 v4, 0x6

    aput v21, v3, v4

    .line 788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mColorVerticesData:[F

    move-object v3, v0

    const/4 v4, 0x7

    aput v29, v3, v4

    .line 789
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mColorVerticesData:[F

    move-object v3, v0

    const/16 v4, 0x8

    aput v30, v3, v4

    .line 790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mColorVerticesData:[F

    move-object v3, v0

    const/16 v4, 0xa

    const/4 v5, 0x0

    aput v5, v3, v4

    .line 791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mColorVerticesData:[F

    move-object v3, v0

    const/16 v4, 0xb

    const/4 v5, 0x0

    aput v5, v3, v4

    .line 792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mColorVerticesData:[F

    move-object v3, v0

    const/16 v4, 0xc

    const/4 v5, 0x0

    aput v5, v3, v4

    .line 793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mColorVerticesData:[F

    move-object v3, v0

    const/16 v4, 0xd

    aput v28, v3, v4

    .line 795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mColorVerticesData:[F

    move-object v3, v0

    const/16 v4, 0xe

    aput v18, v3, v4

    .line 796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mColorVerticesData:[F

    move-object v3, v0

    const/16 v4, 0xf

    aput v19, v3, v4

    .line 797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mColorVerticesData:[F

    move-object v3, v0

    const/16 v4, 0x11

    const/4 v5, 0x0

    aput v5, v3, v4

    .line 798
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mColorVerticesData:[F

    move-object v3, v0

    const/16 v4, 0x12

    const/4 v5, 0x0

    aput v5, v3, v4

    .line 799
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mColorVerticesData:[F

    move-object v3, v0

    const/16 v4, 0x13

    const/4 v5, 0x0

    aput v5, v3, v4

    .line 800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mColorVerticesData:[F

    move-object v3, v0

    const/16 v4, 0x14

    aput v24, v3, v4

    .line 802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mColorVerticesData:[F

    move-object v3, v0

    const/16 v4, 0x15

    aput v25, v3, v4

    .line 803
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mColorVerticesData:[F

    move-object v3, v0

    const/16 v4, 0x16

    aput v26, v3, v4

    .line 804
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mColorVerticesData:[F

    move-object v3, v0

    const/16 v4, 0x18

    const/4 v5, 0x0

    aput v5, v3, v4

    .line 805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mColorVerticesData:[F

    move-object v3, v0

    const/16 v4, 0x19

    const/4 v5, 0x0

    aput v5, v3, v4

    .line 806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mColorVerticesData:[F

    move-object v3, v0

    const/16 v4, 0x1a

    const/4 v5, 0x0

    aput v5, v3, v4

    .line 807
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mColorVerticesData:[F

    move-object v3, v0

    const/16 v4, 0x1b

    aput v24, v3, v4

    .line 809
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mColorVertices:Ljava/nio/FloatBuffer;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mColorVertices:Ljava/nio/FloatBuffer;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mColorVerticesData:[F

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mColorVertices:Ljava/nio/FloatBuffer;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 814
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->maPositionHandle:I

    move v3, v0

    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 815
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->maPositionHandle:I

    move v3, v0

    const/4 v4, 0x3

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/16 v7, 0x1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mColorVertices:Ljava/nio/FloatBuffer;

    move-object v8, v0

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 818
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mColorVertices:Ljava/nio/FloatBuffer;

    move-object v3, v0

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 819
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->maColorHandle:I

    move v3, v0

    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 820
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->maColorHandle:I

    move v3, v0

    const/4 v4, 0x4

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/16 v7, 0x1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mColorVertices:Ljava/nio/FloatBuffer;

    move-object v8, v0

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 824
    const/4 v3, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-static {v3, v4, v5}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 731
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 744
    .end local v17           #lb:F
    .end local v18           #lbX:F
    .end local v19           #lbY:F
    .end local v21           #lt:F
    .end local v22           #ltX:F
    .end local v23           #ltY:F
    .end local v24           #rb:F
    .end local v25           #rbX:F
    .end local v26           #rbY:F
    .end local v28           #rt:F
    .end local v29           #rtX:F
    .end local v30           #rtY:F
    :cond_0
    const/4 v3, 0x1

    move/from16 v0, v16

    move v1, v3

    if-ne v0, v1, :cond_1

    .line 746
    move/from16 v29, v11

    .restart local v29       #rtX:F
    move/from16 v22, v11

    .line 747
    .restart local v22       #ltX:F
    sub-float v25, v11, v13

    .restart local v25       #rbX:F
    move/from16 v18, v25

    .line 748
    .restart local v18       #lbX:F
    move/from16 v23, v15

    .line 749
    .restart local v23       #ltY:F
    add-float v19, v15, v14

    .line 750
    .restart local v19       #lbY:F
    move/from16 v30, v10

    .line 751
    .restart local v30       #rtY:F
    sub-float v26, v10, v14

    .line 752
    .restart local v26       #rbY:F
    const v28, 0x3e99999a

    .restart local v28       #rt:F
    move/from16 v21, v28

    .line 753
    .restart local v21       #lt:F
    const/16 v24, 0x0

    .restart local v24       #rb:F
    move/from16 v17, v24

    .restart local v17       #lb:F
    goto/16 :goto_1

    .line 757
    .end local v17           #lb:F
    .end local v18           #lbX:F
    .end local v19           #lbY:F
    .end local v21           #lt:F
    .end local v22           #ltX:F
    .end local v23           #ltY:F
    .end local v24           #rb:F
    .end local v25           #rbX:F
    .end local v26           #rbY:F
    .end local v28           #rt:F
    .end local v29           #rtX:F
    .end local v30           #rtY:F
    :cond_1
    const/4 v3, 0x2

    move/from16 v0, v16

    move v1, v3

    if-ne v0, v1, :cond_2

    .line 759
    add-float v29, v12, v13

    .restart local v29       #rtX:F
    move/from16 v22, v29

    .line 760
    .restart local v22       #ltX:F
    move/from16 v25, v12

    .restart local v25       #rbX:F
    move/from16 v18, v12

    .line 761
    .restart local v18       #lbX:F
    add-float v23, v15, v14

    .line 762
    .restart local v23       #ltY:F
    move/from16 v19, v15

    .line 763
    .restart local v19       #lbY:F
    move/from16 v26, v10

    .line 764
    .restart local v26       #rbY:F
    sub-float v30, v10, v14

    .line 766
    .restart local v30       #rtY:F
    const v24, 0x3e99999a

    .restart local v24       #rb:F
    move/from16 v17, v24

    .line 767
    .restart local v17       #lb:F
    const/16 v28, 0x0

    .restart local v28       #rt:F
    move/from16 v21, v28

    .restart local v21       #lt:F
    goto/16 :goto_1

    .line 771
    .end local v17           #lb:F
    .end local v18           #lbX:F
    .end local v19           #lbY:F
    .end local v21           #lt:F
    .end local v22           #ltX:F
    .end local v23           #ltY:F
    .end local v24           #rb:F
    .end local v25           #rbX:F
    .end local v26           #rbY:F
    .end local v28           #rt:F
    .end local v29           #rtX:F
    .end local v30           #rtY:F
    :cond_2
    move/from16 v30, v10

    .restart local v30       #rtY:F
    move/from16 v23, v10

    .line 772
    .restart local v23       #ltY:F
    sub-float v26, v10, v14

    .restart local v26       #rbY:F
    move/from16 v19, v26

    .line 773
    .restart local v19       #lbY:F
    move/from16 v22, v11

    .line 774
    .restart local v22       #ltX:F
    move/from16 v29, v12

    .line 775
    .restart local v29       #rtX:F
    sub-float v18, v11, v13

    .line 776
    .restart local v18       #lbX:F
    add-float v25, v12, v13

    .line 777
    .restart local v25       #rbX:F
    const v28, 0x3e99999a

    .restart local v28       #rt:F
    move/from16 v21, v28

    .line 778
    .restart local v21       #lt:F
    const/16 v24, 0x0

    .restart local v24       #rb:F
    move/from16 v17, v24

    .restart local v17       #lb:F
    goto/16 :goto_1

    .line 827
    .end local v17           #lb:F
    .end local v18           #lbX:F
    .end local v19           #lbY:F
    .end local v21           #lt:F
    .end local v22           #ltX:F
    .end local v23           #ltY:F
    .end local v24           #rb:F
    .end local v25           #rbX:F
    .end local v26           #rbY:F
    .end local v28           #rt:F
    .end local v29           #rtX:F
    .end local v30           #rtY:F
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->muUseColorHandle:I

    move v3, v0

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 828
    const/16 v3, 0xbe2

    invoke-static {v3}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 829
    return-void
.end method

.method drawTitleBar()V
    .locals 9

    .prologue
    const/high16 v8, -0x4080

    const/4 v1, 0x3

    const/4 v5, 0x0

    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    .line 1137
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v0}, Lcom/android/browser/BitmapWebView;->updateTitleBarTextureBitmap()V

    .line 1138
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebViewSurface3D;->updateTitleBarTexture()V

    .line 1140
    iget v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mWidth:F

    iget v2, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mWidth:F

    invoke-virtual {p0, v0, v2}, Lcom/android/browser/BitmapWebViewSurface3D;->toGLX(FF)F

    move-result v7

    .line 1141
    .local v7, right:F
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v0}, Lcom/android/browser/BitmapWebView;->getTitleBarHeight()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mHeight:F

    invoke-virtual {p0, v0, v2}, Lcom/android/browser/BitmapWebViewSurface3D;->toGLY(FF)F

    move-result v6

    .line 1149
    .local v6, bottom:F
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    aput v8, v0, v3

    .line 1150
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    const/4 v2, 0x1

    aput v4, v0, v2

    .line 1151
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    aput v5, v0, v1

    .line 1152
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    const/4 v2, 0x4

    aput v5, v0, v2

    .line 1154
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    const/4 v2, 0x5

    aput v7, v0, v2

    .line 1155
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    const/4 v2, 0x6

    aput v4, v0, v2

    .line 1156
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    const/16 v2, 0x8

    aput v4, v0, v2

    .line 1157
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    const/16 v2, 0x9

    aput v5, v0, v2

    .line 1159
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    const/16 v2, 0xa

    aput v8, v0, v2

    .line 1160
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    const/16 v2, 0xb

    aput v6, v0, v2

    .line 1161
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    const/16 v2, 0xd

    aput v5, v0, v2

    .line 1162
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    const/16 v2, 0xe

    aput v4, v0, v2

    .line 1164
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    const/16 v2, 0xf

    aput v7, v0, v2

    .line 1165
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    const/16 v2, 0x10

    aput v6, v0, v2

    .line 1166
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    const/16 v2, 0x12

    aput v4, v0, v2

    .line 1167
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    const/16 v2, 0x13

    aput v4, v0, v2

    .line 1169
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1170
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVertices:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVerticesData:[F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1172
    const/16 v0, 0xde1

    iget v2, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTitleBarTextureID:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1174
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1175
    iget v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->maPositionHandle:I

    const/16 v2, 0x1406

    const/16 v4, 0x14

    iget-object v5, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1179
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1180
    iget v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->maPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1182
    iget v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->maTextureHandle:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/16 v4, 0x14

    iget-object v5, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1185
    iget v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->maTextureHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1188
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 1191
    return-void
.end method

.method public getTile(IILandroid/graphics/Rect;)Lcom/android/browser/BitmapWebView$Tile;
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "tileBoundary"

    .prologue
    .line 279
    iget-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTileQueue:Lcom/android/browser/BitmapWebViewSurface3D$TileQueue;

    invoke-virtual {v1}, Lcom/android/browser/BitmapWebViewSurface3D$TileQueue;->getNextTile()Lcom/android/browser/BitmapWebView$Tile;

    move-result-object v0

    .line 281
    .local v0, tile:Lcom/android/browser/BitmapWebView$Tile;
    if-eqz v0, :cond_0

    .line 283
    iget-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTexTiles:[[I

    aget-object v1, v1, p2

    aget v1, v1, p1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/browser/BitmapWebView$Tile;->set(IILandroid/graphics/Rect;I)V

    .line 287
    :cond_0
    return-object v0
.end method

.method public height()I
    .locals 1

    .prologue
    .line 644
    iget v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mHeight:F

    float-to-int v0, v0

    return v0
.end method

.method public onPaused()V
    .locals 0

    .prologue
    .line 1848
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebViewSurface3D;->onPause()V

    .line 1849
    return-void
.end method

.method public onResumed()V
    .locals 0

    .prologue
    .line 1856
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebViewSurface3D;->onResume()V

    .line 1857
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 1840
    sget-object v0, Lcom/android/browser/BitmapWebViewSurface3D;->LOGTAG:Ljava/lang/String;

    const-string v1, "pause start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebViewSurface3D;->unloadExtraTextures()V

    .line 1843
    sget-object v0, Lcom/android/browser/BitmapWebViewSurface3D;->LOGTAG:Ljava/lang/String;

    const-string v1, "pause end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    return-void
.end method

.method public reArrangeTextures(IIII)V
    .locals 5
    .parameter "textureWidth"
    .parameter "textureHeight"
    .parameter "tileNumX"
    .parameter "tileNumY"

    .prologue
    .line 370
    filled-new-array {p4, p3}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    iput-object v3, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTexTiles:[[I

    .line 371
    int-to-float v3, p1

    iget v4, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mWidth:F

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTextureScaleX:F

    .line 372
    int-to-float v3, p2

    iget v4, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mHeight:F

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTextureScaleY:F

    .line 376
    const/4 v0, 0x0

    .line 377
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, x:I
    :goto_0
    if-ge v1, p3, :cond_1

    .line 378
    const/4 v2, 0x0

    .local v2, y:I
    :goto_1
    if-ge v2, p4, :cond_0

    .line 381
    iget-object v3, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTexTiles:[[I

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTextureIDs:[I

    aget v4, v4, v0

    aput v4, v3, v1

    .line 382
    add-int/lit8 v0, v0, 0x1

    .line 378
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 377
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 386
    .end local v2           #y:I
    :cond_1
    iget-object v3, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTileQueue:Lcom/android/browser/BitmapWebViewSurface3D$TileQueue;

    invoke-virtual {v3}, Lcom/android/browser/BitmapWebViewSurface3D$TileQueue;->reset()V

    .line 388
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 1852
    return-void
.end method

.method public setWebView(Landroid/webkit/WebView;)V
    .locals 0
    .parameter "webview"

    .prologue
    .line 681
    iput-object p1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mWebView:Landroid/webkit/WebView;

    .line 682
    return-void
.end method

.method public stopDraw()V
    .locals 0

    .prologue
    .line 1861
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebViewSurface3D;->stopRender()V

    .line 1862
    return-void
.end method

.method toGLX(FF)F
    .locals 2
    .parameter "x"
    .parameter "width"

    .prologue
    .line 652
    const/high16 v1, 0x4000

    mul-float/2addr v1, p1

    div-float v0, v1, p2

    .line 653
    .local v0, glx:F
    const/high16 v1, 0x3f80

    sub-float/2addr v0, v1

    .line 655
    return v0
.end method

.method toGLY(FF)F
    .locals 2
    .parameter "y"
    .parameter "height"

    .prologue
    .line 661
    const/high16 v1, 0x4000

    mul-float/2addr v1, p1

    div-float v0, v1, p2

    .line 662
    .local v0, gly:F
    const/high16 v1, 0x3f80

    sub-float v0, v1, v0

    .line 664
    return v0
.end method

.method public declared-synchronized unloadExtraTextures()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 454
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget v1, v1, Lcom/android/browser/BitmapWebView;->mExtraTexNum:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 512
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 462
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mOnUnloadExtraTextures:Z

    .line 464
    new-instance v1, Lcom/android/browser/BitmapWebViewSurface3D$2;

    invoke-direct {v1, p0}, Lcom/android/browser/BitmapWebViewSurface3D$2;-><init>(Lcom/android/browser/BitmapWebViewSurface3D;)V

    invoke-virtual {p0, v1}, Lcom/android/browser/BitmapWebViewSurface3D;->queueEvent(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 488
    :try_start_2
    iget-boolean v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mOnUnloadExtraTextures:Z

    if-ne v1, v4, :cond_2

    .line 490
    iget-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    const-wide/16 v1, 0x9c4

    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 499
    :cond_2
    :goto_1
    :try_start_3
    iget-boolean v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mOnUnloadExtraTextures:Z

    if-eq v1, v4, :cond_3

    .line 501
    iget-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget v2, v1, Lcom/android/browser/BitmapWebView;->mTotalTexNum:I

    iget-object v3, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget v3, v3, Lcom/android/browser/BitmapWebView;->mExtraTexNum:I

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/android/browser/BitmapWebView;->mTotalTexNum:I

    .line 502
    iget-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/browser/BitmapWebView;->mExtraTexNum:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 454
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 494
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 496
    .local v0, e:Ljava/lang/Exception;
    :try_start_4
    sget-object v1, Lcom/android/browser/BitmapWebViewSurface3D;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unloadExtraTextures "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 507
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    iget-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mGLThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 508
    sget-object v1, Lcom/android/browser/BitmapWebViewSurface3D;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unloadExtraTextures GLThread state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mGLThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method unloadExtraTexturesGL()V
    .locals 2

    .prologue
    .line 449
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mExtraTexNum:I

    neg-int v0, v0

    iget-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget v1, v1, Lcom/android/browser/BitmapWebView;->mExtraTexNum:I

    invoke-direct {p0, v0, v1}, Lcom/android/browser/BitmapWebViewSurface3D;->reloadExtraWebViewTextureGL(II)V

    .line 450
    return-void
.end method

.method public updateTile(Lcom/android/browser/BitmapWebView$Tile;)V
    .locals 1
    .parameter "tile"

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTileQueue:Lcom/android/browser/BitmapWebViewSurface3D$TileQueue;

    invoke-virtual {v0, p1}, Lcom/android/browser/BitmapWebViewSurface3D$TileQueue;->push(Lcom/android/browser/BitmapWebView$Tile;)V

    .line 671
    return-void
.end method

.method public updateTilesInQueue()V
    .locals 1

    .prologue
    .line 293
    new-instance v0, Lcom/android/browser/BitmapWebViewSurface3D$1;

    invoke-direct {v0, p0}, Lcom/android/browser/BitmapWebViewSurface3D$1;-><init>(Lcom/android/browser/BitmapWebViewSurface3D;)V

    invoke-virtual {p0, v0}, Lcom/android/browser/BitmapWebViewSurface3D;->queueEvent(Ljava/lang/Runnable;)V

    .line 325
    return-void
.end method

.method updateTitleBarTexture()V
    .locals 3

    .prologue
    const/16 v2, 0xde1

    const/4 v1, 0x0

    .line 686
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget-boolean v0, v0, Lcom/android/browser/BitmapWebView;->mTitleBarVisibility:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget-boolean v0, v0, Lcom/android/browser/BitmapWebView;->mTiltebarBitmapUpdated:Z

    if-nez v0, :cond_1

    .line 699
    :cond_0
    :goto_0
    return-void

    .line 691
    :cond_1
    iget v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mTitleBarTextureID:I

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 694
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mTitleBarBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2, v1, v1, v1, v0}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;)V

    .line 698
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iput-boolean v1, v0, Lcom/android/browser/BitmapWebView;->mTiltebarBitmapUpdated:Z

    goto :goto_0
.end method

.method updateWebViewTextureGL(Lcom/android/browser/BitmapWebView$Tile;)V
    .locals 8
    .parameter "tile"

    .prologue
    const/16 v7, 0x100

    const/4 v6, 0x1

    const/16 v0, 0xde1

    const/4 v1, 0x0

    .line 331
    iget v2, p1, Lcom/android/browser/BitmapWebView$Tile;->mTexID:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 333
    iget-boolean v2, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mCompressedTexEnable:Z

    if-ne v2, v6, :cond_2

    .line 335
    iget-object v2, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 336
    iget-object v2, p1, Lcom/android/browser/BitmapWebView$Tile;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 337
    iget-object v2, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 338
    iget-object v2, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapBuffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x2

    const/16 v4, 0x200

    invoke-static {v2, v7, v7, v3, v4}, Landroid/opengl/ETC1Util;->compressTexture(Ljava/nio/Buffer;IIII)Landroid/opengl/ETC1Util$ETC1Texture;

    move-result-object v5

    .line 344
    .local v5, etc1Tex:Landroid/opengl/ETC1Util$ETC1Texture;
    const/16 v3, 0x1907

    const v4, 0x8363

    move v2, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/ETC1Util;->loadTexture(IIIIILandroid/opengl/ETC1Util$ETC1Texture;)V

    .line 352
    .end local v5           #etc1Tex:Landroid/opengl/ETC1Util$ETC1Texture;
    :goto_0
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mValidTextureRegion:Landroid/graphics/Region;

    monitor-enter v0

    .line 354
    :try_start_0
    iget-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget-object v1, v1, Lcom/android/browser/BitmapWebView;->mValidTextureRegion:Landroid/graphics/Region;

    iget-object v2, p1, Lcom/android/browser/BitmapWebView$Tile;->mBoundary:Landroid/graphics/Rect;

    sget-object v3, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 355
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    if-nez v6, :cond_1

    .line 359
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mDebugTiles:[[Landroid/graphics/Bitmap;

    iget v1, p1, Lcom/android/browser/BitmapWebView$Tile;->y:I

    aget-object v0, v0, v1

    iget v1, p1, Lcom/android/browser/BitmapWebView$Tile;->x:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mDebugTiles:[[Landroid/graphics/Bitmap;

    iget v1, p1, Lcom/android/browser/BitmapWebView$Tile;->y:I

    aget-object v0, v0, v1

    iget v1, p1, Lcom/android/browser/BitmapWebView$Tile;->x:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mDebugTiles:[[Landroid/graphics/Bitmap;

    iget v1, p1, Lcom/android/browser/BitmapWebView$Tile;->y:I

    aget-object v0, v0, v1

    iget v1, p1, Lcom/android/browser/BitmapWebView$Tile;->x:I

    iget-object v2, p1, Lcom/android/browser/BitmapWebView$Tile;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v0, v1

    .line 364
    :cond_1
    return-void

    .line 350
    :cond_2
    iget-object v2, p1, Lcom/android/browser/BitmapWebView$Tile;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2, v1}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    goto :goto_0

    .line 355
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public width()I
    .locals 1

    .prologue
    .line 639
    iget v0, p0, Lcom/android/browser/BitmapWebViewSurface3D;->mWidth:F

    float-to-int v0, v0

    return v0
.end method
