.class Lcom/android/music/list/view/MpListReorderView$3;
.super Ljava/lang/Object;
.source "MpListReorderView.java"

# interfaces
.implements Lcom/android/music/list/view/MpListReorderView$DropListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/list/view/MpListReorderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/list/view/MpListReorderView;


# direct methods
.method constructor <init>(Lcom/android/music/list/view/MpListReorderView;)V
    .locals 0
    .parameter

    .prologue
    .line 608
    iput-object p1, p0, Lcom/android/music/list/view/MpListReorderView$3;->this$0:Lcom/android/music/list/view/MpListReorderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drop(II)V
    .locals 4
    .parameter "from"
    .parameter "to"

    .prologue
    .line 610
    iget-object v3, p0, Lcom/android/music/list/view/MpListReorderView$3;->this$0:Lcom/android/music/list/view/MpListReorderView;

    invoke-virtual {v3}, Lcom/android/music/list/view/MpListReorderView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    check-cast v3, Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter;

    invoke-virtual {v3}, Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter;->getArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 614
    .local v0, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter$ViewItem;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter$ViewItem;

    .line 618
    .local v1, fromItem:Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter$ViewItem;
    if-ge p1, p2, :cond_2

    .line 619
    move v2, p1

    .local v2, i:I
    :goto_0
    if-ge v2, p2, :cond_0

    .line 620
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 619
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 622
    :cond_0
    invoke-virtual {v0, p2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 623
    iget-object v3, p0, Lcom/android/music/list/view/MpListReorderView$3;->this$0:Lcom/android/music/list/view/MpListReorderView;

    invoke-virtual {v3}, Lcom/android/music/list/view/MpListReorderView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter;

    invoke-virtual {p0, v0}, Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter;->changeArray(Ljava/util/ArrayList;)V

    .line 649
    .end local v2           #i:I
    :cond_1
    :goto_1
    return-void

    .line 624
    .restart local p0
    :cond_2
    if-le p1, p2, :cond_1

    .line 625
    move v2, p1

    .restart local v2       #i:I
    :goto_2
    if-le v2, p2, :cond_3

    .line 626
    const/4 v3, 0x1

    sub-int v3, v2, v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 625
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 628
    :cond_3
    invoke-virtual {v0, p2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 629
    iget-object v3, p0, Lcom/android/music/list/view/MpListReorderView$3;->this$0:Lcom/android/music/list/view/MpListReorderView;

    invoke-virtual {v3}, Lcom/android/music/list/view/MpListReorderView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter;

    invoke-virtual {p0, v0}, Lcom/android/music/list/adapter/MpListReorderThumnailTwoLineAdapter;->changeArray(Ljava/util/ArrayList;)V

    goto :goto_1
.end method
