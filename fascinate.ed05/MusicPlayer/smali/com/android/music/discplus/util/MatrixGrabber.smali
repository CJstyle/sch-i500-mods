.class public Lcom/android/music/discplus/util/MatrixGrabber;
.super Ljava/lang/Object;
.source "MatrixGrabber.java"


# instance fields
.field public mModelView:[F

.field public mProjection:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/music/discplus/util/MatrixGrabber;->mModelView:[F

    .line 24
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/music/discplus/util/MatrixGrabber;->mProjection:[F

    .line 25
    return-void
.end method

.method private getMatrix(Ljavax/microedition/khronos/opengles/GL10;I[F)V
    .locals 3
    .parameter "gl"
    .parameter "mode"
    .parameter "mat"

    .prologue
    .line 56
    move-object v0, p1

    check-cast v0, Lcom/android/music/discplus/util/MatrixTrackingGL;

    move-object v1, v0

    .line 57
    .local v1, gl2:Lcom/android/music/discplus/util/MatrixTrackingGL;
    invoke-virtual {v1, p2}, Lcom/android/music/discplus/util/MatrixTrackingGL;->glMatrixMode(I)V

    .line 58
    const/4 v2, 0x0

    invoke-virtual {v1, p3, v2}, Lcom/android/music/discplus/util/MatrixTrackingGL;->getMatrix([FI)V

    .line 59
    return-void
.end method


# virtual methods
.method public getCurrentModelView(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .parameter "gl"

    .prologue
    .line 43
    const/16 v0, 0x1700

    iget-object v1, p0, Lcom/android/music/discplus/util/MatrixGrabber;->mModelView:[F

    invoke-direct {p0, p1, v0, v1}, Lcom/android/music/discplus/util/MatrixGrabber;->getMatrix(Ljavax/microedition/khronos/opengles/GL10;I[F)V

    .line 44
    return-void
.end method

.method public getCurrentProjection(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .parameter "gl"

    .prologue
    .line 52
    const/16 v0, 0x1701

    iget-object v1, p0, Lcom/android/music/discplus/util/MatrixGrabber;->mProjection:[F

    invoke-direct {p0, p1, v0, v1}, Lcom/android/music/discplus/util/MatrixGrabber;->getMatrix(Ljavax/microedition/khronos/opengles/GL10;I[F)V

    .line 53
    return-void
.end method

.method public getCurrentState(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0
    .parameter "gl"

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/android/music/discplus/util/MatrixGrabber;->getCurrentProjection(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 34
    invoke-virtual {p0, p1}, Lcom/android/music/discplus/util/MatrixGrabber;->getCurrentModelView(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 35
    return-void
.end method
