.class Lcom/sec/android/app/controlpanel/MemoryInfo$1;
.super Landroid/os/Handler;
.source "MemoryInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/controlpanel/MemoryInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/controlpanel/MemoryInfo;


# direct methods
.method constructor <init>(Lcom/sec/android/app/controlpanel/MemoryInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/MemoryInfo$1;->this$0:Lcom/sec/android/app/controlpanel/MemoryInfo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 55
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 69
    :goto_0
    :pswitch_0
    return-void

    .line 57
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/MemoryInfo$1;->this$0:Lcom/sec/android/app/controlpanel/MemoryInfo;

    invoke-static {v0}, Lcom/sec/android/app/controlpanel/MemoryInfo;->access$000(Lcom/sec/android/app/controlpanel/MemoryInfo;)Lcom/sec/android/app/controlpanel/MemoryInfo$TaskRunner;

    move-result-object v0

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/MemoryInfo$1;->this$0:Lcom/sec/android/app/controlpanel/MemoryInfo;

    new-instance v1, Lcom/sec/android/app/controlpanel/MemoryInfo$TaskRunner;

    iget-object v2, p0, Lcom/sec/android/app/controlpanel/MemoryInfo$1;->this$0:Lcom/sec/android/app/controlpanel/MemoryInfo;

    iget-object v3, p0, Lcom/sec/android/app/controlpanel/MemoryInfo$1;->this$0:Lcom/sec/android/app/controlpanel/MemoryInfo;

    invoke-static {v3}, Lcom/sec/android/app/controlpanel/MemoryInfo;->access$100(Lcom/sec/android/app/controlpanel/MemoryInfo;)Ljava/util/List;

    move-result-object v3

    const-string v4, "MemoryInfoTh"

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/app/controlpanel/MemoryInfo$TaskRunner;-><init>(Lcom/sec/android/app/controlpanel/MemoryInfo;Ljava/util/List;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/sec/android/app/controlpanel/MemoryInfo;->access$002(Lcom/sec/android/app/controlpanel/MemoryInfo;Lcom/sec/android/app/controlpanel/MemoryInfo$TaskRunner;)Lcom/sec/android/app/controlpanel/MemoryInfo$TaskRunner;

    goto :goto_0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/MemoryInfo$1;->this$0:Lcom/sec/android/app/controlpanel/MemoryInfo;

    invoke-static {v0}, Lcom/sec/android/app/controlpanel/MemoryInfo;->access$000(Lcom/sec/android/app/controlpanel/MemoryInfo;)Lcom/sec/android/app/controlpanel/MemoryInfo$TaskRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/controlpanel/MemoryInfo$TaskRunner;->setAbort()V

    .line 61
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/MemoryInfo$1;->this$0:Lcom/sec/android/app/controlpanel/MemoryInfo;

    invoke-static {v0}, Lcom/sec/android/app/controlpanel/MemoryInfo;->access$000(Lcom/sec/android/app/controlpanel/MemoryInfo;)Lcom/sec/android/app/controlpanel/MemoryInfo$TaskRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/controlpanel/MemoryInfo$TaskRunner;->run()V

    goto :goto_0

    .line 65
    :pswitch_2
    const/4 v0, 0x2

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/controlpanel/MemoryInfo$1;->sendEmptyMessageDelayed(IJ)Z

    .line 66
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/MemoryInfo$1;->this$0:Lcom/sec/android/app/controlpanel/MemoryInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/controlpanel/MemoryInfo;->refresh()V

    goto :goto_0

    .line 55
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
