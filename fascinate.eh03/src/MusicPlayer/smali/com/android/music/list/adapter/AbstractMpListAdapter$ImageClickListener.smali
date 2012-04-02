.class public Lcom/android/music/list/adapter/AbstractMpListAdapter$ImageClickListener;
.super Ljava/lang/Object;
.source "AbstractMpListAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/list/adapter/AbstractMpListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ImageClickListener"
.end annotation


# instance fields
.field itemId:I

.field final synthetic this$0:Lcom/android/music/list/adapter/AbstractMpListAdapter;

.field view:Lcom/android/music/list/view/MpView;


# direct methods
.method public constructor <init>(Lcom/android/music/list/adapter/AbstractMpListAdapter;ILcom/android/music/list/view/MpView;)V
    .locals 1
    .parameter
    .parameter "id"
    .parameter "view"

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter$ImageClickListener;->this$0:Lcom/android/music/list/adapter/AbstractMpListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter$ImageClickListener;->itemId:I

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter$ImageClickListener;->view:Lcom/android/music/list/view/MpView;

    .line 157
    iput p2, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter$ImageClickListener;->itemId:I

    .line 158
    iput-object p3, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter$ImageClickListener;->view:Lcom/android/music/list/view/MpView;

    .line 159
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 170
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 173
    iget-object v0, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter$ImageClickListener;->view:Lcom/android/music/list/view/MpView;

    invoke-virtual {v0, v3}, Lcom/android/music/list/view/MpView;->SetEnablePress(Z)V

    .line 174
    iget-object v0, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter$ImageClickListener;->view:Lcom/android/music/list/view/MpView;

    invoke-virtual {v0}, Lcom/android/music/list/view/MpView;->invalidate()V

    .line 175
    sget v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mPressId:I

    iget v1, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter$ImageClickListener;->itemId:I

    if-ne v0, v1, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter$ImageClickListener;->this$0:Lcom/android/music/list/adapter/AbstractMpListAdapter;

    iget-object v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    iget v1, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter$ImageClickListener;->itemId:I

    invoke-virtual {v0, v1}, Lcom/android/music/list/view/AbstractMpListView;->timerStart(I)V

    .line 191
    :cond_0
    :goto_0
    return v2

    .line 178
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 181
    iget-object v0, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter$ImageClickListener;->view:Lcom/android/music/list/view/MpView;

    invoke-virtual {v0, v2}, Lcom/android/music/list/view/MpView;->SetEnablePress(Z)V

    .line 182
    iget-object v0, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter$ImageClickListener;->view:Lcom/android/music/list/view/MpView;

    invoke-virtual {v0}, Lcom/android/music/list/view/MpView;->invalidate()V

    .line 183
    iget v0, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter$ImageClickListener;->itemId:I

    sput v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mPressId:I

    goto :goto_0

    .line 185
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter$ImageClickListener;->view:Lcom/android/music/list/view/MpView;

    invoke-virtual {v0, v3}, Lcom/android/music/list/view/MpView;->SetEnablePress(Z)V

    .line 189
    iget-object v0, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter$ImageClickListener;->view:Lcom/android/music/list/view/MpView;

    invoke-virtual {v0}, Lcom/android/music/list/view/MpView;->invalidate()V

    goto :goto_0
.end method
