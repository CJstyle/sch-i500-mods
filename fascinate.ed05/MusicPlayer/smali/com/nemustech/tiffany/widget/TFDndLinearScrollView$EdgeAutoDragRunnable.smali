.class Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$EdgeAutoDragRunnable;
.super Ljava/lang/Object;
.source "TFDndLinearScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EdgeAutoDragRunnable"
.end annotation


# instance fields
.field private mDirection:I

.field final synthetic this$0:Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;


# direct methods
.method private constructor <init>(Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;)V
    .locals 0
    .parameter

    .prologue
    .line 665
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$EdgeAutoDragRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 665
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$EdgeAutoDragRunnable;-><init>(Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 673
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$EdgeAutoDragRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;

    invoke-static {v2}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->access$300(Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 674
    const/4 v0, 0x0

    .line 676
    .local v0, delta:I
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$EdgeAutoDragRunnable;->mDirection:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 677
    const/high16 v2, -0x3ee0

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$EdgeAutoDragRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;

    invoke-static {v3}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->access$400(Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 682
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 683
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$EdgeAutoDragRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;

    invoke-virtual {v2}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->getOrientation()I

    move-result v1

    .line 684
    .local v1, orientation:I
    if-nez v1, :cond_3

    .line 685
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$EdgeAutoDragRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;

    invoke-virtual {v2, v0, v5}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->scrollBy(II)V

    .line 686
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$EdgeAutoDragRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$EdgeAutoDragRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;

    invoke-static {v3}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->access$500(Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;)I

    move-result v3

    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$EdgeAutoDragRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;

    invoke-static {v4}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->access$600(Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;)F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v3, v4

    invoke-static {v2, v3, v5}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->access$700(Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;II)V

    .line 691
    :goto_1
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$EdgeAutoDragRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;

    const-wide/16 v3, 0x32

    invoke-virtual {v2, p0, v3, v4}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 694
    .end local v0           #delta:I
    .end local v1           #orientation:I
    :cond_1
    return-void

    .line 678
    .restart local v0       #delta:I
    :cond_2
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$EdgeAutoDragRunnable;->mDirection:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 679
    const/high16 v2, 0x4120

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$EdgeAutoDragRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;

    invoke-static {v3}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->access$400(Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v0, v2

    goto :goto_0

    .line 688
    .restart local v1       #orientation:I
    :cond_3
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$EdgeAutoDragRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;

    invoke-virtual {v2, v5, v0}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->scrollBy(II)V

    .line 689
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$EdgeAutoDragRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$EdgeAutoDragRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;

    invoke-static {v3}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->access$800(Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;)I

    move-result v3

    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$EdgeAutoDragRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;

    invoke-static {v4}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->access$900(Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;)F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v3, v4

    invoke-static {v2, v5, v3}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->access$700(Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;II)V

    goto :goto_1
.end method

.method public setDirection(I)V
    .locals 0
    .parameter "direction"

    .prologue
    .line 669
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$EdgeAutoDragRunnable;->mDirection:I

    .line 670
    return-void
.end method
