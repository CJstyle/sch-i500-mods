.class Lcom/android/music/list/adapter/AbstractMpListAdapter$3;
.super Ljava/lang/Object;
.source "AbstractMpListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/list/adapter/AbstractMpListAdapter;->setCheckBox(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/list/adapter/AbstractMpListAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/music/list/adapter/AbstractMpListAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter$3;->this$0:Lcom/android/music/list/adapter/AbstractMpListAdapter;

    iput p2, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 227
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 228
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter$3;->this$0:Lcom/android/music/list/adapter/AbstractMpListAdapter;

    iget-object v1, v1, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mChecked:[Z

    iget v2, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter$3;->val$position:I

    iget-object v3, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter$3;->this$0:Lcom/android/music/list/adapter/AbstractMpListAdapter;

    iget-object v3, v3, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mChecked:[Z

    iget v4, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter$3;->val$position:I

    aget-boolean v3, v3, v4

    if-nez v3, :cond_1

    move v3, v5

    :goto_0
    aput-boolean v3, v1, v2

    .line 229
    iget-object v1, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter$3;->this$0:Lcom/android/music/list/adapter/AbstractMpListAdapter;

    iget-object v1, v1, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mChecked:[Z

    iget v2, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter$3;->val$position:I

    aget-boolean v1, v1, v2

    if-nez v1, :cond_3

    .line 230
    iget-object v1, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter$3;->this$0:Lcom/android/music/list/adapter/AbstractMpListAdapter;

    iget-object v1, v1, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mChecked:[Z

    aput-boolean v6, v1, v6

    .line 231
    iget-object v1, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter$3;->this$0:Lcom/android/music/list/adapter/AbstractMpListAdapter;

    iget v2, v1, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mCheckedCount:I

    sub-int/2addr v2, v5

    iput v2, v1, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mCheckedCount:I

    .line 233
    iget-object v1, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter$3;->this$0:Lcom/android/music/list/adapter/AbstractMpListAdapter;

    iget v1, v1, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mCheckedCount:I

    if-nez v1, :cond_2

    .line 234
    iput v6, v0, Landroid/os/Message;->what:I

    .line 247
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter$3;->this$0:Lcom/android/music/list/adapter/AbstractMpListAdapter;

    invoke-virtual {v1}, Lcom/android/music/list/adapter/AbstractMpListAdapter;->notifyDataSetChanged()V

    .line 250
    iget-object v1, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter$3;->this$0:Lcom/android/music/list/adapter/AbstractMpListAdapter;

    iget-object v1, v1, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    iget-object v1, v1, Lcom/android/music/list/view/AbstractMpListView;->mLeftButtonHandler:Lcom/android/music/list/view/AbstractMpListView$LeftButtonHandler;

    invoke-virtual {v1, v0}, Lcom/android/music/list/view/AbstractMpListView$LeftButtonHandler;->sendMessage(Landroid/os/Message;)Z

    .line 252
    return-void

    :cond_1
    move v3, v6

    .line 228
    goto :goto_0

    .line 236
    :cond_2
    iput v5, v0, Landroid/os/Message;->what:I

    goto :goto_1

    .line 240
    :cond_3
    iget-object v1, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter$3;->this$0:Lcom/android/music/list/adapter/AbstractMpListAdapter;

    iget v2, v1, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mCheckedCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mCheckedCount:I

    .line 241
    iput v5, v0, Landroid/os/Message;->what:I

    .line 242
    iget-object v1, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter$3;->this$0:Lcom/android/music/list/adapter/AbstractMpListAdapter;

    iget v1, v1, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mCheckedCount:I

    iget-object v2, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter$3;->this$0:Lcom/android/music/list/adapter/AbstractMpListAdapter;

    iget-object v2, v2, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mChecked:[Z

    array-length v2, v2

    sub-int/2addr v2, v5

    if-ne v1, v2, :cond_0

    .line 243
    iget-object v1, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter$3;->this$0:Lcom/android/music/list/adapter/AbstractMpListAdapter;

    iget-object v1, v1, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mChecked:[Z

    aput-boolean v5, v1, v6

    .line 244
    iget-object v1, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter$3;->this$0:Lcom/android/music/list/adapter/AbstractMpListAdapter;

    invoke-virtual {v1}, Lcom/android/music/list/adapter/AbstractMpListAdapter;->notifyDataSetChanged()V

    goto :goto_1
.end method
