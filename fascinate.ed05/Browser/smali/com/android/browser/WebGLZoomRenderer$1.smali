.class Lcom/android/browser/WebGLZoomRenderer$1;
.super Ljava/lang/Object;
.source "WebGLZoomView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/WebGLZoomRenderer;->updateWebViewTexture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/WebGLZoomRenderer;


# direct methods
.method constructor <init>(Lcom/android/browser/WebGLZoomRenderer;)V
    .locals 0
    .parameter

    .prologue
    .line 2076
    iput-object p1, p0, Lcom/android/browser/WebGLZoomRenderer$1;->this$0:Lcom/android/browser/WebGLZoomRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2078
    iget-object v1, p0, Lcom/android/browser/WebGLZoomRenderer$1;->this$0:Lcom/android/browser/WebGLZoomRenderer;

    iget-boolean v1, v1, Lcom/android/browser/WebGLZoomRenderer;->mDrawFrameFlag:Z

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/browser/WebGLZoomRenderer$1;->this$0:Lcom/android/browser/WebGLZoomRenderer;

    iget-object v1, v1, Lcom/android/browser/WebGLZoomRenderer;->mSurfaceView:Lcom/android/browser/WebGLZoomView;

    iget-boolean v1, v1, Lcom/android/browser/WebGLZoomView;->mScaling:Z

    if-nez v1, :cond_1

    .line 2080
    invoke-static {}, Lcom/android/browser/WebGLZoomRenderer;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ignore updateWebViewTexture in glthread"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2081
    iget-object v1, p0, Lcom/android/browser/WebGLZoomRenderer$1;->this$0:Lcom/android/browser/WebGLZoomRenderer;

    iget-object v1, v1, Lcom/android/browser/WebGLZoomRenderer;->mSurfaceView:Lcom/android/browser/WebGLZoomView;

    invoke-virtual {v1}, Lcom/android/browser/WebGLZoomView;->requestUpdateWebViewTexture()V

    .line 2103
    :cond_0
    :goto_0
    return-void

    .line 2086
    :cond_1
    const/4 v0, 0x0

    .line 2088
    .local v0, tile:Lcom/android/browser/WebGLZoomRenderer$Tile;
    iget-object v1, p0, Lcom/android/browser/WebGLZoomRenderer$1;->this$0:Lcom/android/browser/WebGLZoomRenderer;

    invoke-static {v1}, Lcom/android/browser/WebGLZoomRenderer;->access$200(Lcom/android/browser/WebGLZoomRenderer;)Lcom/android/browser/WebGLZoomRenderer$TileQueue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/WebGLZoomRenderer$TileQueue;->pop()Lcom/android/browser/WebGLZoomRenderer$Tile;

    move-result-object v0

    .line 2091
    if-eqz v0, :cond_0

    .line 2093
    iget-object v1, p0, Lcom/android/browser/WebGLZoomRenderer$1;->this$0:Lcom/android/browser/WebGLZoomRenderer;

    invoke-virtual {v1, v0}, Lcom/android/browser/WebGLZoomRenderer;->updateWebViewTextureGL(Lcom/android/browser/WebGLZoomRenderer$Tile;)V

    .line 2095
    iget-object v1, p0, Lcom/android/browser/WebGLZoomRenderer$1;->this$0:Lcom/android/browser/WebGLZoomRenderer;

    iget-object v1, v1, Lcom/android/browser/WebGLZoomRenderer;->mSurfaceView:Lcom/android/browser/WebGLZoomView;

    iget-boolean v1, v1, Lcom/android/browser/WebGLZoomView;->mScaling:Z

    if-ne v1, v2, :cond_0

    .line 2096
    iget-object v1, p0, Lcom/android/browser/WebGLZoomRenderer$1;->this$0:Lcom/android/browser/WebGLZoomRenderer;

    iget-object v1, v1, Lcom/android/browser/WebGLZoomRenderer;->mSurfaceView:Lcom/android/browser/WebGLZoomView;

    invoke-virtual {v1}, Lcom/android/browser/WebGLZoomView;->requestRender()V

    goto :goto_0
.end method
