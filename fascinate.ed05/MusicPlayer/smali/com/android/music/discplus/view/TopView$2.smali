.class Lcom/android/music/discplus/view/TopView$2;
.super Ljava/lang/Object;
.source "TopView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/discplus/view/TopView;->initTopView()V
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
    .line 150
    iput-object p1, p0, Lcom/android/music/discplus/view/TopView$2;->this$0:Lcom/android/music/discplus/view/TopView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "view"

    .prologue
    const/4 v8, 0x0

    .line 151
    iget-object v6, p0, Lcom/android/music/discplus/view/TopView$2;->this$0:Lcom/android/music/discplus/view/TopView;

    invoke-static {v6}, Lcom/android/music/discplus/view/TopView;->access$400(Lcom/android/music/discplus/view/TopView;)Landroid/widget/LinearLayout;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 152
    iget-object v6, p0, Lcom/android/music/discplus/view/TopView$2;->this$0:Lcom/android/music/discplus/view/TopView;

    invoke-static {v6}, Lcom/android/music/discplus/view/TopView;->access$400(Lcom/android/music/discplus/view/TopView;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 153
    iget-object v6, p0, Lcom/android/music/discplus/view/TopView$2;->this$0:Lcom/android/music/discplus/view/TopView;

    invoke-static {v6}, Lcom/android/music/discplus/view/TopView;->access$400(Lcom/android/music/discplus/view/TopView;)Landroid/widget/LinearLayout;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 175
    :cond_0
    return-void

    .line 155
    :cond_1
    iget-object v6, p0, Lcom/android/music/discplus/view/TopView$2;->this$0:Lcom/android/music/discplus/view/TopView;

    invoke-static {v6}, Lcom/android/music/discplus/view/TopView;->access$400(Lcom/android/music/discplus/view/TopView;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 158
    iget-object v6, p0, Lcom/android/music/discplus/view/TopView$2;->this$0:Lcom/android/music/discplus/view/TopView;

    invoke-static {v6}, Lcom/android/music/discplus/view/TopView;->access$400(Lcom/android/music/discplus/view/TopView;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    .line 159
    .local v4, rowCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 160
    iget-object v6, p0, Lcom/android/music/discplus/view/TopView$2;->this$0:Lcom/android/music/discplus/view/TopView;

    invoke-static {v6}, Lcom/android/music/discplus/view/TopView;->access$400(Lcom/android/music/discplus/view/TopView;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 161
    .local v5, viewGroup:Landroid/view/ViewGroup;
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 162
    .local v0, childCount:I
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    if-ge v3, v0, :cond_4

    .line 163
    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 164
    .local v1, childView:Landroid/view/View;
    instance-of v6, v1, Landroid/widget/Button;

    if-eqz v6, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_2

    .line 165
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Lcom/android/music/discplus/view/TopView$2;->this$0:Lcom/android/music/discplus/view/TopView;

    invoke-static {v7}, Lcom/android/music/discplus/view/TopView;->access$000(Lcom/android/music/discplus/view/TopView;)I

    move-result v7

    if-ne v6, v7, :cond_3

    .line 166
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/view/View;->setSelected(Z)V

    .line 162
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 168
    :cond_3
    invoke-virtual {v1, v8}, Landroid/view/View;->setSelected(Z)V

    goto :goto_2

    .line 159
    .end local v1           #childView:Landroid/view/View;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
