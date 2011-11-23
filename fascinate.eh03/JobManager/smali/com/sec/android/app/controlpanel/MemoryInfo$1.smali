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
    .line 44
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/MemoryInfo$1;->this$0:Lcom/sec/android/app/controlpanel/MemoryInfo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 46
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 52
    :goto_0
    return-void

    .line 48
    :pswitch_0
    new-instance v0, Lcom/sec/android/app/controlpanel/MemoryInfo$GetMemInfo;

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/MemoryInfo$1;->this$0:Lcom/sec/android/app/controlpanel/MemoryInfo;

    iget-object v2, p0, Lcom/sec/android/app/controlpanel/MemoryInfo$1;->this$0:Lcom/sec/android/app/controlpanel/MemoryInfo;

    invoke-static {v2}, Lcom/sec/android/app/controlpanel/MemoryInfo;->access$000(Lcom/sec/android/app/controlpanel/MemoryInfo;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/controlpanel/MemoryInfo$GetMemInfo;-><init>(Lcom/sec/android/app/controlpanel/MemoryInfo;Ljava/util/List;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/controlpanel/MemoryInfo$GetMemInfo;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 49
    const/4 v0, 0x1

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/controlpanel/MemoryInfo$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 46
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
