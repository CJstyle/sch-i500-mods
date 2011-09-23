.class Lcom/sec/android/app/controlpanel/CpuInfo$1;
.super Landroid/os/Handler;
.source "CpuInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/controlpanel/CpuInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/controlpanel/CpuInfo;


# direct methods
.method constructor <init>(Lcom/sec/android/app/controlpanel/CpuInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/CpuInfo$1;->this$0:Lcom/sec/android/app/controlpanel/CpuInfo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 109
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 115
    :goto_0
    return-void

    .line 111
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/CpuInfo$1;->this$0:Lcom/sec/android/app/controlpanel/CpuInfo;

    invoke-static {v0}, Lcom/sec/android/app/controlpanel/CpuInfo;->access$000(Lcom/sec/android/app/controlpanel/CpuInfo;)V

    .line 112
    const/4 v0, 0x1

    const-wide/16 v1, 0xfa0

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/controlpanel/CpuInfo$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 109
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
