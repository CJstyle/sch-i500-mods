.class Lcom/android/music/list/adapter/MpListGroupAdapter$CheckBoxChangedListener;
.super Ljava/lang/Object;
.source "MpListGroupAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/list/adapter/MpListGroupAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckBoxChangedListener"
.end annotation


# instance fields
.field mPosition:I

.field mRealPosition:I

.field final synthetic this$0:Lcom/android/music/list/adapter/MpListGroupAdapter;


# direct methods
.method public constructor <init>(Lcom/android/music/list/adapter/MpListGroupAdapter;I)V
    .locals 2
    .parameter
    .parameter "position"

    .prologue
    .line 498
    iput-object p1, p0, Lcom/android/music/list/adapter/MpListGroupAdapter$CheckBoxChangedListener;->this$0:Lcom/android/music/list/adapter/MpListGroupAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 499
    iput p2, p0, Lcom/android/music/list/adapter/MpListGroupAdapter$CheckBoxChangedListener;->mPosition:I

    .line 500
    invoke-static {p1}, Lcom/android/music/list/adapter/MpListGroupAdapter;->access$000(Lcom/android/music/list/adapter/MpListGroupAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/android/music/list/adapter/MpListGroupAdapter$CheckBoxChangedListener;->mPosition:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;

    iget v0, v0, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;->mIndex:I

    iput v0, p0, Lcom/android/music/list/adapter/MpListGroupAdapter$CheckBoxChangedListener;->mRealPosition:I

    .line 501
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 504
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 505
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/music/list/adapter/MpListGroupAdapter$CheckBoxChangedListener;->this$0:Lcom/android/music/list/adapter/MpListGroupAdapter;

    invoke-static {v1}, Lcom/android/music/list/adapter/MpListGroupAdapter;->access$000(Lcom/android/music/list/adapter/MpListGroupAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/android/music/list/adapter/MpListGroupAdapter$CheckBoxChangedListener;->mPosition:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;

    iget-object v2, p0, Lcom/android/music/list/adapter/MpListGroupAdapter$CheckBoxChangedListener;->this$0:Lcom/android/music/list/adapter/MpListGroupAdapter;

    invoke-static {v2}, Lcom/android/music/list/adapter/MpListGroupAdapter;->access$000(Lcom/android/music/list/adapter/MpListGroupAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Lcom/android/music/list/adapter/MpListGroupAdapter$CheckBoxChangedListener;->mPosition:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;

    iget-boolean v2, v2, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;->mCheck:Z

    if-nez v2, :cond_1

    move v2, v6

    :goto_0
    iput-boolean v2, v1, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;->mCheck:Z

    .line 506
    iget-object v1, p0, Lcom/android/music/list/adapter/MpListGroupAdapter$CheckBoxChangedListener;->this$0:Lcom/android/music/list/adapter/MpListGroupAdapter;

    invoke-static {v1}, Lcom/android/music/list/adapter/MpListGroupAdapter;->access$100(Lcom/android/music/list/adapter/MpListGroupAdapter;)[Z

    move-result-object v2

    iget v3, p0, Lcom/android/music/list/adapter/MpListGroupAdapter$CheckBoxChangedListener;->mRealPosition:I

    iget-object v1, p0, Lcom/android/music/list/adapter/MpListGroupAdapter$CheckBoxChangedListener;->this$0:Lcom/android/music/list/adapter/MpListGroupAdapter;

    invoke-static {v1}, Lcom/android/music/list/adapter/MpListGroupAdapter;->access$000(Lcom/android/music/list/adapter/MpListGroupAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget v4, p0, Lcom/android/music/list/adapter/MpListGroupAdapter$CheckBoxChangedListener;->mPosition:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;

    iget-boolean v1, v1, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;->mCheck:Z

    aput-boolean v1, v2, v3

    .line 507
    iget-object v1, p0, Lcom/android/music/list/adapter/MpListGroupAdapter$CheckBoxChangedListener;->this$0:Lcom/android/music/list/adapter/MpListGroupAdapter;

    invoke-static {v1}, Lcom/android/music/list/adapter/MpListGroupAdapter;->access$100(Lcom/android/music/list/adapter/MpListGroupAdapter;)[Z

    move-result-object v1

    iget v2, p0, Lcom/android/music/list/adapter/MpListGroupAdapter$CheckBoxChangedListener;->mRealPosition:I

    aget-boolean v1, v1, v2

    if-nez v1, :cond_3

    .line 508
    iget-object v1, p0, Lcom/android/music/list/adapter/MpListGroupAdapter$CheckBoxChangedListener;->this$0:Lcom/android/music/list/adapter/MpListGroupAdapter;

    invoke-static {v1}, Lcom/android/music/list/adapter/MpListGroupAdapter;->access$100(Lcom/android/music/list/adapter/MpListGroupAdapter;)[Z

    move-result-object v1

    aput-boolean v5, v1, v5

    .line 509
    iget-object v1, p0, Lcom/android/music/list/adapter/MpListGroupAdapter$CheckBoxChangedListener;->this$0:Lcom/android/music/list/adapter/MpListGroupAdapter;

    invoke-static {v1}, Lcom/android/music/list/adapter/MpListGroupAdapter;->access$000(Lcom/android/music/list/adapter/MpListGroupAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;

    iput-boolean v5, v1, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;->mCheck:Z

    .line 510
    iget-object v1, p0, Lcom/android/music/list/adapter/MpListGroupAdapter$CheckBoxChangedListener;->this$0:Lcom/android/music/list/adapter/MpListGroupAdapter;

    invoke-static {v1}, Lcom/android/music/list/adapter/MpListGroupAdapter;->access$210(Lcom/android/music/list/adapter/MpListGroupAdapter;)I

    .line 512
    iget-object v1, p0, Lcom/android/music/list/adapter/MpListGroupAdapter$CheckBoxChangedListener;->this$0:Lcom/android/music/list/adapter/MpListGroupAdapter;

    invoke-static {v1}, Lcom/android/music/list/adapter/MpListGroupAdapter;->access$200(Lcom/android/music/list/adapter/MpListGroupAdapter;)I

    move-result v1

    if-nez v1, :cond_2

    .line 513
    iput v5, v0, Landroid/os/Message;->what:I

    .line 528
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/music/list/adapter/MpListGroupAdapter$CheckBoxChangedListener;->this$0:Lcom/android/music/list/adapter/MpListGroupAdapter;

    invoke-static {v1}, Lcom/android/music/list/adapter/MpListGroupAdapter;->access$300(Lcom/android/music/list/adapter/MpListGroupAdapter;)Lcom/android/music/list/view/AbstractMpListView;

    move-result-object v1

    iget-object v1, v1, Lcom/android/music/list/view/AbstractMpListView;->mLeftButtonHandler:Lcom/android/music/list/view/AbstractMpListView$LeftButtonHandler;

    invoke-virtual {v1, v0}, Lcom/android/music/list/view/AbstractMpListView$LeftButtonHandler;->sendMessage(Landroid/os/Message;)Z

    .line 530
    iget-object v1, p0, Lcom/android/music/list/adapter/MpListGroupAdapter$CheckBoxChangedListener;->this$0:Lcom/android/music/list/adapter/MpListGroupAdapter;

    invoke-virtual {v1}, Lcom/android/music/list/adapter/MpListGroupAdapter;->notifyDataSetChanged()V

    .line 531
    return-void

    :cond_1
    move v2, v5

    .line 505
    goto :goto_0

    .line 515
    :cond_2
    iput v6, v0, Landroid/os/Message;->what:I

    goto :goto_1

    .line 519
    :cond_3
    iget-object v1, p0, Lcom/android/music/list/adapter/MpListGroupAdapter$CheckBoxChangedListener;->this$0:Lcom/android/music/list/adapter/MpListGroupAdapter;

    invoke-static {v1}, Lcom/android/music/list/adapter/MpListGroupAdapter;->access$208(Lcom/android/music/list/adapter/MpListGroupAdapter;)I

    .line 520
    iput v6, v0, Landroid/os/Message;->what:I

    .line 521
    iget-object v1, p0, Lcom/android/music/list/adapter/MpListGroupAdapter$CheckBoxChangedListener;->this$0:Lcom/android/music/list/adapter/MpListGroupAdapter;

    invoke-static {v1}, Lcom/android/music/list/adapter/MpListGroupAdapter;->access$200(Lcom/android/music/list/adapter/MpListGroupAdapter;)I

    move-result v1

    iget-object v2, p0, Lcom/android/music/list/adapter/MpListGroupAdapter$CheckBoxChangedListener;->this$0:Lcom/android/music/list/adapter/MpListGroupAdapter;

    invoke-static {v2}, Lcom/android/music/list/adapter/MpListGroupAdapter;->access$100(Lcom/android/music/list/adapter/MpListGroupAdapter;)[Z

    move-result-object v2

    array-length v2, v2

    sub-int/2addr v2, v6

    if-ne v1, v2, :cond_0

    .line 522
    iget-object v1, p0, Lcom/android/music/list/adapter/MpListGroupAdapter$CheckBoxChangedListener;->this$0:Lcom/android/music/list/adapter/MpListGroupAdapter;

    invoke-static {v1}, Lcom/android/music/list/adapter/MpListGroupAdapter;->access$100(Lcom/android/music/list/adapter/MpListGroupAdapter;)[Z

    move-result-object v1

    aput-boolean v6, v1, v5

    .line 523
    iget-object v1, p0, Lcom/android/music/list/adapter/MpListGroupAdapter$CheckBoxChangedListener;->this$0:Lcom/android/music/list/adapter/MpListGroupAdapter;

    invoke-static {v1}, Lcom/android/music/list/adapter/MpListGroupAdapter;->access$000(Lcom/android/music/list/adapter/MpListGroupAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;

    iput-boolean v6, v1, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;->mCheck:Z

    goto :goto_1
.end method
