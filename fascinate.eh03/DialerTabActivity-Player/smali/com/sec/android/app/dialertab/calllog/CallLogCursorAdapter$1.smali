.class Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$1;
.super Landroid/os/Handler;
.source "CallLogCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$1;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 137
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 149
    :goto_0
    return-void

    .line 140
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$1;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mScrollStatus:I

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$1;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mCurrentSweptView:Landroid/view/View;

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$1;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$1;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->access$002(Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;Z)Z

    goto :goto_0

    .line 137
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
