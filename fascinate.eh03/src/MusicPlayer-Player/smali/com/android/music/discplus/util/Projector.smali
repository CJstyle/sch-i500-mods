.class public Lcom/android/music/discplus/util/Projector;
.super Ljava/lang/Object;
.source "Projector.java"


# instance fields
.field private mGrabber:Lcom/android/music/discplus/util/MatrixGrabber;

.field private mMVP:[F

.field private mMVPComputed:Z

.field private mV:[F

.field private mViewHeight:I

.field private mViewWidth:I

.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/music/discplus/util/Projector;->mMVP:[F

    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/music/discplus/util/Projector;->mV:[F

    .line 31
    new-instance v0, Lcom/android/music/discplus/util/MatrixGrabber;

    invoke-direct {v0}, Lcom/android/music/discplus/util/MatrixGrabber;-><init>()V

    iput-object v0, p0, Lcom/android/music/discplus/util/Projector;->mGrabber:Lcom/android/music/discplus/util/MatrixGrabber;

    .line 32
    return-void
.end method


# virtual methods
.method public getCurrentModelView(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .parameter "gl"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/music/discplus/util/Projector;->mGrabber:Lcom/android/music/discplus/util/MatrixGrabber;

    invoke-virtual {v0, p1}, Lcom/android/music/discplus/util/MatrixGrabber;->getCurrentModelView(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/discplus/util/Projector;->mMVPComputed:Z

    .line 74
    return-void
.end method

.method public getCurrentProjection(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .parameter "gl"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/music/discplus/util/Projector;->mGrabber:Lcom/android/music/discplus/util/MatrixGrabber;

    invoke-virtual {v0, p1}, Lcom/android/music/discplus/util/MatrixGrabber;->getCurrentProjection(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/discplus/util/Projector;->mMVPComputed:Z

    .line 64
    return-void
.end method

.method public project([FI[FI)V
    .locals 10
    .parameter "obj"
    .parameter "objOffset"
    .parameter "win"
    .parameter "winOffset"

    .prologue
    const/4 v9, 0x1

    const/high16 v8, 0x3f00

    const/high16 v7, 0x3f80

    const/4 v1, 0x0

    .line 42
    iget-boolean v0, p0, Lcom/android/music/discplus/util/Projector;->mMVPComputed:Z

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/android/music/discplus/util/Projector;->mMVP:[F

    iget-object v2, p0, Lcom/android/music/discplus/util/Projector;->mGrabber:Lcom/android/music/discplus/util/MatrixGrabber;

    iget-object v2, v2, Lcom/android/music/discplus/util/MatrixGrabber;->mProjection:[F

    iget-object v3, p0, Lcom/android/music/discplus/util/Projector;->mGrabber:Lcom/android/music/discplus/util/MatrixGrabber;

    iget-object v4, v3, Lcom/android/music/discplus/util/MatrixGrabber;->mModelView:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 44
    iput-boolean v9, p0, Lcom/android/music/discplus/util/Projector;->mMVPComputed:Z

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/android/music/discplus/util/Projector;->mV:[F

    iget-object v2, p0, Lcom/android/music/discplus/util/Projector;->mMVP:[F

    move v3, v1

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 49
    iget-object v0, p0, Lcom/android/music/discplus/util/Projector;->mV:[F

    const/4 v2, 0x3

    aget v0, v0, v2

    div-float v6, v7, v0

    .line 51
    .local v6, rw:F
    iget v0, p0, Lcom/android/music/discplus/util/Projector;->mX:I

    int-to-float v0, v0

    iget v2, p0, Lcom/android/music/discplus/util/Projector;->mViewWidth:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/music/discplus/util/Projector;->mV:[F

    aget v1, v3, v1

    mul-float/2addr v1, v6

    add-float/2addr v1, v7

    mul-float/2addr v1, v2

    mul-float/2addr v1, v8

    add-float/2addr v0, v1

    aput v0, p3, p4

    .line 52
    add-int/lit8 v0, p4, 0x1

    iget v1, p0, Lcom/android/music/discplus/util/Projector;->mY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/music/discplus/util/Projector;->mViewHeight:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/music/discplus/util/Projector;->mV:[F

    aget v3, v3, v9

    mul-float/2addr v3, v6

    add-float/2addr v3, v7

    mul-float/2addr v2, v3

    mul-float/2addr v2, v8

    add-float/2addr v1, v2

    aput v1, p3, v0

    .line 53
    add-int/lit8 v0, p4, 0x2

    iget-object v1, p0, Lcom/android/music/discplus/util/Projector;->mV:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    mul-float/2addr v1, v6

    add-float/2addr v1, v7

    mul-float/2addr v1, v8

    aput v1, p3, v0

    .line 54
    return-void
.end method

.method public setCurrentView(IIII)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 35
    iput p1, p0, Lcom/android/music/discplus/util/Projector;->mX:I

    .line 36
    iput p2, p0, Lcom/android/music/discplus/util/Projector;->mY:I

    .line 37
    iput p3, p0, Lcom/android/music/discplus/util/Projector;->mViewWidth:I

    .line 38
    iput p4, p0, Lcom/android/music/discplus/util/Projector;->mViewHeight:I

    .line 39
    return-void
.end method
