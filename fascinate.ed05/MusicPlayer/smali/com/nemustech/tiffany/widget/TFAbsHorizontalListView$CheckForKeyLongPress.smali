.class Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$CheckForKeyLongPress;
.super Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$WindowRunnnable;
.source "TFAbsHorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckForKeyLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;


# direct methods
.method private constructor <init>(Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;)V
    .locals 1
    .parameter

    .prologue
    .line 1766
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$CheckForKeyLongPress;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$WindowRunnnable;-><init>(Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1766
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$CheckForKeyLongPress;-><init>(Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1768
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$CheckForKeyLongPress;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    invoke-virtual {v3}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$CheckForKeyLongPress;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    iget v3, v3, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSelectedPosition:I

    if-ltz v3, :cond_1

    .line 1769
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$CheckForKeyLongPress;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    iget v3, v3, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSelectedPosition:I

    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$CheckForKeyLongPress;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    iget v4, v4, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mFirstPosition:I

    sub-int v1, v3, v4

    .line 1770
    .local v1, index:I
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$CheckForKeyLongPress;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    invoke-virtual {v3, v1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1772
    .local v2, v:Landroid/view/View;
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$CheckForKeyLongPress;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    iget-boolean v3, v3, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mDataChanged:Z

    if-nez v3, :cond_2

    .line 1773
    const/4 v0, 0x0

    .line 1774
    .local v0, handled:Z
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$CheckForKeyLongPress;->sameWindow()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1775
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$CheckForKeyLongPress;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$CheckForKeyLongPress;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    iget v4, v4, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSelectedPosition:I

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$CheckForKeyLongPress;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    iget-wide v5, v5, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSelectedRowId:J

    invoke-static {v3, v2, v4, v5, v6}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->access$500(Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;Landroid/view/View;IJ)Z

    move-result v0

    .line 1777
    :cond_0
    if-eqz v0, :cond_1

    .line 1778
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$CheckForKeyLongPress;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    invoke-virtual {v3, v7}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->setPressed(Z)V

    .line 1779
    invoke-virtual {v2, v7}, Landroid/view/View;->setPressed(Z)V

    .line 1786
    .end local v0           #handled:Z
    .end local v1           #index:I
    .end local v2           #v:Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 1782
    .restart local v1       #index:I
    .restart local v2       #v:Landroid/view/View;
    :cond_2
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$CheckForKeyLongPress;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    invoke-virtual {v3, v7}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->setPressed(Z)V

    .line 1783
    if-eqz v2, :cond_1

    invoke-virtual {v2, v7}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0
.end method
