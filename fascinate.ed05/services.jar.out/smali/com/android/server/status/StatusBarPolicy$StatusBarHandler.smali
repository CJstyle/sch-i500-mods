.class Lcom/android/server/status/StatusBarPolicy$StatusBarHandler;
.super Landroid/os/Handler;
.source "StatusBarPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/status/StatusBarPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusBarHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/status/StatusBarPolicy;


# direct methods
.method private constructor <init>(Lcom/android/server/status/StatusBarPolicy;)V
    .locals 0
    .parameter

    .prologue
    .line 2490
    iput-object p1, p0, Lcom/android/server/status/StatusBarPolicy$StatusBarHandler;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/status/StatusBarPolicy;Lcom/android/server/status/StatusBarPolicy$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2490
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarPolicy$StatusBarHandler;-><init>(Lcom/android/server/status/StatusBarPolicy;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/16 v1, 0xd

    .line 2493
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 2529
    :cond_0
    :goto_0
    return-void

    .line 2495
    :sswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/status/StatusBarPolicy$StatusBarHandler;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v1}, Lcom/android/server/status/StatusBarPolicy;->access$4400(Lcom/android/server/status/StatusBarPolicy;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2496
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy$StatusBarHandler;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/server/status/StatusBarPolicy;->access$4500(Lcom/android/server/status/StatusBarPolicy;)V

    goto :goto_0

    .line 2503
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy$StatusBarHandler;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/server/status/StatusBarPolicy;->access$3000(Lcom/android/server/status/StatusBarPolicy;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2505
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy$StatusBarHandler;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/server/status/StatusBarPolicy;->access$4600(Lcom/android/server/status/StatusBarPolicy;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2507
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy$StatusBarHandler;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/server/status/StatusBarPolicy;->access$2600(Lcom/android/server/status/StatusBarPolicy;)Landroid/app/AlertDialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2509
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy$StatusBarHandler;->this$0:Lcom/android/server/status/StatusBarPolicy;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy$StatusBarHandler;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v2}, Lcom/android/server/status/StatusBarPolicy;->access$4700(Lcom/android/server/status/StatusBarPolicy;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/server/status/StatusBarPolicy;->access$4800(Lcom/android/server/status/StatusBarPolicy;ZI)V

    goto :goto_0

    .line 2517
    :sswitch_2
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy$StatusBarHandler;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v0, v1}, Lcom/android/server/status/StatusBarPolicy;->access$4900(Lcom/android/server/status/StatusBarPolicy;I)V

    .line 2518
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy$StatusBarHandler;->this$0:Lcom/android/server/status/StatusBarPolicy;

    const/16 v1, 0x10

    const/16 v2, 0x4e20

    invoke-static {v0, v1, v2}, Lcom/android/server/status/StatusBarPolicy;->access$5000(Lcom/android/server/status/StatusBarPolicy;II)V

    goto :goto_0

    .line 2522
    :sswitch_3
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy$StatusBarHandler;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v0, v1}, Lcom/android/server/status/StatusBarPolicy;->access$4900(Lcom/android/server/status/StatusBarPolicy;I)V

    goto :goto_0

    .line 2525
    :sswitch_4
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy$StatusBarHandler;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/server/status/StatusBarPolicy;->access$5100(Lcom/android/server/status/StatusBarPolicy;)V

    goto :goto_0

    .line 2493
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x20 -> :sswitch_3
        0x41 -> :sswitch_4
    .end sparse-switch
.end method
