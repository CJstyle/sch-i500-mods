.class Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView$4;
.super Ljava/lang/Object;
.source "DiscView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->setDragStop()V
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
    .line 2366
    iput-object p1, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView$4;->this$0:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2367
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView$4;->this$0:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    invoke-static {v0}, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->access$1000(Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;)Lcom/android/music/discplus/view/DiscRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2368
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView$4;->this$0:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    invoke-static {v0}, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->access$1000(Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;)Lcom/android/music/discplus/view/DiscRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/music/discplus/view/DiscRenderer;->dragDISCStop()V

    .line 2369
    :cond_0
    return-void
.end method
