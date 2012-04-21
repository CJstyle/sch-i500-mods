.class Lcom/android/phone/IncomingButtonsView$2;
.super Landroid/os/Handler;
.source "IncomingButtonsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/IncomingButtonsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/IncomingButtonsView;


# direct methods
.method constructor <init>(Lcom/android/phone/IncomingButtonsView;)V
    .locals 0
    .parameter

    .prologue
    .line 493
    iput-object p1, p0, Lcom/android/phone/IncomingButtonsView$2;->this$0:Lcom/android/phone/IncomingButtonsView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 495
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 500
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 501
    return-void

    .line 497
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/IncomingButtonsView$2;->this$0:Lcom/android/phone/IncomingButtonsView;

    #calls: Lcom/android/phone/IncomingButtonsView;->endInComingCall()V
    invoke-static {v0}, Lcom/android/phone/IncomingButtonsView;->access$400(Lcom/android/phone/IncomingButtonsView;)V

    goto :goto_0

    .line 495
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method
