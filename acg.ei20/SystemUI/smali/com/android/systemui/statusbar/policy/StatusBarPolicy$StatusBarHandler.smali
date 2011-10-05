.class Lcom/android/systemui/statusbar/policy/StatusBarPolicy$StatusBarHandler;
.super Landroid/os/Handler;
.source "StatusBarPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/StatusBarPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusBarHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V
    .locals 0
    .parameter

    .prologue
    .line 2380
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$StatusBarHandler;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Lcom/android/systemui/statusbar/policy/StatusBarPolicy$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2380
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$StatusBarHandler;-><init>(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 2383
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 2418
    :cond_0
    :goto_0
    return-void

    .line 2385
    :sswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$StatusBarHandler;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$3700(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2386
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$StatusBarHandler;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$3800(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V

    goto :goto_0

    .line 2390
    :sswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$StatusBarHandler;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$3900(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V

    goto :goto_0

    .line 2394
    :sswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$StatusBarHandler;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$2900(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2396
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$StatusBarHandler;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$2500(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)Landroid/app/AlertDialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2398
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$StatusBarHandler;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$StatusBarHandler;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$4000(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$4100(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;ZI)V

    goto :goto_0

    .line 2404
    :sswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$StatusBarHandler;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    const/16 v1, 0xd

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$4200(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;I)V

    goto :goto_0

    .line 2408
    :sswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$StatusBarHandler;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$4300(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)Landroid/media/ToneGenerator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2410
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$StatusBarHandler;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$4300(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)Landroid/media/ToneGenerator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    .line 2411
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$StatusBarHandler;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$4300(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)Landroid/media/ToneGenerator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 2412
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$StatusBarHandler;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$4302(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/media/ToneGenerator;)Landroid/media/ToneGenerator;

    goto :goto_0

    .line 2383
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
        0x40 -> :sswitch_4
        0x41 -> :sswitch_1
    .end sparse-switch
.end method
