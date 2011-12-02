.class Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$EdgeAutoDragRunnable;
.super Ljava/lang/Object;
.source "TFDndLinearHScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EdgeAutoDragRunnable"
.end annotation


# instance fields
.field private mDirection:I

.field final synthetic this$0:Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;


# direct methods
.method private constructor <init>(Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;)V
    .locals 0
    .parameter

    .prologue
    .line 596
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$EdgeAutoDragRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 596
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$EdgeAutoDragRunnable;-><init>(Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 604
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$EdgeAutoDragRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;

    invoke-static {v1}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->access$300(Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 605
    const/4 v0, 0x0

    .line 607
    .local v0, delta:I
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$EdgeAutoDragRunnable;->mDirection:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 608
    const/high16 v1, -0x3ee0

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$EdgeAutoDragRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;

    invoke-static {v2}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->access$400(Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 613
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 614
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$EdgeAutoDragRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->scrollBy(II)V

    .line 615
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$EdgeAutoDragRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$EdgeAutoDragRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;

    invoke-static {v2}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->access$500(Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;)I

    move-result v2

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$EdgeAutoDragRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;

    invoke-static {v3}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->access$600(Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;)F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->access$700(Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;I)V

    .line 616
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$EdgeAutoDragRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, p0, v2, v3}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 619
    .end local v0           #delta:I
    :cond_1
    return-void

    .line 609
    .restart local v0       #delta:I
    :cond_2
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$EdgeAutoDragRunnable;->mDirection:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 610
    const/high16 v1, 0x4120

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$EdgeAutoDragRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;

    invoke-static {v2}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->access$400(Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v0, v1

    goto :goto_0
.end method

.method public setDirection(I)V
    .locals 0
    .parameter "direction"

    .prologue
    .line 600
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$EdgeAutoDragRunnable;->mDirection:I

    .line 601
    return-void
.end method
