.class Lcom/android/music/discplus/view/TopView$4;
.super Ljava/lang/Object;
.source "TopView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/discplus/view/TopView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/discplus/view/TopView;


# direct methods
.method constructor <init>(Lcom/android/music/discplus/view/TopView;)V
    .locals 0
    .parameter

    .prologue
    .line 368
    iput-object p1, p0, Lcom/android/music/discplus/view/TopView$4;->this$0:Lcom/android/music/discplus/view/TopView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const/4 v5, 0x0

    .line 370
    iget-object v2, p0, Lcom/android/music/discplus/view/TopView$4;->this$0:Lcom/android/music/discplus/view/TopView;

    invoke-static {v2}, Lcom/android/music/discplus/view/TopView;->access$500(Lcom/android/music/discplus/view/TopView;)Landroid/widget/Button;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/music/discplus/view/TopView$4;->this$0:Lcom/android/music/discplus/view/TopView;

    invoke-static {v2}, Lcom/android/music/discplus/view/TopView;->access$400(Lcom/android/music/discplus/view/TopView;)Landroid/widget/LinearLayout;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 371
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 372
    .local v1, type:Ljava/lang/Integer;
    iget-object v2, p0, Lcom/android/music/discplus/view/TopView$4;->this$0:Lcom/android/music/discplus/view/TopView;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/music/discplus/view/TopView;->access$600(Lcom/android/music/discplus/view/TopView;I)I

    move-result v0

    .line 373
    .local v0, resId:I
    const/4 v2, -0x1

    if-le v0, v2, :cond_0

    .line 375
    iget-object v2, p0, Lcom/android/music/discplus/view/TopView$4;->this$0:Lcom/android/music/discplus/view/TopView;

    invoke-static {v2}, Lcom/android/music/discplus/view/TopView;->access$700(Lcom/android/music/discplus/view/TopView;)Lcom/android/music/discplus/data/DiscPlusData;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/music/discplus/data/DiscPlusData;->setDiscPlusNowPosition(I)V

    .line 377
    iget-object v2, p0, Lcom/android/music/discplus/view/TopView$4;->this$0:Lcom/android/music/discplus/view/TopView;

    invoke-static {v2}, Lcom/android/music/discplus/view/TopView;->access$500(Lcom/android/music/discplus/view/TopView;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(I)V

    .line 378
    iget-object v2, p0, Lcom/android/music/discplus/view/TopView$4;->this$0:Lcom/android/music/discplus/view/TopView;

    invoke-static {v2}, Lcom/android/music/discplus/view/TopView;->access$400(Lcom/android/music/discplus/view/TopView;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 379
    iget-object v2, p0, Lcom/android/music/discplus/view/TopView$4;->this$0:Lcom/android/music/discplus/view/TopView;

    const/4 v3, 0x1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/music/discplus/view/TopView;->changeTopView(ZZI)V

    .line 382
    .end local v0           #resId:I
    .end local v1           #type:Ljava/lang/Integer;
    :cond_0
    return-void
.end method
