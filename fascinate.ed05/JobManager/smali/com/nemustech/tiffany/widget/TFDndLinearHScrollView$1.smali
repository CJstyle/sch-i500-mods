.class Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$1;
.super Ljava/lang/Object;
.source "TFDndLinearHScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;)V
    .locals 0
    .parameter

    .prologue
    .line 565
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$1;->this$0:Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 566
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$1;->this$0:Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;

    invoke-static {v2}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->access$100(Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;)Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 567
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$1;->this$0:Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;

    invoke-static {v2}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->access$200(Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 568
    .local v1, vRemove:Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 569
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$1;->this$0:Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;

    invoke-static {v2}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->access$100(Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;)Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$TFAnimatedLinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 572
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #vRemove:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView$1;->this$0:Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;

    invoke-static {v2}, Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;->access$200(Lcom/nemustech/tiffany/widget/TFDndLinearHScrollView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 573
    return-void
.end method
