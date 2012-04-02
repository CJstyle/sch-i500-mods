.class Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView$1;
.super Ljava/lang/Object;
.source "DiscView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$GLWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->init(Lcom/android/music/discplus/view/DiscView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;


# direct methods
.method constructor <init>(Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;)V
    .locals 0
    .parameter

    .prologue
    .line 2404
    iput-object p1, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView$1;->this$0:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public wrap(Ljavax/microedition/khronos/opengles/GL;)Ljavax/microedition/khronos/opengles/GL;
    .locals 1
    .parameter "gl"

    .prologue
    .line 2406
    new-instance v0, Lcom/android/music/discplus/util/MatrixTrackingGL;

    invoke-direct {v0, p1}, Lcom/android/music/discplus/util/MatrixTrackingGL;-><init>(Ljavax/microedition/khronos/opengles/GL;)V

    return-object v0
.end method
