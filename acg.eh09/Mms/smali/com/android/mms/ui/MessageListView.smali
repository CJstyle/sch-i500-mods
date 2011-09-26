.class public final Lcom/android/mms/ui/MessageListView;
.super Landroid/widget/ListView;
.source "MessageListView.java"


# instance fields
.field protected mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListView;->setClickable(Z)V

    .line 32
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListView;->setFocusable(Z)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListView;->setClickable(Z)V

    .line 38
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListView;->setFocusable(Z)V

    .line 39
    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v8, 0x1

    .line 62
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->getContext()Landroid/content/Context;

    move-result-object v5

    instance-of v5, v5, Lcom/android/mms/ui/DeleteThreadActivity;

    if-nez v5, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v5

    .line 84
    :goto_0
    return v5

    .line 63
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 84
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v5

    goto :goto_0

    .line 66
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->getSelectedItemPosition()I

    move-result v3

    .line 67
    .local v3, position:I
    if-ltz v3, :cond_1

    .line 68
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->getSelectedView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/mms/ui/MessageListItem;

    .line 69
    .local v4, view:Lcom/android/mms/ui/MessageListItem;
    if-eqz v4, :cond_3

    .line 70
    invoke-virtual {v4, p0}, Lcom/android/mms/ui/MessageListItem;->setListView(Lcom/android/mms/ui/MessageListView;)V

    .line 71
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/mms/ui/MessageListAdapter;

    iput-object v5, p0, Lcom/android/mms/ui/MessageListView;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    .line 73
    invoke-virtual {v4}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 74
    .local v1, ctx:Landroid/content/Context;
    instance-of v5, v1, Lcom/android/mms/ui/DeleteThreadActivity;

    if-eqz v5, :cond_2

    .line 75
    move-object v0, v1

    check-cast v0, Lcom/android/mms/ui/DeleteThreadActivity;

    move-object v2, v0

    .line 77
    .local v2, delActivity:Lcom/android/mms/ui/DeleteThreadActivity;
    iput-boolean v8, v2, Lcom/android/mms/ui/DeleteThreadActivity;->isManualCheck:Z

    .line 80
    .end local v2           #delActivity:Lcom/android/mms/ui/DeleteThreadActivity;
    :cond_2
    iget-object v5, p0, Lcom/android/mms/ui/MessageListView;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    const v6, 0x7f080038

    invoke-virtual {v4, v6}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->getCount()I

    move-result v7

    invoke-virtual {v5, v6, v3, v7}, Lcom/android/mms/ui/MessageListAdapter;->toggle(Landroid/view/View;II)V

    .end local v1           #ctx:Landroid/content/Context;
    :cond_3
    move v5, v8

    .line 82
    goto :goto_0

    .line 63
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 43
    packed-switch p1, :pswitch_data_0

    .line 59
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v3

    :goto_0
    return v3

    .line 45
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/MessageListItem;

    .line 46
    .local v2, view:Lcom/android/mms/ui/MessageListItem;
    if-eqz v2, :cond_0

    .line 49
    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v1

    .line 50
    .local v1, item:Lcom/android/mms/ui/MessageItem;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "clipboard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 53
    .local v0, clip:Landroid/text/ClipboardManager;
    iget-object v3, v1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 54
    const/4 v3, 0x1

    goto :goto_0

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_0
    .end packed-switch
.end method
