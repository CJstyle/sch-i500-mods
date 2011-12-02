.class Lcom/android/music/discplus/view/DiscView$7;
.super Ljava/lang/Object;
.source "DiscView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/discplus/view/DiscView;->execTouchAtDiscView(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/discplus/view/DiscView;


# direct methods
.method constructor <init>(Lcom/android/music/discplus/view/DiscView;)V
    .locals 0
    .parameter

    .prologue
    .line 1326
    iput-object p1, p0, Lcom/android/music/discplus/view/DiscView$7;->this$0:Lcom/android/music/discplus/view/DiscView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/high16 v3, -0x8000

    .line 1327
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$7;->this$0:Lcom/android/music/discplus/view/DiscView;

    invoke-static {v0}, Lcom/android/music/discplus/view/DiscView;->access$1100(Lcom/android/music/discplus/view/DiscView;)Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1328
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$7;->this$0:Lcom/android/music/discplus/view/DiscView;

    iget-object v1, p0, Lcom/android/music/discplus/view/DiscView$7;->this$0:Lcom/android/music/discplus/view/DiscView;

    invoke-static {v1}, Lcom/android/music/discplus/view/DiscView;->access$1200(Lcom/android/music/discplus/view/DiscView;)I

    move-result v1

    iget-object v2, p0, Lcom/android/music/discplus/view/DiscView$7;->this$0:Lcom/android/music/discplus/view/DiscView;

    invoke-static {v2}, Lcom/android/music/discplus/view/DiscView;->access$1300(Lcom/android/music/discplus/view/DiscView;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/music/discplus/view/DiscView;->access$1600(Lcom/android/music/discplus/view/DiscView;II)V

    .line 1330
    :cond_0
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$7;->this$0:Lcom/android/music/discplus/view/DiscView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/music/discplus/view/DiscView;->access$1402(Lcom/android/music/discplus/view/DiscView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 1331
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$7;->this$0:Lcom/android/music/discplus/view/DiscView;

    invoke-static {v0, v3}, Lcom/android/music/discplus/view/DiscView;->access$1202(Lcom/android/music/discplus/view/DiscView;I)I

    .line 1332
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$7;->this$0:Lcom/android/music/discplus/view/DiscView;

    invoke-static {v0, v3}, Lcom/android/music/discplus/view/DiscView;->access$1302(Lcom/android/music/discplus/view/DiscView;I)I

    .line 1333
    return-void
.end method
