.class public Lcom/android/music/list/adapter/AbstractMpListAdapter$CheckBoxChangedListener;
.super Ljava/lang/Object;
.source "AbstractMpListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/list/adapter/AbstractMpListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CheckBoxChangedListener"
.end annotation


# instance fields
.field mPosition:I

.field final synthetic this$0:Lcom/android/music/list/adapter/AbstractMpListAdapter;


# direct methods
.method public constructor <init>(Lcom/android/music/list/adapter/AbstractMpListAdapter;I)V
    .locals 0
    .parameter
    .parameter "position"

    .prologue
    .line 265
    iput-object p1, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter$CheckBoxChangedListener;->this$0:Lcom/android/music/list/adapter/AbstractMpListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    iput p2, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter$CheckBoxChangedListener;->mPosition:I

    .line 267
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 270
    iget-object v1, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter$CheckBoxChangedListener;->this$0:Lcom/android/music/list/adapter/AbstractMpListAdapter;

    iget-object v1, v1, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mChecked:[Z

    iget v2, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter$CheckBoxChangedListener;->mPosition:I

    iget-object v3, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter$CheckBoxChangedListener;->this$0:Lcom/android/music/list/adapter/AbstractMpListAdapter;

    iget-object v3, v3, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mChecked:[Z

    iget v4, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter$CheckBoxChangedListener;->mPosition:I

    aget-boolean v3, v3, v4

    if-nez v3, :cond_1

    move v3, v5

    :goto_0
    aput-boolean v3, v1, v2

    .line 271
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 272
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter$CheckBoxChangedListener;->this$0:Lcom/android/music/list/adapter/AbstractMpListAdapter;

    iget-object v1, v1, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mChecked:[Z

    iget v2, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter$CheckBoxChangedListener;->mPosition:I

    aget-boolean v1, v1, v2

    if-nez v1, :cond_3

    .line 273
    iget-object v1, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter$CheckBoxChangedListener;->this$0:Lcom/android/music/list/adapter/AbstractMpListAdapter;

    iget-object v1, v1, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mChecked:[Z

    aput-boolean v6, v1, v6

    .line 274
    iget-object v1, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter$CheckBoxChangedListener;->this$0:Lcom/android/music/list/adapter/AbstractMpListAdapter;

    iget v2, v1, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mCheckedCount:I

    sub-int/2addr v2, v5

    iput v2, v1, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mCheckedCount:I

    .line 277
    iget-object v1, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter$CheckBoxChangedListener;->this$0:Lcom/android/music/list/adapter/AbstractMpListAdapter;

    iget v1, v1, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mCheckedCount:I

    if-nez v1, :cond_2

    .line 278
    iput v6, v0, Landroid/os/Message;->what:I

    .line 284
    :goto_1
    iget-object v1, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter$CheckBoxChangedListener;->this$0:Lcom/android/music/list/adapter/AbstractMpListAdapter;

    invoke-virtual {v1}, Lcom/android/music/list/adapter/AbstractMpListAdapter;->notifyDataSetChanged()V

    .line 296
    :cond_0
    :goto_2
    iget-object v1, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter$CheckBoxChangedListener;->this$0:Lcom/android/music/list/adapter/AbstractMpListAdapter;

    iget-object v1, v1, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    iget-object v1, v1, Lcom/android/music/list/view/AbstractMpListView;->mLeftButtonHandler:Lcom/android/music/list/view/AbstractMpListView$LeftButtonHandler;

    invoke-virtual {v1, v0}, Lcom/android/music/list/view/AbstractMpListView$LeftButtonHandler;->sendMessage(Landroid/os/Message;)Z

    .line 299
    return-void

    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    move v3, v6

    .line 270
    goto :goto_0

    .line 280
    .restart local v0       #msg:Landroid/os/Message;
    :cond_2
    iput v5, v0, Landroid/os/Message;->what:I

    goto :goto_1

    .line 286
    :cond_3
    iget-object v1, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter$CheckBoxChangedListener;->this$0:Lcom/android/music/list/adapter/AbstractMpListAdapter;

    iget v2, v1, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mCheckedCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mCheckedCount:I

    .line 287
    iput v5, v0, Landroid/os/Message;->what:I

    .line 288
    iget-object v1, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter$CheckBoxChangedListener;->this$0:Lcom/android/music/list/adapter/AbstractMpListAdapter;

    iget v1, v1, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mCheckedCount:I

    iget-object v2, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter$CheckBoxChangedListener;->this$0:Lcom/android/music/list/adapter/AbstractMpListAdapter;

    iget-object v2, v2, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mChecked:[Z

    array-length v2, v2

    sub-int/2addr v2, v5

    if-ne v1, v2, :cond_0

    .line 289
    iget-object v1, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter$CheckBoxChangedListener;->this$0:Lcom/android/music/list/adapter/AbstractMpListAdapter;

    iget-object v1, v1, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mChecked:[Z

    aput-boolean v5, v1, v6

    .line 290
    iget-object v1, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter$CheckBoxChangedListener;->this$0:Lcom/android/music/list/adapter/AbstractMpListAdapter;

    invoke-virtual {v1}, Lcom/android/music/list/adapter/AbstractMpListAdapter;->notifyDataSetChanged()V

    goto :goto_2
.end method
