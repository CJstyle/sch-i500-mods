.class Lcom/sec/android/app/controlpanel/MemoryInfo$2;
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
    .line 73
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/MemoryInfo$2;->this$0:Lcom/sec/android/app/controlpanel/MemoryInfo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 74
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 80
    :goto_0
    return-void

    .line 76
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/MemoryInfo$2;->this$0:Lcom/sec/android/app/controlpanel/MemoryInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/controlpanel/MemoryInfo;->refresh()V

    .line 77
    const/4 v0, 0x1

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/controlpanel/MemoryInfo$2;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 74
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
