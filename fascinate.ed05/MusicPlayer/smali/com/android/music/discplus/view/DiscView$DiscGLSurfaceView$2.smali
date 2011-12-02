.class Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView$2;
.super Ljava/lang/Object;
.source "DiscView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->setSpinDegree(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

.field final synthetic val$degree:I

.field final synthetic val$drag:Z


# direct methods
.method constructor <init>(Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2348
    iput-object p1, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView$2;->this$0:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    iput p2, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView$2;->val$degree:I

    iput-boolean p3, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView$2;->val$drag:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2349
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView$2;->this$0:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    invoke-static {v0}, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->access$1000(Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;)Lcom/android/music/discplus/view/DiscRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2350
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView$2;->this$0:Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    invoke-static {v0}, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->access$1000(Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;)Lcom/android/music/discplus/view/DiscRenderer;

    move-result-object v0

    iget v1, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView$2;->val$degree:I

    iget-boolean v2, p0, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView$2;->val$drag:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/music/discplus/view/DiscRenderer;->spinDISCStart(IZ)V

    .line 2351
    :cond_0
    return-void
.end method
