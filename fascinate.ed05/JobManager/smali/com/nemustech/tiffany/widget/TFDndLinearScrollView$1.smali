.class Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$1;
.super Ljava/lang/Object;
.source "TFDndLinearScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;)V
    .locals 0
    .parameter

    .prologue
    .line 629
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$1;->this$0:Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 630
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$1;->this$0:Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;

    invoke-static {v2}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->access$100(Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;)Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 631
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$1;->this$0:Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;

    invoke-static {v2}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->access$200(Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;)Ljava/util/ArrayList;

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

    .line 632
    .local v1, vRemove:Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 633
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$1;->this$0:Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;

    invoke-static {v2}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->access$100(Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;)Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$TFAnimatedLinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 636
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #vRemove:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView$1;->this$0:Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;

    invoke-static {v2}, Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;->access$200(Lcom/nemustech/tiffany/widget/TFDndLinearScrollView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 637
    return-void
.end method
