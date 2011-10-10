.class Lcom/nemustech/tiffany/widget/TFSweepActionListView$1;
.super Ljava/lang/Object;
.source "TFSweepActionListView.java"

# interfaces
.implements Lcom/nemustech/tiffany/widget/TFSweepActionListView$HorizontalGestureDetector$OnHorizontalGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemustech/tiffany/widget/TFSweepActionListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemustech/tiffany/widget/TFSweepActionListView;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/widget/TFSweepActionListView;)V
    .locals 0
    .parameter

    .prologue
    .line 536
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$1;->this$0:Lcom/nemustech/tiffany/widget/TFSweepActionListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(F)Z
    .locals 1
    .parameter "velocityX"

    .prologue
    .line 538
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$1;->this$0:Lcom/nemustech/tiffany/widget/TFSweepActionListView;

    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->access$1100(Lcom/nemustech/tiffany/widget/TFSweepActionListView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$1;->this$0:Lcom/nemustech/tiffany/widget/TFSweepActionListView;

    invoke-static {v0, p1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->access$1200(Lcom/nemustech/tiffany/widget/TFSweepActionListView;F)V

    .line 542
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$1;->this$0:Lcom/nemustech/tiffany/widget/TFSweepActionListView;

    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->access$1300(Lcom/nemustech/tiffany/widget/TFSweepActionListView;)V

    goto :goto_0
.end method

.method public onScroll(F)Z
    .locals 1
    .parameter "distanceX"

    .prologue
    .line 546
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$1;->this$0:Lcom/nemustech/tiffany/widget/TFSweepActionListView;

    invoke-static {v0, p1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->access$1400(Lcom/nemustech/tiffany/widget/TFSweepActionListView;F)V

    .line 547
    const/4 v0, 0x1

    return v0
.end method

.method public onTouchUpNonFling(Z)Z
    .locals 1
    .parameter "canceled"

    .prologue
    .line 551
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$1;->this$0:Lcom/nemustech/tiffany/widget/TFSweepActionListView;

    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->access$1300(Lcom/nemustech/tiffany/widget/TFSweepActionListView;)V

    .line 552
    const/4 v0, 0x1

    return v0
.end method
