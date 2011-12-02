.class Lcom/android/music/discplus/view/DiscView$5;
.super Ljava/lang/Object;
.source "DiscView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/discplus/view/DiscView;->execTouchAtListView(Landroid/view/MotionEvent;)Z
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
    .line 1121
    iput-object p1, p0, Lcom/android/music/discplus/view/DiscView$5;->this$0:Lcom/android/music/discplus/view/DiscView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/high16 v4, -0x8000

    .line 1122
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscView$5;->this$0:Lcom/android/music/discplus/view/DiscView;

    invoke-static {v1}, Lcom/android/music/discplus/view/DiscView;->access$1100(Lcom/android/music/discplus/view/DiscView;)Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1123
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscView$5;->this$0:Lcom/android/music/discplus/view/DiscView;

    invoke-static {v1}, Lcom/android/music/discplus/view/DiscView;->access$1100(Lcom/android/music/discplus/view/DiscView;)Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    move-result-object v1

    invoke-static {v1}, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->access$1000(Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;)Lcom/android/music/discplus/view/DiscRenderer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/music/discplus/view/DiscRenderer;->getCurSelObjectRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 1124
    .local v0, rcCD:Landroid/graphics/Rect;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/music/discplus/view/DiscView$5;->this$0:Lcom/android/music/discplus/view/DiscView;

    invoke-static {v1}, Lcom/android/music/discplus/view/DiscView;->access$1200(Lcom/android/music/discplus/view/DiscView;)I

    move-result v1

    iget-object v2, p0, Lcom/android/music/discplus/view/DiscView$5;->this$0:Lcom/android/music/discplus/view/DiscView;

    invoke-static {v2}, Lcom/android/music/discplus/view/DiscView;->access$1300(Lcom/android/music/discplus/view/DiscView;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/music/discplus/view/DiscView$5;->this$0:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v1}, Lcom/android/music/discplus/view/DiscView;->getAnimationStatus()Lcom/android/music/discplus/view/DiscView$AniMationStatus;

    move-result-object v1

    sget-object v2, Lcom/android/music/discplus/view/DiscView$AniMationStatus;->ANIMATION_RUNNING:Lcom/android/music/discplus/view/DiscView$AniMationStatus;

    if-eq v1, v2, :cond_1

    .line 1127
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscView$5;->this$0:Lcom/android/music/discplus/view/DiscView;

    sget-object v2, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_CHANGEVIEW_LISTTODISC:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    invoke-virtual {v1, v2}, Lcom/android/music/discplus/view/DiscView;->preAnimationEffect(Lcom/android/music/discplus/view/DiscView$AniMationEffect;)V

    .line 1128
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscView$5;->this$0:Lcom/android/music/discplus/view/DiscView;

    new-instance v2, Lcom/android/music/discplus/view/DiscView$5$1;

    invoke-direct {v2, p0}, Lcom/android/music/discplus/view/DiscView$5$1;-><init>(Lcom/android/music/discplus/view/DiscView$5;)V

    sget-object v3, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_CHANGEVIEW_LISTTODISC:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    invoke-virtual {v1, v2, v3}, Lcom/android/music/discplus/view/DiscView;->showChangeDiscAnimation(Ljava/lang/Runnable;Lcom/android/music/discplus/view/DiscView$AniMationEffect;)V

    .line 1140
    .end local v0           #rcCD:Landroid/graphics/Rect;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscView$5;->this$0:Lcom/android/music/discplus/view/DiscView;

    invoke-static {v1, v4}, Lcom/android/music/discplus/view/DiscView;->access$1202(Lcom/android/music/discplus/view/DiscView;I)I

    .line 1141
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscView$5;->this$0:Lcom/android/music/discplus/view/DiscView;

    invoke-static {v1, v4}, Lcom/android/music/discplus/view/DiscView;->access$1302(Lcom/android/music/discplus/view/DiscView;I)I

    .line 1142
    return-void

    .line 1135
    .restart local v0       #rcCD:Landroid/graphics/Rect;
    :cond_1
    iget-object v1, p0, Lcom/android/music/discplus/view/DiscView$5;->this$0:Lcom/android/music/discplus/view/DiscView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/music/discplus/view/DiscView;->access$1402(Lcom/android/music/discplus/view/DiscView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    goto :goto_0
.end method
