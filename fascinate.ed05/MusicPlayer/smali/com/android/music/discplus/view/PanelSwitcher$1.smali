.class Lcom/android/music/discplus/view/PanelSwitcher$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PanelSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/discplus/view/PanelSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/discplus/view/PanelSwitcher;


# direct methods
.method constructor <init>(Lcom/android/music/discplus/view/PanelSwitcher;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/music/discplus/view/PanelSwitcher$1;->this$0:Lcom/android/music/discplus/view/PanelSwitcher;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v6, 0x0

    .line 46
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v1, v4

    .line 50
    .local v1, dy:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 51
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 52
    .local v2, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 53
    .local v3, y:I
    iget-object v4, p0, Lcom/android/music/discplus/view/PanelSwitcher$1;->this$0:Lcom/android/music/discplus/view/PanelSwitcher;

    invoke-static {v4, v6}, Lcom/android/music/discplus/view/PanelSwitcher;->access$002(Lcom/android/music/discplus/view/PanelSwitcher;Z)Z

    .line 54
    if-nez v0, :cond_0

    .line 55
    iget-object v4, p0, Lcom/android/music/discplus/view/PanelSwitcher$1;->this$0:Lcom/android/music/discplus/view/PanelSwitcher;

    invoke-static {v4}, Lcom/android/music/discplus/view/PanelSwitcher;->access$100(Lcom/android/music/discplus/view/PanelSwitcher;)[Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/music/discplus/view/PanelSwitcher$1;->this$0:Lcom/android/music/discplus/view/PanelSwitcher;

    invoke-virtual {v5}, Lcom/android/music/discplus/view/PanelSwitcher;->getCurrentIndex()I

    move-result v5

    aget-object v4, v4, v5

    instance-of v4, v4, Lcom/android/music/discplus/view/DiscView;

    if-eqz v4, :cond_1

    .line 56
    iget-object v4, p0, Lcom/android/music/discplus/view/PanelSwitcher$1;->this$0:Lcom/android/music/discplus/view/PanelSwitcher;

    iget-object v5, p0, Lcom/android/music/discplus/view/PanelSwitcher$1;->this$0:Lcom/android/music/discplus/view/PanelSwitcher;

    invoke-static {v5}, Lcom/android/music/discplus/view/PanelSwitcher;->access$200(Lcom/android/music/discplus/view/PanelSwitcher;)Lcom/android/music/discplus/view/DiscView;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Lcom/android/music/discplus/view/DiscView;->getMoveDown(II)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/android/music/discplus/view/PanelSwitcher;->access$002(Lcom/android/music/discplus/view/PanelSwitcher;Z)Z

    .line 62
    :cond_0
    :goto_0
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/16 v5, 0x3c

    if-le v4, v5, :cond_3

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_3

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget-object v5, p0, Lcom/android/music/discplus/view/PanelSwitcher$1;->this$0:Lcom/android/music/discplus/view/PanelSwitcher;

    invoke-static {v5}, Lcom/android/music/discplus/view/PanelSwitcher;->access$400(Lcom/android/music/discplus/view/PanelSwitcher;)I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    iget-object v4, p0, Lcom/android/music/discplus/view/PanelSwitcher$1;->this$0:Lcom/android/music/discplus/view/PanelSwitcher;

    invoke-static {v4}, Lcom/android/music/discplus/view/PanelSwitcher;->access$000(Lcom/android/music/discplus/view/PanelSwitcher;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 66
    const/4 v4, 0x0

    cmpl-float v4, p4, v4

    if-lez v4, :cond_2

    .line 67
    iget-object v4, p0, Lcom/android/music/discplus/view/PanelSwitcher$1;->this$0:Lcom/android/music/discplus/view/PanelSwitcher;

    invoke-virtual {v4}, Lcom/android/music/discplus/view/PanelSwitcher;->moveDown()Z

    .line 71
    :goto_1
    const/4 v4, 0x1

    .line 73
    :goto_2
    return v4

    .line 57
    :cond_1
    iget-object v4, p0, Lcom/android/music/discplus/view/PanelSwitcher$1;->this$0:Lcom/android/music/discplus/view/PanelSwitcher;

    invoke-static {v4}, Lcom/android/music/discplus/view/PanelSwitcher;->access$100(Lcom/android/music/discplus/view/PanelSwitcher;)[Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/music/discplus/view/PanelSwitcher$1;->this$0:Lcom/android/music/discplus/view/PanelSwitcher;

    invoke-virtual {v5}, Lcom/android/music/discplus/view/PanelSwitcher;->getCurrentIndex()I

    move-result v5

    aget-object v4, v4, v5

    instance-of v4, v4, Lcom/android/music/discplus/view/TopView;

    if-eqz v4, :cond_0

    .line 58
    iget-object v4, p0, Lcom/android/music/discplus/view/PanelSwitcher$1;->this$0:Lcom/android/music/discplus/view/PanelSwitcher;

    iget-object v5, p0, Lcom/android/music/discplus/view/PanelSwitcher$1;->this$0:Lcom/android/music/discplus/view/PanelSwitcher;

    invoke-static {v5}, Lcom/android/music/discplus/view/PanelSwitcher;->access$300(Lcom/android/music/discplus/view/PanelSwitcher;)Lcom/android/music/discplus/view/TopView;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Lcom/android/music/discplus/view/TopView;->getMoveUp(II)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/android/music/discplus/view/PanelSwitcher;->access$002(Lcom/android/music/discplus/view/PanelSwitcher;Z)Z

    goto :goto_0

    .line 69
    :cond_2
    iget-object v4, p0, Lcom/android/music/discplus/view/PanelSwitcher$1;->this$0:Lcom/android/music/discplus/view/PanelSwitcher;

    invoke-virtual {v4}, Lcom/android/music/discplus/view/PanelSwitcher;->moveUp()Z

    goto :goto_1

    :cond_3
    move v4, v6

    .line 73
    goto :goto_2
.end method
