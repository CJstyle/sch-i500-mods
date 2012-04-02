.class Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter$1;
.super Landroid/os/Handler;
.source "FrequentGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter$1;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 98
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 106
    :goto_0
    return-void

    .line 100
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter$1;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 103
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter$1;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->startRequestProcessing()V

    goto :goto_0

    .line 98
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
