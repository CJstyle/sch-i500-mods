.class Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter$1;
.super Landroid/os/Handler;
.source "FrequentCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter$1;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 96
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 104
    :goto_0
    return-void

    .line 98
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter$1;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 101
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter$1;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->startRequestProcessing()V

    goto :goto_0

    .line 96
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
